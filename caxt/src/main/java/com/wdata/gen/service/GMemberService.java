package com.wdata.gen.service;

import com.wdata.base.service.CrudService;
import com.wdata.base.util.PageData;
import com.wdata.gen.dao.GFamilyDao;
import com.wdata.gen.dao.GMemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**  
 * @Title: GMemberService
 * @ProjectName wdata
 * @Description: TODO
 * 
 *
 */
@Service
@Transactional
public class GMemberService extends CrudService<GMemberDao,PageData> {

    @Autowired
    protected GMemberDao memberDao;


    /**
     * @Description: findWifeList
     * @Param: [pd]
     * @return: java.util.List<com.wdata.base.util.PageData>
     * 
     * 
     */
    public List<PageData> findWifeList(PageData pd){
        return memberDao.findWifeList(pd);
    }

    /**
     * @Description: saveWife
     * @Param: [pd]
     * @return: int
     * 
     * 
     */
    public int saveWife(PageData pd){
        return memberDao.saveWife(pd);
    }

    /**
     * @Description: updateWife
     * @Param: [pd]
     * @return: int
     * 
     * 
     */
    public int updateWife(PageData pd){
        return memberDao.updateWife(pd);
    }

    /**
     * @Description: delWife
     * @Param: [ids]
     * @return: void
     * 
     * 
     */
    public void delWife(String[] ids){
        memberDao.delWife(ids);
    }

    /**
     * @Description: delWifeForMemberId
     * @Param: [ids]
     * @return: void
     * 
     * 
     */
    public void delWifeForMemberId(String[] ids){
        memberDao.delWifeForMemberId(ids);
    }

    
    /** 
     * @Description: findGTreeList
     * @Param: [pd] 
     * @return: java.util.List<com.wdata.base.util.PageData> 
     * 
     * 
     */ 
    public List<PageData> findGTreeList(PageData pd){
       return memberDao.findGTreeList(pd);
    }
    
}
