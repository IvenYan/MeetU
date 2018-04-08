package com.wso2.dao;

import com.wso2.model.WSO2InterfaceOptional;
import com.wso2.utils.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class WSO2InterfaceDao implements IWSO2InterfaceDao {

    public void addInterface(WSO2InterfaceOptional wio) throws Exception{

        JDBCUtil.getConnection();
        Connection con=JDBCUtil.conn;
        Statement statement = con.createStatement();
        String sql="insert into WSO2_Interfaces_Operation(interfaceName,handling,handlingTime) values('"+wio.getWso2Interface().getInterfaceName()+"','"+wio.getHandling()+"','"+wio.getHandlingTime()+"')";
        statement.executeUpdate(sql);
        statement.close();
        con.close();
    };
    public void updateInterface(WSO2InterfaceOptional wio){

    };
    public void deleteInterface(WSO2InterfaceOptional wio){

    };
}
