package com.benjamin.dao;

import com.benjamin.dao.base.EnhanceDao;
import com.benjamin.domain.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by piqiu on 2/23/16.
 */
@Repository
@Transactional
public class UserDao extends EnhanceDao<User, Long> {

    @Override
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }
}
