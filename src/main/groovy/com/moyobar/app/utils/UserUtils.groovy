package com.moyobar.app.utils

import com.moyobar.app.entity.Permission
import com.moyobar.app.service.PermissionService

/**
 * Created by Rocky on 9/13/16.
 */
class UserUtils {

    static def permissionService = SpringContextHolder.getBean(PermissionService)

    static List<Permission> getMenus(){
        return permissionService.getMenus()
    }
}
