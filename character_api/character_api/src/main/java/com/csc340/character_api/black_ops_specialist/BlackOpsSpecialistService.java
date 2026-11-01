package com.csc340.character_api.black_ops_specialist;

import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BlackOpsSpecialistService {
    
    private final BlackOpsSpecialistRepository repository;

    public BlackOpsSpecialistService(BlackOpsSpecialistRepository repository) {
        this.repository = repository;
    }

    public List<BlackOpsSpecialist> getAllBlackOpsSpecialists() {
        return repository.findAll();
    }

    // Any argument may be null. All filters that are given must match (partial, case-insensitive).
    public List<BlackOpsSpecialist> getBlackOpsSpecialistsByFilters(String name, String roles, String universe, String equipment) {
        return repository.findAll().stream()
                .filter(s -> matches(s.getName(), name))
                .filter(s -> matches(s.getRoles(), roles))
                .filter(s -> matches(s.getUniverse(), universe))
                .filter(s -> matches(s.getEquipment(), equipment))
                .toList();
    }

    public BlackOpsSpecialist getBlackOpsSpecialistById(Long id) {
        return repository.findById(id).orElseThrow(() -> new BlackOpsSpecialistNotFoundException(id));
    }

    public BlackOpsSpecialist createBlackOpsSpecialist(BlackOpsSpecialist blackOpsSpecialist) {
        return repository.save(blackOpsSpecialist);
    }

    public BlackOpsSpecialist updateBlackOpsSpecialist(Long id, BlackOpsSpecialist updatedBlackOpsSpecialist) {
        BlackOpsSpecialist existingBlackOpsSpecialist = getBlackOpsSpecialistById(id);
        existingBlackOpsSpecialist.setName(updatedBlackOpsSpecialist.getName());
        existingBlackOpsSpecialist.setDescription(updatedBlackOpsSpecialist.getDescription());
        existingBlackOpsSpecialist.setUniverse(updatedBlackOpsSpecialist.getUniverse());
        existingBlackOpsSpecialist.setRoles(updatedBlackOpsSpecialist.getRoles());
        existingBlackOpsSpecialist.setEquipment(updatedBlackOpsSpecialist.getEquipment());
        existingBlackOpsSpecialist.setBackstory(updatedBlackOpsSpecialist.getBackstory());
        existingBlackOpsSpecialist.setPersonality(updatedBlackOpsSpecialist.getPersonality());
        existingBlackOpsSpecialist.setFirstAppearance(updatedBlackOpsSpecialist.getFirstAppearance());
        existingBlackOpsSpecialist.setImageUrl(updatedBlackOpsSpecialist.getImageUrl());
        return repository.save(existingBlackOpsSpecialist);
    }

    public void deleteBlackOpsSpecialist(Long id) {
        getBlackOpsSpecialistById(id); // Ensure the entity exists before attempting to delete and if entity not found, throws a 404 error.
        repository.deleteById(id);
    }

    // Helper method for case-insensitive partial matching
    private boolean matches(String value, String search) {
        return search == null || (value != null && value.toLowerCase().contains(search.toLowerCase()));
    }
}
