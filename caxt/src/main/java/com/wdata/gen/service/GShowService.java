package com.wdata.gen.service;

import com.github.pagehelper.PageHelper;
import com.wdata.base.service.CrudService;
import com.wdata.base.util.Page;
import com.wdata.base.util.PageData;
import com.wdata.gen.dao.GFamilyDao;
import com.wdata.gen.dao.GShowDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Title: GShowService
 * @ProjectName wdata
 * @Description: TODO
 * 
 *
 */
@Service
@Transactional
public class GShowService extends CrudService<GShowDao,PageData> {

    @Autowired
    protected GShowDao showDao;

    public PageData findMemberInfo(PageData pd){
        return showDao.findMemberInfo(pd);
    }

    /** 
     * @Description: findMemberList 
     * @Param: [pd] 
     * @return: java.util.List<com.wdata.base.util.PageData> 
     * 
     *  
     */ 
    public List<PageData> findMemberList(PageData pd){
        return showDao.findMemberList(pd);
    }




    public List<PageData> findMemberListPage(PageData pd) {
        return showDao.findMemberListPage(pd);
    }

    public PageData findRootMemberInfo(PageData pd){
        return showDao.findRootMemberInfo(pd);
    }

}
