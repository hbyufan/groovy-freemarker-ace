package com.moyobar.app.service

import com.moyobar.app.entity.Permission
import com.moyobar.app.repository.PermissionRepository
import org.springframework.data.domain.Sort
import org.springframework.stereotype.Component

/**
 * Created by Rocky on 9/13/16.
 */
@Component
class PermissionService extends BaseService<PermissionRepository,Permission,String>{

    List<Permission> getMenus(){
        repository.findByTypeAndStatusAndDepthAndIsDelete(Permission.MENU,Permission.NORMAL,Permission.ROOT,Permission.REMAINED,new Sort("sort"))
    }

    Permission getMenuByUrl(String url){
        def menus = repository.findByUrl(url)
        menus.size() > 0 ? menus.first() : null
    }
}
