package com.java5.asm.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "type")
public class Type implements Serializable {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer typeID;
	String typeName;
	@OneToMany(mappedBy = "type")
	List<Product> products;
}
