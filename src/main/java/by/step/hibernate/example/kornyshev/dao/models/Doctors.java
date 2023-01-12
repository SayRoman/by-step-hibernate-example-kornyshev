package by.step.hibernate.example.kornyshev.dao.models;

import javax.persistence.*;
import java.util.Set;

@Entity

public class Doctors {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;
    @Column(name = "Namedoctor")
    private String namedoctor;
    @Column(name = "Phone")
    private int phone;
    @Column(name = "Salary")
    private double salary;
    @Column(name = "Surname")
    private String surname;

    @OneToMany (mappedBy = "doctors", fetch = FetchType.EAGER)
    private Set<Departments> departments;

    public Doctors () { }

    public Doctors(int id, String namedoctor, int phone, double salary, String surname) {
        this.id = id;
        this.namedoctor = namedoctor;
        this.phone = phone;
        this.salary = salary;
        this.surname = surname;
    }

    public Set<Departments> getDepartments() {
        return departments;
    }

    public void setDepartments(Set<Departments> departments) {
        this.departments = departments;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return namedoctor;
    }

    public void setName(String name) {
        this.namedoctor = name;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Override
    public String toString() {
        return "Doctors{" +
                "id=" + id +
                ", name='" + namedoctor + '\'' +
                ", phone=" + phone +
                ", salary=" + salary +
                ", surname='" + surname + '\'' +
                '}';
    }
}

