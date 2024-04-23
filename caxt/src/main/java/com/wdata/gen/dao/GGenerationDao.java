package com.wdata.gen.dao;

import com.wdata.base.dao.CrudDao;
import com.wdata.base.util.PageData;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**  
 * @Title: GGenerationDao
 * @ProjectName wdata
 * @Description: TODO
 */
@Mapper
public interface GGenerationDao extends CrudDao<PageData> {

    /** 
     * @Description: findInfoForOrder
     * @Param: [pd] 
     * @return: com.wdata.base.util.PageData 
     * 
     * 
     */ 
    public PageData findInfoForOrder(PageData pd);

}
