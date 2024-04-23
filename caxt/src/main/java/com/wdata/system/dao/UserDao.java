package com.wdata.system.dao;

import com.github.pagehelper.Page;
import com.wdata.base.dao.CrudDao;
import com.wdata.base.util.PageData;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDao extends CrudDao<PageData> {

    
    /** 
     * @Description: saveUserOrganize 
     * @Param: [pd] 
     * @return: int 
     * 
     * 
     */ 
    public int saveUserOrganize(PageData pd);

    /** 
     * @Description: updateUserOrganize
     * @Param: [pd] 
     * @return: int 
     * 
     * 
     */ 
    public int updateUserOrganize(PageData pd);


    /** 
     * @Description: findVerifyUser 
     * @Param: [pd] 
     * @return: java.util.List<com.wdata.base.util.PageData> 
     * 
     * 
     */ 
    public List<PageData> findVerifyUser(PageData pd);


    /**
     * @Description: findUserOrg
     * @Param: [pd] 
     * @return: com.wdata.base.util.PageData 
     * 
     *  
     */ 
    public PageData findUserOrg(PageData pd);

    /** 
     * @Description: saveUserAuth 
     * @Param: [pd] 
     * @return: void 
     * 
     *  
     */ 
    public void saveUserAuth(PageData pd);


    /** 
     * @Description: delUserAuth 
     * @Param: [user_id] 
     * @return: void 
     * 
     * 
     */ 
    public void delUserAuth(String[] ids);

    /** 
     * @Description: delUserOrg 
     * @Param: [ids] 
     * @return: void 
     * 
     * 
     */ 
    public void delUserOrg(String[] ids);
    
}
