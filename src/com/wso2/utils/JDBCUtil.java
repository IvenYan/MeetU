package com.wso2.utils;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JDBCUtil {
    public static String DRIVERNAME = null;
    public static String URL = null;
    public static String USER = null;
    public static String PASSWORD = null;

    public static Connection conn = null;

    static {
        try {

            Properties props = new Properties();
            //Reader in = new FileReader("db.properties");
            InputStream in = JDBCUtil.class.getClassLoader().getResourceAsStream("jdbc.properties");
            props.load(in);

            DRIVERNAME = props.getProperty("jdbc.driverClassName");
            URL = props.getProperty("jdbc.url");
            USER = props.getProperty("jdbc.username");
            PASSWORD = props.getProperty("jdbc.username");

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static Connection getConnection() throws Exception {
        if (conn != null) {
            return conn;
        }

        Class.forName(DRIVERNAME);
        conn = DriverManager.getConnection(URL, USER, PASSWORD);

        return conn;
    }

    public static void closeResource(Connection conn, PreparedStatement st) throws SQLException {
        st.close();
        conn.close();
    }

    public static void closeResource(Connection conn, ResultSet rs, PreparedStatement st) throws SQLException {
        st.close();
        rs.close();
        conn.close();
    }


}
