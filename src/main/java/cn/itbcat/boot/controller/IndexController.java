package cn.itbcat.boot.controller;

import cn.itbcat.boot.entity.User;
import cn.itbcat.boot.utils.ITBC;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by 860117030 on 2017/9/5.
 */
@Controller
public class IndexController {

    @RequestMapping(value = "/admin",method = RequestMethod.GET)
    public String index(Map<String, Object> dataModel){
        User user = ITBC.getCurrUser();
        if(ITBC.SUPER_ADMIN.equals(user.getIsAdmin())){
            return "redirect:/healths";
        } else {
            dataModel.put("template","index");
            return "index";
        }
    }
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String front(Map<String,Object> date){
        date.put("template","index");
        return "front";
    }


    @RequestMapping(value = "/nopermissions")
    public String nopermissions(){
        return "nopermissions";
    }

}
