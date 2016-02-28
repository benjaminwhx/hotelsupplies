package com.benjamin.service;

import com.benjamin.dao.UserDao;
import com.benjamin.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by piqiu on 2/23/16.
 */
@Service
@Transactional(propagation = Propagation.REQUIRED)
public class UserService {

    @Autowired
    private UserDao userDao;

    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public User findUserByUserName(String userName) {
        return userDao.findUniqueBy("userName", userName);
    }

    public User get(long id) {
        User user = userDao.get(id);
        user.setUserName("ss");
        return user;
    }

    public void save(User user) {
        userDao.saveOrUpdate(user);
    }

    public void delete(User user) {
        userDao.delete(user.getId());
    }
}
