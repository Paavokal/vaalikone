package dao;

import java.sql.DriverManager;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conn.Connections;
import data.Kysymys;

import java.sql.Connection;

public class KysymysDao {

	private Connection conn;
	
	public KysymysDao() {
		try {
			conn=Connections.getConnection();
		}
		catch (SQLException e) {
			//do nada
		}
	}
	public ArrayList<Kysymys> addKysymys(Kysymys f) {
		try {
			String sql="insert into kysymykset (kysymys,id) values(?,?)";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, f.getKysymys());
			pstmt.setInt(2, f.getId());
			pstmt.executeUpdate();
			
		}
		catch(SQLException e) {
			
		}
		return readAllKysymys();
	}
	

	public ArrayList<Kysymys> readAllKysymys() {
		ArrayList<Kysymys> list=new ArrayList<>();
		try {
			Statement stmt=conn.createStatement();
			ResultSet RS=stmt.executeQuery("select * from kysymykset");
			while (RS.next()){
				Kysymys f=new Kysymys();
				f.setId(RS.getInt("id"));
				f.setKysymys(RS.getString("kysymys"));
				list.add(f);
			}
			return list;
		}
		catch(SQLException e) {
			return null;
		}
	}
	public ArrayList<Kysymys> updateKysymys(Kysymys f) {
		try {
			String sql="update kysymykset set kysymys =? where id=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, f.getKysymys());
			pstmt.setInt(2, f.getId());
			pstmt.executeUpdate();
		
		}
		catch(SQLException e) {
			
		}
		return readAllKysymys();
	}
	public ArrayList<Kysymys> deleteKysymys(String id) {
		try {
			String sql="delete from kysymykset where id=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		
		}
		catch(SQLException e) {
			
		}
		return readAllKysymys();
	}

	public Kysymys readKysymys(String id) {
		Kysymys f=null;
		try {
			String sql="select * from kysymykset where id=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet RS=pstmt.executeQuery();
			while (RS.next()){
				f=new Kysymys();
				f.setId(RS.getInt("id"));
				f.setKysymys(RS.getString("kysymys"));
			}
			return f;
		}
		catch(SQLException e) {
			return null;
		}
	}
}
