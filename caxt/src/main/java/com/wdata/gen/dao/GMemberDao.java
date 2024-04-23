package com.wdata.gen.dao;

import com.wdata.base.dao.CrudDao;
import com.wdata.base.util.PageData;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**  
 * @Title: GMemberDao
 * @ProjectName wdata
 * @Description: TODO
 */
@Mapper
public interface GMemberDao extends CrudDao<PageData> {


    /** 
     * @Description: findWifeList 
     * @Param: [pd] 
     * @return: java.util.List<com.wdata.base.util.PageData> 
     * 
     *  
     */ 
    public List<PageData> findWifeList(PageData pd);

    /** 
     * @Description: saveWife 
     * @Param: [pd] 
     * @return: int 
     * 
     *  
     */ 
    public int saveWife(PageData pd);

    /** 
     * @Description: updateWife 
     * @Param: [pd] 
     * @return: int 
     * 
     *  
     */ 
    public int updateWife(PageData pd);

    /** 
     * @Description: delWife 
     * @Param: [ids] 
     * @return: void 
     * 
     *  
     */ 
    public void delWife(String[] ids);

    /** 
     * @Description: delWifeForMemberId
     * @Param: [ids] 
     * @return: void 
     * 
     * 
     */ 
    public void delWifeForMemberId(String[] ids);


    /** 
     * @Description: findGTreeList
     * @Param: [pd] 
     * @return: java.util.List<com.wdata.base.util.PageData> 
     * 
     * 
     */ 
    public List<PageData> findGTreeList(PageData pd);


}
