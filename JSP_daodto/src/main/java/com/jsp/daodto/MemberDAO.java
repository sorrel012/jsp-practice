package com.jsp.daodto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.jdbc.DBUtil;

public class MemberDAO {
    
    private Connection con;
    private Statement st;
    private PreparedStatement pstat;
    private ResultSet rs;
    
    public MemberDAO() {
        this.con = DBUtil.open("localhost", "jsp", "java1234");
    }

    public List<MemberDTO> memberSelect() {

        List<MemberDTO> dtoList = new ArrayList<MemberDTO>();
        
        try {
            
            String sql = "select * from tblMember";
            
            st = con.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
                
                MemberDTO dto = new MemberDTO();
                
                dto.setName(rs.getString("name"));
                dto.setId(rs.getString("id"));
                dto.setPw(rs.getString("pw"));
                dto.setTel(rs.getString("tel"));
                dto.setGender(rs.getString("gender"));
                
                dtoList.add(dto);
                
            }
            
            return dtoList;
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return dtoList;
        
    }
    
}
