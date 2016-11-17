package com.moyobar.app.service.wechat

import com.moyobar.app.entity.wechat.Account
import com.moyobar.app.repository.wechat.AccountRepository
import com.moyobar.app.service.BaseService
import org.springframework.stereotype.Component

/**
 * Created by Rocky on 11/17/16.
 */
@Component
class AccountService extends BaseService<AccountRepository,Account,String>{

    public Account getAccount(String appId){
        return repository.findByAppIdAndIsDelete(appId,Account.EXIST)
    }
}
