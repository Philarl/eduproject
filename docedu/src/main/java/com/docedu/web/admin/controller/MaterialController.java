package com.docedu.web.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.admin.service.MaterialService;
import com.docedu.web.admin.vo.MaterialVO;
import com.docedu.web.user.vo.Criteria;

@Controller
public class MaterialController {

	@Autowired
	private final MaterialService materialService;

	@Inject
	public MaterialController(MaterialService materialService) {
		this.materialService = materialService;
	}
	@RequestMapping(value = "/materiallist.mdo")
	public ModelAndView materiallistGet(Model model,HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("admin")== null) {
			mav.setViewName("/adminlogin");
		}else {
			mav.setViewName("/materiallist");
		}
		Criteria cr = null;
		List<MaterialVO> showList = new ArrayList<MaterialVO>();
		showList = materialService.materiallist(cr);
		mav.addObject("MaterialList", showList);
		return mav;
	}
	@GetMapping("/materialinsert.mdo")
	public String materialinsertGet() {
		return "materialinsert";
	}
	@RequestMapping(value = "/insertmaterial.mdo", method = RequestMethod.POST)
	public String material_insertGet(@ModelAttribute MaterialVO materialVO) {
		materialService.materialInsert(materialVO);
//		System.out.println(ad_encyVO.toString());
		return "redirect:/materiallist.mdo";
	}
	@RequestMapping("/materialview.mdo")
	public ModelAndView getmaterialGet(@RequestParam int material_seq, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("admin")== null) {
			mav.setViewName("/adminlogin");
		}else {
			mav.setViewName("/materialview");
		}
		MaterialVO materialVO;
		materialVO = materialService.materialread(material_seq);
		mav.addObject("notice_view", materialVO);
		return mav;
	}
}
