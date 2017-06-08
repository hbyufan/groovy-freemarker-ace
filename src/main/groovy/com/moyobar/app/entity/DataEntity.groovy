package com.moyobar.app.entity

import javax.persistence.*
import java.time.LocalDateTime

/**
 * Created by Rocky on 9/13/16.
 */
@MappedSuperclass
abstract class DataEntity extends BaseEntity{

    public final static int NORMAL = 0
    public final static boolean DELETED = true
    public final static boolean REMAINED = false
    public final static int WAIT_AUDIT = 1
    public final static int REJECT = -1

    String creator
    @Column(columnDefinition = "timestamp")
    LocalDateTime createdTime
    String modifier
    @Column(columnDefinition = "timestamp")
    LocalDateTime modifiedTime
    int status = NORMAL
    @Column(columnDefinition = "tinyint")
    boolean isDelete = NORMAL
    @Version
    Integer version

    @PrePersist
    @Override
    void prePersist(){
        super.prePersist()
        createdTime = LocalDateTime.now()
    }

    @PreUpdate
    void preUpdate(){
        modifiedTime = LocalDateTime.now()
    }
}
