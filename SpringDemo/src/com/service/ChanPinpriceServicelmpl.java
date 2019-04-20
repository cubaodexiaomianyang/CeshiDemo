package com.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.common.mybatis.Page;
import com.common.utils.DateUtils;
import com.common.utils.base.UuidUtil;
import com.entity.ChanPin;
import com.entity.FuJianBiao;
import com.entity.FuJianGuanXiBiao;
import com.entity.ShenHe;
import com.entity.User;
import com.entity.UserJob;
import com.repository.ChanPinDao;
import com.repository.FuJianBiaoDao;
import com.repository.FuJianGuanXiBiaoDao;
import com.repository.ShenHeDao;
import com.service.base.BaseServiceImp;

@Service("ChanPinpriceService")
public class ChanPinpriceServicelmpl extends BaseServiceImp<ChanPin> implements ChanPinpriceService{

	@Autowired
	private ChanPinDao cpdao;
	@Autowired
	private FuJianBiaoDao fujianbiaodao;
	@Autowired
	private ShenHeDao shdao;
	@Autowired
	private FuJianGuanXiBiaopriceService fujianguanxibiaoservice;
	@Autowired
	private FuJianGuanXiBiaoDao fjgxdao;
	
	@Transactional
	@Override
	public void deleteall(String id) {
		
		ChanPin cp=new ChanPin();
		cp.setChanpinId(id);
		cpdao.delete(cp);
		
		ShenHe h= new ShenHe();
		h.setShenheChanpinId(id);
		shdao.delete(h);
		
	}
	
	@Transactional
	@Override
	public void deleteplall(String id) {
		System.out.println("进入解析方法");
		List<String> uj=Arrays.asList(id.split(","));
		
		List<ShenHe> shs=new ArrayList<ShenHe>();
		List<ChanPin> cps=new ArrayList<ChanPin>();
		System.out.println("进入循环获取前");
		for(int i=0;i<uj.size();i++){
			
			ChanPin cp=new ChanPin();
			ShenHe sh=new ShenHe();
			
			cp.setChanpinId(uj.get(i));
			sh.setShenheChanpinId(uj.get(i));
			
			cps.add(cp);
			shs.add(sh);
		}
		System.out.println("批量删除前的所有数据组：===="+cps+"第二个==="+shs);
		cpdao.deleteBatch(cps);
		shdao.deleteBatch(shs);
	}

	@Transactional
	@Override
	public void insertall(ChanPin cp, String fjid, UserJob job,HttpServletRequest request) {
		
		HttpSession userSession=request.getSession();
		User u=(User) userSession.getAttribute("username");//获取网页session名字
		System.out.println("获取的网页的名字"+u);
		//设置产品的值进行存储
		String id=UuidUtil.get32UUID();
		cp.setChanpinId(id);

		FuJianBiao fj=new FuJianBiao();
		fj.setId(fjid);
		List<FuJianBiao> f=fujianbiaodao.find(fj);
		
		cp.setImg(f.get(0).getFujianlujing());//方便回传设置图片
		cp.setChanpingfenleiid(job.getId());
		cp.setFaburen(u.getUserName());
		String shijian =DateUtils.getDate("yyyy/MM/dd HH:mm:ss");//设置时间
		cp.setChanpinfabushijian(shijian);
		cpdao.insert(cp);
		
		//添加审核表信息（管理员添加的产品默认为审核通过模式）
		ShenHe sh=new ShenHe();
		sh.setId(UuidUtil.get32UUID());
		sh.setShenheChanpinId(id);
		sh.setShenhecishu(1);
		sh.setShenheshijian(shijian);
		sh.setShenhezhaungtai("0");
		sh.setBohuiyuanyin("");
		shdao.insert(sh);
		
		//存储附件的附件关系
		fujianguanxibiaoservice.insertfjs(fjid, id, "chanpin",u.getUserName());//创建附件关系
	}
	
