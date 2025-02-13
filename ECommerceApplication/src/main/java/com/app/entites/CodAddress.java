package com.app.entites;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "cod_address")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CodAddress {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codAddressId;

	@NotBlank
	@Size(min = 5, message = "Street name must contain atleast 5 characters")
	private String street;
	
	@NotBlank
	@Size(min = 5, message = "Building name must contain atleast 5 characters")
	private String buildingName;
	
	@NotBlank
	@Size(min = 4, message = "City name must contain atleast 4 characters")
	private String city;
	
	@NotBlank
	@Size(min = 2, message = "State name must contain atleast 2 characters")
	private String state;
	
	@NotBlank
	@Size(min = 2, message = "Country name must contain atleast 2 characters")
	private String country;
	
	@NotBlank
	@Size(min = 6, message = "Pincode must contain atleast 6 characters")
	private String pincode;

	@OneToOne(mappedBy = "codAddress", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	private Payment payment;

}
