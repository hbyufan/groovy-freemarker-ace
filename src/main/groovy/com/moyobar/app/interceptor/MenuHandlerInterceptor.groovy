package com.moyobar.app.interceptor

import com.moyobar.app.entity.Permission
import com.moyobar.app.service.PermissionService
import com.moyobar.app.utils.SpringContextHolder
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Rocky on 9/14/16.
 */
class MenuHandlerInterceptor extends HandlerInterceptorAdapter{

    @Override
    boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        if(request.getMethod().toUpperCase() == "GET"){

            def permissionService = SpringContextHolder.getBean(PermissionService)

            def url = request.getRequestURI()
            url = url.substring(1,url.length())

            def menu = permissionService.getMenuByUrl(url)

            if ( menu != null ){

                if( menu.depth != Permission.ROOT ){
                    request.session.setAttribute("menuId",menu.parent.id)
                }else{
                    request.session.setAttribute("menuId",menu.id)
                }

            }

        }
        return super.preHandle(request, response, handler)
    }
}
