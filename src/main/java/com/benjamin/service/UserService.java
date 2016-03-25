package com.benjamin.service;

import com.benjamin.dao.UserDao;
import com.benjamin.domain.User;
import com.benjamin.domain.bo.CheckResult;
import com.benjamin.utils.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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

    public void save(User user) {
        userDao.saveOrUpdate(user);
    }

    /**
     * login success return userName
     * login failed return null
     * @param email login needed email
     * @param password  login needed password
     * @return
     */
    public String login(String email, String password) {
        User u = userDao.findUniqueBy("email", email);
        if (u != null) {
            if (BCrypt.checkpw(password, u.getPassword())) {
                return u.getUserName();
            }
        }
        return null;
    }

    public CheckResult checkUserNameAndEmail(String userName, String email) {
        User user = new User();
        CheckResult checkResult = new CheckResult();
        List<User> userList = userDao.find(" from User where email = ? or userName = ?", email, userName);
        if (userList!= null && userList.size() > 0) {
            checkResult.setPassCheck(false);
            checkResult.setErrorResult("账号已被注册，请重新注册");
        } else {
            checkResult.setPassCheck(true);
        }
        return checkResult;
    }

    public User find(Long id){
        User user = userDao.findUnique(" from User where id = ?", id);
        return user;
    }
}
