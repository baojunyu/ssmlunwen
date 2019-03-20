package com.lun.pojo;

public class Teacher {
    private int id;
    private String teacherid;
    private String teachername;
    private String teacherpawd;
    private int teachertype;
    private int departid;

    @Override
    public String toString() {
        return "Teacher{" +
                "id=" + id +
                ", teacherid='" + teacherid + '\'' +
                ", teachername='" + teachername + '\'' +
                ", teacherpawd='" + teacherpawd + '\'' +
                ", teachertype=" + teachertype +
                ", departid=" + departid +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid;
    }

    public String getTeachername() {
        return teachername;
    }

    public void setTeachername(String teachername) {
        this.teachername = teachername;
    }

    public String getTeacherpawd() {
        return teacherpawd;
    }

    public void setTeacherpawd(String teacherpawd) {
        this.teacherpawd = teacherpawd;
    }

    public int getTeachertype() {
        return teachertype;
    }

    public void setTeachertype(int teachertype) {
        this.teachertype = teachertype;
    }

    public int getDepartid() {
        return departid;
    }

    public void setDepartid(int departid) {
        this.departid = departid;
    }

    public Teacher() {

    }
}
