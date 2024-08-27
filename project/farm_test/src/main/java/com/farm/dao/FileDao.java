package com.farm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.farm.dto.FileDto;
import com.farm.util.DBHelper;
import com.farm.util.SQL;

public class FileDao extends DBHelper {
    private static FileDao instance = new FileDao();

    public static FileDao getInstance() {
        return instance;
    }

    private FileDao() {}

    public void insertFile(FileDto dto) {
       
        try {
        	conn = getConnection();
            psmt = conn.prepareStatement(SQL.INSERT_FILE);
            psmt.setInt(1, dto.getProduct_id());
            psmt.setString(2, dto.getoName());
            psmt.setString(3, dto.getsName());
            psmt.executeUpdate();
            closeAll();
        } catch (Exception e) {
            e.printStackTrace();
        } 
    }
}
