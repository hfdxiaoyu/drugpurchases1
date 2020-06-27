package com.itheima.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itheima.po.Medicin;
import com.itheima.service.MedicinService;
import com.itheima.util.Page;

@Controller
public class MedicinController {
	// 依赖注入
	@Autowired
	private MedicinService medicinService;

	
	@GetMapping("/hello.action")
	public String hello() {
		System.out.println("hello");
		return null;
	}
	
	/**
	 * 药品列表
	 */
	@RequestMapping(value = "/medicin/list.action")
	public String list(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows,
			String medName, Float medPrice, String medProduct, Model model) {
		 //按条件查询所有药品
		Page<Medicin> medicins = medicinService.findMedicinList(page, rows, medName, medPrice, medProduct);
		model.addAttribute("page", medicins);

		// 添加参数
		model.addAttribute("medName", medName);
		model.addAttribute("medProduct", medProduct);
		model.addAttribute("medPrice", medPrice);

		return "medicin";

	}

	/**
	 * 删除药品
	 */
	@RequestMapping("/medicin/delete.action")
	@ResponseBody
	public String medicinDelete(Integer id) {
		int rows = medicinService.deleteMedicin(id);
		if (rows > 0) {
			return "OK";
		} else {
			return "FAIL";
		}

	}

	/**
	 * 通过id获取药品信息
	 */
	@RequestMapping("/medicin/getMedicinById.action")
	@ResponseBody
	public Medicin getMedicinById(Integer id) {
		Medicin medicin = medicinService.getMedicinById(id);
		return medicin;

	}

	/**
	 * 更新药品
	 */
	@RequestMapping("/medicin/update.action")
	@ResponseBody
	public String medicinUpdate(Medicin medicin) {
		int rows = medicinService.updateMedicin(medicin);
		if (rows > 0) {
			return "OK";
		} else {
			return "FALL";
		}

	}

}
