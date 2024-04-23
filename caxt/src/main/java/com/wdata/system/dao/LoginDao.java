package com.wdata.system.dao;

import com.wdata.base.dao.CrudDao;
import com.wdata.base.util.PageData;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**  
 * @Title: LoginDao
 * @ProjectName wdata
 * @Description: TODO
 */
@Mapper
public interface LoginDao extends CrudDao<PageData> {


    /** 
     * @Description: findUserInfo
     * @Param: [pd] 
     * @return: com.wdata.base.util.PageData 
     * 
     * 
     */ 
    public PageData findUserInfo(PageData pd);
}
