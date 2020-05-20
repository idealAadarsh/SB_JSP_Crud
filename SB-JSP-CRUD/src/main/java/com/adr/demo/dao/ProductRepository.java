package com.adr.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.adr.demo.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

}
