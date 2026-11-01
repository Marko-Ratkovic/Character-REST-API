package com.csc340.character_api.black_ops_specialist;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.validation.Valid;

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

    // Details page
    @GetMapping ("/characters/{id}")
    public String details(@PathVariable Long id, Model model) {
        BlackOpsSpecialist character = service.getBlackOpsSpecialistById(id);
        model.addAttribute("myChar", character);
        return "details";
    }

    // Add new character form page
    @GetMapping("/characters/new")
    public String newForm(Model model) {
        BlackOpsSpecialist character = new BlackOpsSpecialist();
        model.addAttribute("myChar", character);
        model.addAttribute("formTitle", "Add Specialist");
        return "new-character-form";
    }

    @PostMapping("/characters")
    public String create(@Valid @ModelAttribute("myChar") BlackOpsSpecialist character,
                         BindingResult bindingResult,
                         Model model,
                         RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("formTitle", "Add Specialist");
            model.addAttribute("errors", bindingResult.getFieldErrors().stream().map(e -> e.getField() + ": " + e.getDefaultMessage()).toList());
            return "new-character-form";
        }
        BlackOpsSpecialist createdCharacter = service.createBlackOpsSpecialist(character);
        redirectAttributes.addFlashAttribute("successMessage", "Specialist added successfully!");
        return "redirect:/characters" + createdCharacter.getCharacterId();
    }

    // Edit character form page
    

    // About page
    @GetMapping ("/characters/about")
    public String about() {
        return "about";
    }


}
