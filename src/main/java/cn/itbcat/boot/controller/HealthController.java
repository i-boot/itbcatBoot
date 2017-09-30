package cn.itbcat.boot.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by 860117030 on 2017/9/30.
 */
@Controller
public class HealthController {

    @RequestMapping(value = "/healths",method = RequestMethod.GET)
    @RequiresPermissions("admin:health:view")
    public String index(Map<String, Object> dataModel){
        dataModel.put("template","health");
        return "index";
    }
}