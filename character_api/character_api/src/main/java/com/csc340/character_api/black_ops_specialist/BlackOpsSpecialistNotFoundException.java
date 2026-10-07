package com.csc340.character_api.black_ops_specialist;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;


@ResponseStatus(HttpStatus.NOT_FOUND)
public class BlackOpsSpecialistNotFoundException extends RuntimeException {
    public BlackOpsSpecialistNotFoundException(Long id) {
        super("Black Ops Specialist with ID " + id + " not found.");
    }
}
