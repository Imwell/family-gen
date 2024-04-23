package com.wdata.system.dao;

import com.wdata.base.dao.CrudDao;
import com.wdata.base.util.PageData;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MenuDao extends CrudDao<PageData> {



    /** 
     * @Description: delForParam 
     * @Param: [pd]
     * @return: void 
     * 
     * 
     */ 
    public void delForParam(PageData pd);


    /**
     * @Description: findMenuList
     * @Param: [pd]
     * @return: java.util.List<com.wdata.base.util.PageData>
     * 
     * 
     */
    public List<PageData> findMenuList(PageData pd);

    /**
     * @Description: delRoleMenu
     * @Param: [id]
     * @return: void
     * 
     * 
     */
    public void delRoleMenu(String id);

}
