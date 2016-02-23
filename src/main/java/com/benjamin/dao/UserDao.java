package com.benjamin.dao;

import com.benjamin.dao.base.EnhanceDao;
import com.benjamin.domain.User;
import org.springframework.stereotype.Repository;

/**
 * Created by piqiu on 2/23/16.
 */
@Repository
public class UserDao extends EnhanceDao<User, Long> {
}
