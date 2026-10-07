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

    // Combines optional filters to find a list of BlackOpsSpecialists. Either argument may be null.
    public List<BlackOpsSpecialist> getBlackOpsSpecialistsByFilters(String name, String roles, String universe, String equipment) {
        if (name != null) {
            return repository.findByNameContainingIgnoreCase(name);
        } else if (roles != null && universe != null && equipment != null) {
            return repository.findByRolesContainingIgnoreCaseAndUniverseContainingIgnoreCaseAndEquipmentContainingIgnoreCase(roles, universe, equipment);
        } else if (roles != null && universe != null) {
            return repository.findByRolesContainingIgnoreCaseAndUniverseContainingIgnoreCase(roles, universe);
        } else if (roles != null && equipment != null) {
            return repository.findByRolesContainingIgnoreCaseAndEquipmentContainingIgnoreCase(roles, equipment);
        } else if (universe != null && equipment != null) {
            return repository.findByUniverseContainingIgnoreCaseAndEquipmentContainingIgnoreCase(universe, equipment);
        } else if (roles != null) {
            return repository.findByRolesContainingIgnoreCase(roles);
        } else if (universe != null) {
            return repository.findByUniverseContainingIgnoreCase(universe);
        } else if (equipment != null) {
            return repository.findByEquipmentContainingIgnoreCase(equipment);
        } else {
            return getAllBlackOpsSpecialists();
        }
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
        return repository.save(existingBlackOpsSpecialist);
    }

    public void deleteBlackOpsSpecialist(Long id) {
        getBlackOpsSpecialistById(id); // Ensure the entity exists before attempting to delete and if entity not found, throws a 404 error.
        repository.deleteById(id);
    }
}
