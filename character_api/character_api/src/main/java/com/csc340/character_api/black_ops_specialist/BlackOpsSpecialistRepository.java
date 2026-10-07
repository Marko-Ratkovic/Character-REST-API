package com.csc340.character_api.black_ops_specialist;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BlackOpsSpecialistRepository extends JpaRepository<BlackOpsSpecialist, Long> {
    
    // Custom query method to find BlackOpsSpecialist entities by name (case-insensitive).
    List<BlackOpsSpecialist> findByNameContainingIgnoreCase(String name);

    // Custom query method to find BlackOpsSpecialist entities by universe (case-insensitive).
    List<BlackOpsSpecialist> findByUniverseContainingIgnoreCase(String universe);

    // Custom query method to find BlackOpsSpecialist entities by roles (case-insensitive).
    List<BlackOpsSpecialist> findByRolesContainingIgnoreCase(String roles);

    // Custom query method to find BlackOpsSpecialist entities by equipment (case-insensitive).
    List<BlackOpsSpecialist> findByEquipmentContainingIgnoreCase(String equipment);

    // Custom query method to find BlackOpsSpecialist entities by roles and universe (case-insensitive).
    List<BlackOpsSpecialist> findByRolesContainingIgnoreCaseAndUniverseContainingIgnoreCase(String roles, String universe);

    // Custom query method to find BlackOpsSpecialist entities by roles and equipment (case-insensitive).
    List<BlackOpsSpecialist> findByRolesContainingIgnoreCaseAndEquipmentContainingIgnoreCase(String roles, String equipment);

    // Custom query method to find BlackOpsSpecialist entities by universe and equipment (case-insensitive).
    List<BlackOpsSpecialist> findByUniverseContainingIgnoreCaseAndEquipmentContainingIgnoreCase(String universe, String equipment);
    
    // Custom query method to find BlackOpsSpecialist entities by roles, universe, and equipment (case-insensitive).
    List<BlackOpsSpecialist> findByRolesContainingIgnoreCaseAndUniverseContainingIgnoreCaseAndEquipmentContainingIgnoreCase(String roles, String universe, String equipment);
}
