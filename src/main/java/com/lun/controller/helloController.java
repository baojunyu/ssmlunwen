package com.lun.controller;

import com.lun.pojo.Teacher;
import com.lun.service.HelloService;
import com.lun.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class helloController {
    @Autowired
    private HelloService helloService;

    @Autowired
    private TeacherService teacherService;

    @RequestMapping("/hello")
    @ResponseBody
    public  Object hello(){
//        return teacherService.loginquery("20070101001","盖聂");
          return helloService.selectList();
    }
}
