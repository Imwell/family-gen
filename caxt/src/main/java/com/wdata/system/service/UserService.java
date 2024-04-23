package com.wdata.system.service;

import com.wdata.base.service.CrudService;
import com.wdata.base.util.PageData;
import com.wdata.system.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserService extends CrudService<UserDao,PageData> {

    @Autowired
    protected UserDao userDao;

    /** 
     * @Description: saveUserOrganize 
     * @Param: [pd] 
     * @return: int 
     * 
     * 
     */ 
    public int saveUserOrganize(PageData pd){
        return userDao.saveUserOrganize(pd);
    }

    /** 
     * @Description: updateUserOrganize
     * @Param: [pd] 
     * @return: int 
     * 
     *  
     */ 
    public int updateUserOrganize(PageData pd){
        return userDao.updateUserOrganize(pd);
    }


    /** 
     * @Description: findVerifyUser
     * @Param: [pd] 
     * @return: java.util.List<com.wdata.base.util.PageData> 
     * 
     * 
     */ 
    public List<PageData> findVerifyUser(PageData pd){
        return userDao.findVerifyUser(pd);
    }


    /** 
     * @Description: findUserOrg
     * @Param: [pd] 
     * @return: com.wdata.base.util.PageData 
     * 
     * 
     */ 
    public PageData findUserOrg(PageData pd){
        return userDao.findUserOrg(pd);
    }


    /** 
     * @Description: saveUserAuth
     * @Param: [pd] 
     * @return: void 
     * 
     *  
     */ 
    public void saveUserAuth(PageData pd){
        userDao.saveUserAuth(pd);
    }


    /** 
     * @Description: delUserAuth
     * @Param: [user_id] 
     * @return: void 
     * 
     *  
     */ 
    public void delUserAuth(String[] ids){
        userDao.delUserAuth(ids);
    }

    /** 
     * @Description: delUserOrg 
     * @Param: [user_id] 
     * @return: void 
     * 
     *  
     */ 
    public void delUserOrg(String[] ids){
        userDao.delUserOrg(ids);
    }
    

}
