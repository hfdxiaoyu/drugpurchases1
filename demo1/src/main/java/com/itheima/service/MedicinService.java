package com.itheima.service;

import com.itheima.po.Medicin;
import com.itheima.util.Page;

public interface MedicinService {
	// 查询药品列表
	public Page<Medicin> findMedicinList(Integer page, Integer rows, String medName, Float medPrice, String medProduct);

	// 删除药品
	public int deleteMedicin(Integer id);

	// 通过 id查询药品
	public Medicin getMedicinById(Integer id);

	// 更新药品
	public int updateMedicin(Medicin medicin);

}
