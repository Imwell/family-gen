package com.wdata.base.dao;
import com.wdata.base.util.Page;
import com.wdata.base.util.PageData;

import java.util.List;

/**  
 * @Title: CrudDao
 */
public interface CrudDao<T>{

    /** 
     * @Description: 分页查询 
     * @Param: [page] 
     * @return: java.util.List<T>
     */ 
    public List<T> findListPage(Page page);

    /** 
     * @Description: 查询列表数量
     * @Param: [page] 
     * @return: java.lang.Integer
     */ 
    public Integer findListSize(Page page);

    /** 
     * @Description: 查询列表
     * @Param: [pd] 
     * @return: java.util.List<T>
     */ 
    public List<T> findList(PageData pd);

    /** 
     * @Description: 查询详情
     * @Param: [pd] 
     * @return: T
     */ 
    public T findInfo(PageData pd);

    /** 
     * @Description: 保存
     * @Param: [t] 
     * @return: void
     */ 
    public int save(T t);

    /** 
     * @Description: 更新
     * @Param: [t] 
     * @return: void
     */ 
    public int update(T t);

    /** 
     * @Description: 删除
     * @Param: [pd] 
     * @return: void
     */ 
    public void remove(PageData pd);

    /** 
     * @Description: 根据ids删除集合
     * @Param: [ids] 
     * @return: void
     */ 
    public void del(String[] ids);

    /** 
     * @Description: delOne 
     * @Param: [id] 
     * @return: void
     */ 
    public void delOne(String id);
}
