package com.wdata.system.service;

import com.wdata.base.service.CrudService;
import com.wdata.base.util.PageData;
import com.wdata.system.dao.DictionaryDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DictionaryService extends CrudService<DictionaryDao,PageData> {

}
