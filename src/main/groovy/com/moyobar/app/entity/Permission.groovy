package com.moyobar.app.entity

import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.OneToOne
import javax.persistence.Version
import javax.validation.constraints.NotNull

/**
 * Created by Rocky on 9/13/16.
 */
@Entity
class Permission extends DataEntity{

    @NotNull
    String name
    @NotNull
    String code
    String description
    String url
    @OneToOne
    Permission parent
    int type
    @NotNull
    String path
    @NotNull
    int depth = 1
}
