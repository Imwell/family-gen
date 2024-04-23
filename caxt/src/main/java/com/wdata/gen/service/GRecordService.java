package com.wdata.gen.service;

import com.wdata.base.service.CrudService;
import com.wdata.base.util.PageData;
import com.wdata.gen.dao.GMemberDao;
import com.wdata.gen.dao.GRecordDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**  
 * @Title: GRecordService
 * @ProjectName wdata
 * @Description: TODO
 * 
 *
 */
@Service
@Transactional
public class GRecordService extends CrudService<GRecordDao,PageData> {

    @Autowired
    protected GRecordDao recordDao;



}
