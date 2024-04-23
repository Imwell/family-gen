package com.wdata.gen.service;

import com.wdata.base.service.CrudService;
import com.wdata.base.util.PageData;
import com.wdata.gen.dao.GFamilyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**  
 * @Title: GFamilyService
 * @ProjectName wdata
 * @Description: TODO
 * 
 *
 */
@Service
@Transactional
public class GFamilyService extends CrudService<GFamilyDao,PageData> {

    @Autowired
    protected GFamilyDao familyDao;


}
