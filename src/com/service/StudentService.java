package com.service;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.dao.StudentDao;
import com.model.Student; 
@Transactional
public class StudentService {
	private StudentDao studentDao;

	public void save(Student student) {
		System.out.println("Service中的save方法执行了。。。");
		studentDao.save(student);
	}

	public void delete(Student student) {
		System.out.println("Service中的delete方法执行了。。。");
		studentDao.delete(student);
	}

	public void update(Student student) {
		System.out.println("Service中的update方法执行了。。。");
		studentDao.update(student);
	}

	public List<Student> query() {
		return studentDao.query();
	}
	
	public Student selectOne(Integer id){
		return studentDao.selectOne(id);
	}

	/**
	 * @return the studentDao
	 */
	public StudentDao getStudentDao() {
		return studentDao;
	}
	
	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}


}
