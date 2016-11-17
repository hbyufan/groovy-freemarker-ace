package com.moyobar.app.repository

import com.moyobar.app.entity.Permission
import org.springframework.data.domain.Sort
import org.springframework.data.jpa.repository.JpaRepository

import javax.persistence.OrderBy

/**
 * Created by Rocky on 9/13/16.
 */
interface PermissionRepository extends JpaRepository<Permission,String>{


    List<Permission> findByTypeAndStatusAndDepthAndIsDelete(int type, int status, int depth, Boolean isDelete,Sort sort)

    List<Permission> findByUrl(String url)
}