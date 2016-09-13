package com.moyobar.app.service

import com.moyobar.app.entity.User
import com.moyobar.app.repository.UserRepository
import org.springframework.stereotype.Component

import javax.annotation.Resource

/**
 * Created by Rocky on 9/13/16.
 */
@Component
class UserService {

    @Resource UserRepository userRepository

    User login(def loginName){
        userRepository.findByLoginNameAndStatus(loginName,0)
    }
}
