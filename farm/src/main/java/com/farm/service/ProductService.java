package com.farm.service;

import java.util.List;

import com.farm.dao.ProductDao;
import com.farm.dto.ProductDto;


public enum ProductService {
	
	INSTANCE;
	private ProductDao dao = ProductDao.getInstance();
	
	public void insertProduct(ProductDto dto) {
		dao.insertProduct(dto);
	}
	
	public ProductDto selectProduct() {
		return null;
	}
	
	public List<ProductDto> selectProducts() {
		return null;
	}
	public void updateProduct(ProductDto dto) {
		
	}
	public void deleteProduct(String proname){
		
	}
	

}
