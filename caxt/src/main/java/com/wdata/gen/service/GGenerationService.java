package com.wdata.gen.service;

import com.wdata.base.service.CrudService;
import com.wdata.base.util.PageData;
import com.wdata.gen.dao.GFamilyDao;
import com.wdata.gen.dao.GGenerationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**  
 * @Title: GGenerationService
 * @ProjectName wdata
 * @Description: TODO
 * 
 *
 */
@Service
@Transactional
public class GGenerationService extends CrudService<GGenerationDao,PageData> {

    @Autowired
    protected GGenerationDao generationDao;


    /**
     * @Description: findInfoForOrder
     * @Param: [pd]
     * @return: com.wdata.base.util.PageData
     * 
     * 
     */
    public PageData findInfoForOrder(PageData pd){
        return generationDao.findInfoForOrder(pd);
    }

}
