package com.moyobar.app.service

import com.moyobar.app.entity.Permission
import com.moyobar.app.repository.PermissionRepository
import org.springframework.stereotype.Component

import javax.annotation.Resource

/**
 * Created by Rocky on 9/13/16.
 */
@Component
class PermissionService extends BaseService<PermissionRepository,Permission,String>{

    List<Permission> getMenus(){
        repository.findByTypeAndStatusAndDepthAndIsDelete(Permission.MENU,Permission.NORMAL,Permission.ROOT,Permission.REMAINED)
    }

    Permission getMenuByUrl(String url){
        def menus = repository.findByUrl(url)
        menus.first()
    }
}
