package by.step.hibernate.example.kornyshev.view;

import by.step.hibernate.example.kornyshev.dao.models.Departments;
import by.step.hibernate.example.kornyshev.service.DepartmentsService;


import java.util.List;

public class MainClass {

    static DepartmentsService userService = new DepartmentsService();
    //static AddressService addressService = new AddressService();


    public static void main(String[] args) {

        showTables ();
    }

    public static void showTables () {

        List<Departments> users = userService.getAllUsers();

        users.forEach(user -> System.out.println(user.toString()));



        //List<Address> addresses = addressService.getAllAddrese();

        //addresses.forEach(address -> System.out.println(address));
    }

}
