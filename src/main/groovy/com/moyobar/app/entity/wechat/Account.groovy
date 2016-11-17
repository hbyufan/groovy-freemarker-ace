package com.moyobar.app.entity.wechat

import com.moyobar.app.entity.DataEntity

import javax.persistence.Entity
import javax.validation.constraints.NotNull

/**
 * Created by Rocky on 11/17/16.
 */
@Entity
class Account extends DataEntity{

    @NotNull String name
    @NotNull String appId
    @NotNull String secret
    @NotNull String token
    @NotNull String encryptKey

}

