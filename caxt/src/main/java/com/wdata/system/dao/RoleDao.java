package com.wdata.system.dao;

import com.wdata.base.dao.CrudDao;
import com.wdata.base.util.PageData;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RoleDao extends CrudDao<PageData> {


    /**
     * @Description: findRoleMenuList 
     * @Param: [pd] 
     * @return: java.util.List<com.wdata.base.util.PageData> 
     * 
     *  
     */ 
    public List<PageData> findRoleMenuList(PageData pd);


    /** 
     * @Description: saveRoleMenu 
     * @Param: [pd] 
     * @return: int 
     * 
     *  
     */ 
    public int saveRoleMenu(PageData pd);

    /** 
     * @Description: delRoleMenu 
     * @Param: [id] 
     * @return: void 
     * 
     * 
     */ 
    public void delRoleMenu(String id);

    /** 
     * @Description: saveRoleUserOrg 
     * @Param: [pd] 
     * @return: int 
     * 
     *  
     */ 
    public int saveRoleUserOrg(PageData pd);

    /**
     * @Description: delRoleUserOrg 
     * @Param: [ids] 
     * @return: void 
     * 
     *  
     */ 
    public void delRoleUserOrg(String[] ids);


    /** 
     * @Description: updateRoleUserOrg
     * @Param: [pd] 
     * @return: int 
     * 
     * 
     */ 
    public int updateRoleUserOrg(PageData pd);
    
}
