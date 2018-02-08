package com.dao; 

import java.util.List;
import org.apache.commons.collections.Transformer;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import com.model.Student;

public class StudentDao {
	private SessionFactory sessionFactory;

	public void save(Student student) {
		System.out.println("Daoִ���������");
		this.sessionFactory.getCurrentSession().save(student);
		System.out.println("��ӳɹ�");
	}

	public void delete(Student student) {
		System.out.println("Daoִ��ɾ��");
		this.sessionFactory.getCurrentSession().delete(student);
		System.out.println("ɾ���ɹ�");

	}

	public void update(Student student) {
		System.out.println("��������");
		this.sessionFactory.getCurrentSession().update(student);
		System.out.println("���³ɹ�");

	}

	public List<Student> query() {
		String sql = "select * from student";
		SQLQuery sqlQuery = this.sessionFactory.getCurrentSession().createSQLQuery(sql);
		sqlQuery.addEntity(Student.class);
		return sqlQuery.list();
	}
	
	public Student selectOne(Integer id){
		Student student =(Student)this.sessionFactory.getCurrentSession().get(Student.class,id);
		return student;
	} 

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}