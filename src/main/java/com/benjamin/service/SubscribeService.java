package com.benjamin.service;

import com.benjamin.dao.SubscribeDao;
import com.benjamin.domain.Subscribe;
import com.benjamin.domain.bo.CheckResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by benjamin on 16/4/6.
 */
@Service
public class SubscribeService {

    @Autowired
    private SubscribeDao subscribeDao;

    public CheckResult checkAndSave(String email) {
        List<Subscribe> sub = subscribeDao.findBy("email", email);
        CheckResult checkResult = new CheckResult();
        if (sub != null && sub.size() > 0) {
            checkResult.setErrorResult("邮箱已订阅, 请勿重复操作!");
            checkResult.setPassCheck(false);
        } else {
            Subscribe subscribe = new Subscribe();
            subscribe.setEmail(email);
            subscribeDao.save(subscribe);
            checkResult.setPassCheck(true);
        }
        return checkResult;
    }
}
