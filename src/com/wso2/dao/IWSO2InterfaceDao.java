package com.wso2.dao;

import com.wso2.model.WSO2InterfaceOptional;

public interface IWSO2InterfaceDao {
    public void addInterface(WSO2InterfaceOptional wio)throws Exception;
    public void updateInterface(WSO2InterfaceOptional wio)throws Exception;
    public void deleteInterface(WSO2InterfaceOptional wio)throws Exception;
}
