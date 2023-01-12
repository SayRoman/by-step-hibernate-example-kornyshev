package by.step.hibernate.example.kornyshev.view;

import by.step.hibernate.example.kornyshev.dao.models.Departments;
import by.step.hibernate.example.kornyshev.dao.models.Doctors;
import by.step.hibernate.example.kornyshev.service.DepartmentsService;
import by.step.hibernate.example.kornyshev.service.DoctorsService;


import java.util.List;

public class MainClass {

    static DepartmentsService departmentsService = new DepartmentsService();
    static DoctorsService doctorService = new DoctorsService();


    public static void main(String[] args) {

        showTables();

    }

    public static void showTables() {

        List<Doctors> doctors = doctorService.getAllDoctors();
        doctors.forEach(doctor -> {
            System.out.println(doctor.toString());
            doctor.getDepartments().forEach(departments -> System.out.println(departments.toString()));
        });
    }

}
