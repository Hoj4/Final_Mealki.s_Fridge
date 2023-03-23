package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.WorkorderDTO;

public interface WorkorderService {
	
	public int getWorkorderCount();

	public List<WorkorderDTO> getworkorderList(PageDTO pageDTO);

	public List<WorkorderDTO> getcontractList(PageDTO pageDTO);

	public int getContractCount();

	public WorkorderDTO ContractSearch(String keyword);

	public List<WorkorderDTO> WoInsert(String num);

	public void insertWorkorder(WorkorderDTO workorderDTO);

}


