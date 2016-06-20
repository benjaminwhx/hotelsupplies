package com.benjamin.service;

import com.benjamin.dao.AdviceDao;
import com.benjamin.domain.Advice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by piqiu on 16/3/27.
 */
@Service
public class AdviceService {

    @Autowired
    private AdviceDao adviceDao;

    public boolean save(Advice advice) {
        adviceDao.save(advice);
        return true;
    }
}
