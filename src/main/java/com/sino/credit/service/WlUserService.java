package com.sino.credit.service;

import com.sino.credit.model.Wluser;

import java.util.List;

public interface WlUserService {

    List<Wluser> getAll();
    int save(Wluser user);
}
