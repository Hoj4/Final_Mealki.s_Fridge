package com.itwillbs.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.QualityDTO;
import com.itwillbs.service.QualityService;

@Controller
public class QualityController {
	
	@Inject
	private QualityService qualityService;
	
	@RequestMapping(value = "/mps/quality/list", method = RequestMethod.GET)
	public String listmap(QualityDTO qualityDTO, Model model){
	
	// 메서드 호출
//	검색어 받아오는 값
//	String wo_num = request.getParameter("wo_num");
//	String manu_name = request.getParameter("manu_name");
//	String item_name = request.getParameter("item_name");
//	String manu_sdate = request.getParameter("manu_sdate");
//	String manu_date = request.getParameter("manu_date");
//	String emp_Kname = request.getParameter("emp_Kname");
//	System.out.println(qualityDTO.getWo_num());
	List<Map<String, Object>> qualityListMap=qualityService.getQualityListMap(qualityDTO);
	
	// model 담아서 이동
	model.addAttribute("qualityListMap", qualityListMap);
	
//	System.out.println("작업지시번호"+wo_num);
//	System.out.println("라인명"+manu_name);
//	System.out.println("품명"+item_name);
//	System.out.println("시작시간"+manu_sdate);
//	System.out.println("마감시간"+manu_date);
//	System.out.println("작업자"+emp_Kname);
	
	return "mps/quality/listForm";
	}
	
	@RequestMapping(value = "/quality/writeForm", method = RequestMethod.GET)
	public String qualityWrite(HttpServletRequest request, HttpSession session, Model model) {
		System.out.println("QualityController writeForm()");
		
		int emp_num=(int)session.getAttribute("emp_num");
		System.out.println("세션 id : " + emp_num);
		
		String wo_num=request.getParameter("wo_num");
		
		QualityDTO qualitySession=qualityService.getemp_Knamesession(emp_num);
		QualityDTO qualityDTO=qualityService.getQualityWrite(wo_num);
		QualityDTO qualityCode=qualityService.getQualityCode(wo_num);
		
		model.addAttribute("qualityDTO", qualityDTO);
		model.addAttribute("qualitySession", qualitySession);
		model.addAttribute("qualityCode", qualityCode);
		
		System.out.println(qualityDTO);
		return "mps/quality/writeForm";
	}
	
//	@RequestMapping(value = "/quality/writeForm", method = RequestMethod.GET)
//	public String qualityNum(HttpServletRequest request, HttpSession session, Model model) {
//		System.out.println("QualityController writeForm()");
//		
//		
//		QualityDTO qualitySession=qualityService.getemp_Knamesession(emp_num2);
//		QualityDTO qualityDTO=qualityService.getQualityWrite(wo_num2);
//		
//		model.addAttribute("qualityDTO", qualityDTO);
//		model.addAttribute("qualitySession", qualitySession);
//		
//		System.out.println(qualityDTO);
//		return "mps/quality/writeForm";
//	}
	
}
