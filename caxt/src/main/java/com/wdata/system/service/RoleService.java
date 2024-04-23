package com.wdata.system.service;

import com.wdata.base.service.CrudService;
import com.wdata.base.util.PageData;
import com.wdata.system.dao.RoleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RoleService extends CrudService<RoleDao,PageData> {

    @Autowired
    protected RoleDao roleDao;

    /**
     * @Description: findRoleMenuList
     * @Param: [pd]
     * @return: java.util.List<com.wdata.base.util.PageData>
     * 
     * 
     */
    public List<PageData> findRoleMenuList(PageData pd){
        return roleDao.findRoleMenuList(pd);
    }

    /** 
     * @Description: saveRoleMenu
     * @Param: [pd] 
     * @return: int 
     * 
     *  
     */ 
    public int saveRoleMenu(PageData pd){
        return roleDao.saveRoleMenu(pd);
    }

    /** 
     * @Description: delRoleMenu 
     * @Param: [pd] 
     * @return: void 
     * 
     *  
     */ 
    public void delRoleMenu(String id){
        roleDao.delRoleMenu(id);
    }

    /** 
     * @Description: saveRoleUserOrg
     * @Param: [pd] 
     * @return: int 
     * 
     *  
     */ 
    public int saveRoleUserOrg(PageData pd){
        return roleDao.saveRoleUserOrg(pd);
    }


    /** 
     * @Description: delRoleUserOrg
     * @Param: [ids] 
     * @return: void 
     * 
     *  
     */ 
    public void delRoleUserOrg(String[] ids){
        roleDao.delRoleUserOrg(ids);
    }

    /** 
     * @Description: updateRoleUserOrg 
     * @Param: [pd] 
     * @return: int 
     * 
     * 
     */ 
    public int updateRoleUserOrg(PageData pd){
        return roleDao.updateRoleUserOrg(pd);
    }
}
