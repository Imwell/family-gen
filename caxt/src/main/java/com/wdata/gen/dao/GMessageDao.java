package com.wdata.gen.dao;

import com.wdata.base.dao.CrudDao;
import com.wdata.base.util.PageData;
import org.apache.ibatis.annotations.Mapper;

/**  
 * @Title: GMessageDao
 * @ProjectName wdata
 * @Description: TODO
 */
@Mapper
public interface GMessageDao extends CrudDao<PageData> {


    /** 
     * @Description: updateStatus 
     * @Param: [pd] 
     * @return: void 
     * 
     *  
     */ 
    public void updateStatus(PageData pd);


    /** 
     * @Description: findInfoForStatus
     * @Param: [pd] 
     * @return: com.wdata.base.util.PageData 
     * 
     * 
     */ 
    public PageData findInfoForStatus(PageData pd);

}
