package com.csc340.character_api.black_ops_specialist;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BlackOpsSpecialistUiController {
    
    private final BlackOpsSpecialistService service;

    public BlackOpsSpecialistUiController(BlackOpsSpecialistService service) {
        this.service = service;
    }

    // Gallery with search
    @GetMapping ({"/", "/characters"})
    public String gallery(@RequestParam(required = false) String name,
                          @RequestParam(required = false) String roles,
                          @RequestParam(required = false) String equipment,
                          Model model) {
        if (name != null && name.isBlank()) {
            name = null;
        }
        if (roles != null && roles.isBlank()) {
            roles = null;
        }
        if (equipment != null && equipment.isBlank()) {
            equipment = null;
        }
        model.addAttribute("characters", service.getBlackOpsSpecialistsByFilters(name, roles, null, equipment));
        model.addAttribute("name", name);
        model.addAttribute("roles", roles);
        model.addAttribute("equipment", equipment);
        return "index";
    }

    // About page
    @GetMapping ("/characters/about")
    public String about() {
        return "about";
    }

    // Details page
    @GetMapping ("/characters/{id}")
    public String details(@PathVariable Long id, Model model) {
        BlackOpsSpecialist character = service.getBlackOpsSpecialistById(id);
        model.addAttribute("myChar", character);
        return "details";
    }


}
