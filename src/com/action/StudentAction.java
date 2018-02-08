package com.action;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.model.Student;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.StudentService;

public class StudentAction extends ActionSupport implements
ModelDriven<Student> {
private Student student;
private StudentService studentService;
private List<Student> list;

public String save() {
System.out.println("Action中的save方法执行了。。。");
studentService.save(student);
return "saveSuccess";
}

public String delete() {
System.out.println("Action中的delete方法执行了。。。");
studentService.delete(student);
return "deleteSuccess";
}

public String update() {
System.out.println("Action中的update方法执行了。。。");
studentService.update(student);
return "updateSuccess";
}

public String query() {
list = studentService.query();
return SUCCESS;
}

public String selectOne(){
student=studentService.selectOne(student.getId());
if(student==null){              //判断返回结果是否为空
	return "noresult";
}else{
	return "result";
}	
}
public String queryJson() {
list = studentService.query();
return SUCCESS;
}
/******** -------set and get-------------- *****/

public Student getStudent() {
return student;
}

public void setStudent(Student student) {
this.student = student;
}

public StudentService getStudentService() {
return studentService;
}

public void setStudentService(StudentService studentService) {
this.studentService = studentService;
}

@Override
public Student getModel() {
return student;
}

public List<Student> getList() {
return list;
}

public void setList(List<Student> list) {
this.list = list;
}



}
