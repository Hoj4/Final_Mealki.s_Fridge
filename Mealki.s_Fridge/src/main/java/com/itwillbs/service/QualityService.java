package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.QualityDTO;


public interface QualityService {
	public List<Map<String, Object>> getQualityListMap(QualityDTO qualityDTO);
}
