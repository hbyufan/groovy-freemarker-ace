package com.moyobar.app.tags

import com.moyobar.app.utils.UserUtils
import freemarker.template.TemplateMethodModelEx
import freemarker.template.TemplateModelException

/**
 * Created by Rocky on 9/13/16.
 */
class MenusMethodModel implements TemplateMethodModelEx{

    @Override
    Object exec(List list) throws TemplateModelException {
        return UserUtils.getMenus()
    }
}
