package com.moyobar.app.entity

import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.JoinColumns
import javax.persistence.JoinTable
import javax.persistence.OneToMany
import javax.persistence.Version
import javax.validation.constraints.NotNull

/**
 * Created by Rocky on 9/13/16.
 */
@Entity
class Role {

    @Id
    String id
    @NotNull
    String name
    @NotNull
    String code
    String description
    int status
    @Version
    Integer version
    @OneToMany
    @JoinTable(inverseJoinColumns = [@JoinColumn(name="permission_id")])
    Set<Permission> permissions
}
