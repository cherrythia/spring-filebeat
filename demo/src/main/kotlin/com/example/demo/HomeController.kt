package com.example.demo

import org.apache.juli.logging.Log
import org.slf4j.LoggerFactory
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import java.util.logging.Logger

@RestController
class HomeController {

    private  val logger = LoggerFactory.getLogger(HomeController::class.java)

    @GetMapping("/home")
    fun home(): String {
        logger.info("Hello Everyone!")
        return "Hello"
    }

}