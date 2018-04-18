package com.sino.credit.service.impl;

import com.sino.credit.mapper.WluserMapper;
import com.sino.credit.model.Wluser;
import com.sino.credit.service.WlUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WlUserServiceImpl implements WlUserService {
    @Autowired
    private WluserMapper wluserMapper;
    @Override
    public List<Wluser> getAll() {
        return wluserMapper.getAll();
    }

    @Override
    public int save(Wluser user) {
        return  wluserMapper.insert(user);
    }
}
