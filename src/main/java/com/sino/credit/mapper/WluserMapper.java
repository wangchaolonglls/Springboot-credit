package com.sino.credit.mapper;

import com.sino.credit.model.Wluser;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface WluserMapper {
    int deleteByPrimaryKey(String userId);

    int insert(Wluser record);

    int insertSelective(Wluser record);

    Wluser selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(Wluser record);

    int updateByPrimaryKeyWithBLOBs(Wluser record);

    int updateByPrimaryKey(Wluser record);

    @Select("select * from wl_user")
    List<Wluser> getAll();
}