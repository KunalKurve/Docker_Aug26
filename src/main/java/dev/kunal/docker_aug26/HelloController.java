package dev.kunal.docker_aug26;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@RequestMapping
public class HelloController {

    @GetMapping("/hello/{arg}")
    public String sayHello(@PathVariable String arg) {
        return "Hello " + arg;
    }
}

// just creating a jar file out of this code to do Docker practical
// https://github.com/KunalKurve/Docker_Aug26.git