package com.sino.credit.Controller;

import com.sino.credit.mapper.WluserMapper;
import com.sino.credit.model.Wluser;
import com.sino.credit.service.WlUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.xml.ws.Action;
import java.util.List;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
   private WlUserService userService;

    @ResponseBody
    @RequestMapping(value = "/test",produces = {"application/json;charset=UTF-8"})
    public String Hello(){
        return "Hello World";
    }

    /**@autor Lonny
     * 返回所有用户
     * @return List user
     */
    @ResponseBody
    @RequestMapping(value="/all",produces = {"application/json;charset=UTF-8"})
    public List<Wluser> getAll(){
        return userService.getAll();
    }

    @ResponseBody
    @RequestMapping(value="/save")
    public int save(Wluser wluser){
        return userService.save(wluser);
    }
}
