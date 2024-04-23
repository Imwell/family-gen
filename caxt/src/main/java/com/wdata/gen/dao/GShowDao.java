package com.wdata.gen.dao;

import com.wdata.base.dao.CrudDao;
import com.wdata.base.util.Page;
import com.wdata.base.util.PageData;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**  
 * @Title: GShowDao
 * @ProjectName wdata
 * @Description: TODO
 */
@Mapper
public interface GShowDao extends CrudDao<PageData> {

    public PageData findMemberInfo(PageData pd);

    public List<PageData> findMemberList(PageData pd);

    public List<PageData> findMemberListPage(PageData pd);

    /**
     * 获取成员根节点
     * @param pd
     * @return
     */
    public PageData findRootMemberInfo(PageData pd);
}
