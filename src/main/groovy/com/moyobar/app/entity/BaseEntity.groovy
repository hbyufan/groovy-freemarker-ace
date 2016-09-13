package com.moyobar.app.entity

import com.moyobar.app.utils.ID

import javax.persistence.Id
import javax.persistence.MappedSuperclass
import javax.persistence.PrePersist

/**
 * Created by Rocky on 9/13/16.
 */
@MappedSuperclass
abstract class BaseEntity {

    @Id
    String id

    @PrePersist
    void prePersist(){
        id = ID.uuid()
    }
}
