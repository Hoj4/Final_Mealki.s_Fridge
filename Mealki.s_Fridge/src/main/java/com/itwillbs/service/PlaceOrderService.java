package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.CustomerDTO;
import com.itwillbs.domain.EmployeeDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.PlaceOrderDTO;
import com.itwillbs.domain.WarehouseDTO;

public interface PlaceOrderService {
	public List<WarehouseDTO> getWarehouseList();

	public int getStk_qnt();

	public List<Map<String, Object>> getItemListMap();

	public List<EmployeeDTO> getEmployeeList();
	
	public void insertOrder(PlaceOrderDTO placeOrderDTO);
	
	public List<PlaceOrderDTO> getOrderList(PlaceOrderDTO placeOrderDTO);
	
	public List<PlaceOrderDTO> getOrderList2(PageDTO pageDTO);
	
	public int getOrderListCount2(PageDTO pageDTO);
	
//	public int getBoardCount();
	
}
