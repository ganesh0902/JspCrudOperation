package com.jsp.model;

public class Student {

		private int id;
		private String name;
		private String city;
		private String course;
		private int contact;
		private int age;
								
		public Student() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getCourse() {
			return course;
		}
		public void setCourse(String course) {
			this.course = course;
		}
		public int getContact() {
			return contact;
		}
		public void setContact(int contact) {
			this.contact = contact;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}

		@Override
		public String toString() {
			return "Student [id=" + id + ", name=" + name + ", city=" + city + ", course=" + course + ", contact="
					+ contact + ", age=" + age + "]";
		}	
}
