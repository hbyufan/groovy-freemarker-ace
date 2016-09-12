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
class Permission {

    @Id
    String id
    @NotNull
    String name
    @NotNull
    String code
    String description
    String url
    @OneToOne
    Permission parent
    @NotNull
    String path
    @NotNull
    int depth = 1
    int status
    @Version
    Integer version
}
