package com.lun.mapper;


import com.lun.pojo.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherMapper {
    List<Teacher> selectall();

    Teacher querylogin(@Param("teacherid") String userid, @Param("teacherpawd") String password);
}
