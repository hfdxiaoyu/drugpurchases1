package com.itheima.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.itheima.po.Medicin;
@Mapper
@Repository("medicinDao")
public interface MedicinDao {
	// 药品列表
	public List<Medicin> selectMedicinList(Medicin medicin);

	// 药品数
	public Integer selectMedicinListCount(Medicin medicin);

	// 删除药品
 int deleteMedicin(Integer id);
//通过id查询药品
	public Medicin getMedicinById(Integer id);
//更新药品信息
	public int updateMedicin(Medicin medicin);

}
