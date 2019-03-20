package com.lun.service.impl;

import com.lun.mapper.TeacherMapper;
import com.lun.pojo.Teacher;
import com.lun.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public Teacher loginquery(String userid, String password) {

        return teacherMapper.querylogin(userid,password);
    }
}
