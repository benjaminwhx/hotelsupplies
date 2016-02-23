package com.benjamin.dao;

import com.benjamin.dao.base.EnhanceDao;
import com.benjamin.domain.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by piqiu on 2/23/16.
 */
@Repository
@Transactional
public class UserDao extends EnhanceDao<User, Long> {
}
