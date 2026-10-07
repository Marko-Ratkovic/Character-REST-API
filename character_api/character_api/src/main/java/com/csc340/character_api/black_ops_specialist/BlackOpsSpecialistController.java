package com.csc340.character_api.black_ops_specialist;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.HttpStatus;

import jakarta.validation.Valid;

import java.util.List;

@RestController
@RequestMapping ("/api/characters")
public class BlackOpsSpecialistController {
    
    private final BlackOpsSpecialistService service;

    public BlackOpsSpecialistController(BlackOpsSpecialistService service) {
        this.service = service;
    }

    @GetMapping
    public List<BlackOpsSpecialist> list(@RequestParam(required = false) String name, @RequestParam(required = false) String roles,
            @RequestParam(required = false) String universe, @RequestParam(required = false) String equipment) {
        return service.getBlackOpsSpecialistsByFilters(name, roles, universe, equipment);
    }
    
    @GetMapping("/{id}")
    public BlackOpsSpecialist get(@PathVariable Long id) {
        return service.getBlackOpsSpecialistById(id);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public BlackOpsSpecialist create(@Valid @RequestBody BlackOpsSpecialist blackOpsSpecialist) {
        return service.createBlackOpsSpecialist(blackOpsSpecialist);
    }

    @PutMapping ("/{id}")
    public BlackOpsSpecialist update(@PathVariable Long id, @Valid @RequestBody BlackOpsSpecialist blackOpsSpecialist) {
        return service.updateBlackOpsSpecialist(id, blackOpsSpecialist);
    }

    @DeleteMapping ("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) {
        service.deleteBlackOpsSpecialist(id);
    }
}
