package com.arieslab.tutor.fakerest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * The Class FakeRestApi
 *
 * @author mohamed.fawzy
 */
@RestController
@RequestMapping(path = "api")
public class FakeRestApi {

    @GetMapping(path = "/hello")
    public String sayHello(){
        return "hello World";
    }
}

    
