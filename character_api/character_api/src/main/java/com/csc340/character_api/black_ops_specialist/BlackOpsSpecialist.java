package com.csc340.character_api.black_ops_specialist;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

@Entity
@Table(name = "black_ops_specialists")
@Getter
@Setter 
@NoArgsConstructor 
public class BlackOpsSpecialist {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @NotBlank
    private String name;

    @NotBlank 
    private String description;

    @NotBlank
    private String universe;

    @NotBlank
    private String roles;

    @NotBlank
    private String equipment;

    @NotBlank
    @Size(max = 2000)
    @Column(length = 2000)
    private String backstory;
    
    @NotBlank
    @Size(max = 2000)
    @Column(length = 2000)
    private String personality;
    
    @NotBlank
    @Size(max = 100)
    @Column(length = 100)
    private String firstAppearance;

    @Column(length = 500)
    private String imageUrl;
}
