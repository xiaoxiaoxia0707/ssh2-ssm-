package com.model;

public class Student implements java.io.Serializable{
	/**
	 * 
	 */
	/**
	 * 
	 */
		// Fields
		private Integer id;
		private String college;
		private String specialty;
	 	private String name;
		// Constructors

		/** default constructor */
	    public Student(){
	    	
	    }
	    /** full constructor */
		public Student(String college, String specialty,String name,  int id) {
			this.college = college;
			this.specialty = specialty;
			this.name = name;
			this.id=id;
		}
		public Integer getId() {
			return this.id;
		}

		public void setId(Integer id) {
			this.id = id;
		}
	    public String getCollege() {
	        return this.college;
	    }

	    public void setCollege(String college) {
	        this.college = college;
	    }
	    public String getSpecialty() {
	        return this.specialty;
	    }

	    public void setSpecialty(String specialty) {
	        this.specialty = specialty;
	    }
	    public String getName() {
	        return this.name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

}
