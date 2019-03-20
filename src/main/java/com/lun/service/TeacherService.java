package com.lun.service;

import com.lun.pojo.Teacher;

public interface TeacherService {
    Teacher loginquery(String userid, String password);
}