	@Transactional
	@Override
	public void updateall(ChanPin cp, String fjid, UserJob job,
			ShenHe sh,HttpServletRequest request) {
		HttpSession userSession=request.getSession();
		User u=(User) userSession.getAttribute("username");//获取网页session名字
		//查询附件关系得出已存在的附件。
		FuJianGuanXiBiao fjgx=new FuJianGuanXiBiao();
		fjgx.setGuanlianid(cp.getChanpinId());
		List<FuJianGuanXiBiao> fjgxs=fjgxdao.find(fjgx);
		if(fjgxs.size()>0){//大于0证明有附件，是进行修改为新图片
			FuJianGuanXiBiao fjgxer=new FuJianGuanXiBiao();
			fjgxer.setFujianid(fjgxs.get(0).getFujianid());
			fjgxdao.delete(fjgxer);//执行附件关系的删除，但保留了附件
			//查询新的附件
			FuJianBiao fj=new FuJianBiao();
			fj.setId(fjid);
			List<FuJianBiao> f=fujianbiaodao.find(fj);
			cp.setImg(f.get(0).getFujianlujing());//新图片的赋值
			fujianguanxibiaoservice.insertfjs(fjid, cp.getChanpinId(), "chanpin",u.getUserName());//创建新的附件关系
		
		}else{//小于0所以没得图片需要进行添加新图片
			if(fjgxs.size()<=0){
				//查询新的附件
				FuJianBiao fj=new FuJianBiao();
				fj.setId(fjid);
				List<FuJianBiao> f=fujianbiaodao.find(fj);
				cp.setImg(f.get(0).getFujianlujing());//新图片的赋值
				fujianguanxibiaoservice.insertfjs(fjid, cp.getChanpinId(), "chanpin",u.getUserName());//创建新的附件关系
			}
		}
		ShenHe shzhi=new ShenHe();
		shzhi.setShenheChanpinId(cp.getChanpinId());
		List<ShenHe> z=shdao.find(shzhi);
		//审核
		if(z.size()>0){
			//查询原来的审核数据进行修改。
			ShenHe sher=new ShenHe();
			sher.setShenheChanpinId(cp.getChanpinId());//根据原产品ID进行查询
			List<ShenHe> shs=shdao.find(sher);
			//进行修改赋值
			ShenHe shsan=new ShenHe();
			shsan.setBohuiyuanyin(sh.getBohuiyuanyin());//设置新的驳回原因
			shsan.setShenheChanpinId(cp.getChanpinId());
			shsan.setShenhecishu(shs.get(0).getShenhecishu()+1);//审核次数增加
			shsan.setShenheshijian(DateUtils.getDate("yyyy/MM/dd HH:mm:ss"));//修正审核时间为现在
			shsan.setShenhezhaungtai(sh.getShenhezhaungtai());//设置新的审核状态
			shdao.update(shsan);//新的审核进行修改根据的产品id进行的修改
		}else{
			if(z.size()<=0){
				//添加新的审核
				ShenHe shsan=new ShenHe();
				shsan.setId(UuidUtil.get32UUID());
				shsan.setShenheChanpinId(cp.getChanpinId());
				shsan.setShenhecishu(1);
				shsan.setShenheshijian(DateUtils.getDate("yyyy/MM/dd HH:mm:ss"));
				shsan.setShenhezhaungtai(sh.getShenhezhaungtai());
				shsan.setBohuiyuanyin(sh.getBohuiyuanyin());
				shdao.insert(shsan);//添加
			}
		}
		cp.setChanpingfenleiid(job.getId());//设置新的产品类型的ID
		cp.setFaburen(u.getUserName());
		//修改整个产品
		cpdao.update(cp);
	}

	@Override
	public ChanPin findid(ChanPin o) {
		return cpdao.findid(o);
	}

	@Override
	public Page<ChanPin> findByPagetj(ChanPin o, Page<ChanPin> page) {
		page.setResults(cpdao.findByPagetj(o, page));
		return page;
	}

	@Override
	public Page<ChanPin> findByPagesh(ChanPin o, Page<ChanPin> page) {
		page.setResults(cpdao.findByPagesh(o, page));
		return page;
	}
}
