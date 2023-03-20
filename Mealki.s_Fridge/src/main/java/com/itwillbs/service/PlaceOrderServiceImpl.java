package com.itwillbs.service;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.PlaceOrderDAO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.PlaceOrderDTO;
import com.itwillbs.domain.WarehouseDTO;

@Service
public class PlaceOrderServiceImpl implements PlaceOrderService{
	@Inject
	private PlaceOrderDAO placeOrderDAO;

	@Override
	public List<WarehouseDTO> getWarehouseList(PageDTO pageDTO) {
		System.out.println("PlaceOrderServiceImpl getWarehouseList");
		int startRow=(pageDTO.getCurrentPage()-1)*pageDTO.getPageSize()+1;
		int endRow = startRow+pageDTO.getPageSize()-1;
			
		pageDTO.setStartRow(startRow);
		pageDTO.setEndRow(endRow);
			
		return placeOrderDAO.getWarehouseList(pageDTO);
	}

	@Override
	public int getStk_qnt() {
		System.out.println("PlaceOrderServiceImpl getStk_qnt");
		return placeOrderDAO.getStk_qnt();
	}

	
	
	
	
	
	
}
