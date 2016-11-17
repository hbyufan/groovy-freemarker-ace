package com.moyobar.app.repository.wechat

import com.moyobar.app.entity.wechat.Account
import org.springframework.data.jpa.repository.JpaRepository

/**
 * Created by Rocky on 11/17/16.
 */
interface AccountRepository extends JpaRepository<Account,String>{

    Account findByAppIdAndIsDelete(String appId,boolean isDelete)

}