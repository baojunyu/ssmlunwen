package com.lun.service.impl;

import com.lun.mapper.TeacherMapper;
import com.lun.pojo.Teacher;
import com.lun.service.HelloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class HelloServiceImpl implements HelloService {
    @Autowired
    private TeacherMapper teacherMapper;
    @Override
    public List<Teacher> selectList() {
        return teacherMapper.selectall();
    }
}
