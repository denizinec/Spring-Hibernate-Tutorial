package com.denizci155.demo.rest;

import com.denizci155.demo.entity.Student;
import jakarta.annotation.PostConstruct;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;



@RestController
@RequestMapping("/api")
public class StudentRestController {

    private List<Student> theStudents;

    // define a @PostConstruct to load the student data ... only once

    @PostConstruct
    public  void loadData(){

        theStudents = new ArrayList<>();

        theStudents.add(new Student("Deniz", "Inec"));
        theStudents.add(new Student("Mario", "Pipe"));
        theStudents.add(new Student("Luigi", "Piep"));


    }


    @GetMapping("/students")
    public List<Student> getStudents()
    {

        return  theStudents;

    }






}