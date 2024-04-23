package com.wdata.gen.service;

import com.wdata.base.service.CrudService;
import com.wdata.base.util.PageData;
import com.wdata.gen.dao.GMessageDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**  
 * @Title: GMessageService
 * @ProjectName wdata
 * @Description: TODO
 * 
 *
 */
@Service
@Transactional
public class GMessageService extends CrudService<GMessageDao,PageData> {

    @Autowired
    protected GMessageDao messageDao;

    
    /** 
     * @Description: updateStatus 
     * @Param: [pd] 
     * @return: void 
     * 
     *  
     */ 
    public void updateStatus(PageData pd){
        messageDao.updateStatus(pd);
    }
    
    /** 
     * @Description: findInfoForStatus
     * @Param: [pd] 
     * @return: com.wdata.base.util.PageData 
     * 
     *  
     */ 
    public PageData findInfoForStatus(PageData pd){
        return messageDao.findInfoForStatus(pd);
    }

}
