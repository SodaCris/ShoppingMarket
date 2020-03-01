package my.dao;

import my.util.*;
import my.bean.*;
import java.sql.*;
import java.util.ArrayList;

public class ItemDao {
    public static Item getItem(int itemid) {
        Item i = new Item();
        try {
            Connection c = Conn.getConn();
            String sql = "select (name,dat,img,des,type) from item where id=?";
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, itemid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                i.setName(rs.getString("name"));
                i.setDate(rs.getDate("dat"));
                i.setImg(rs.getString("img"));
                i.setDesc(rs.getString("des"));
                i.setType(rs.getString("type"));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public static ArrayList<Item> getItems() {
        ArrayList<Item> ret = new ArrayList<>();
        try {
            Connection c = Conn.getConn();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery("select * from item");
            while (rs.next()) {
                Item i = new Item();
                i.setDate(rs.getDate("dat"));
                i.setName(rs.getString("name"));
                i.setImg(rs.getString("img"));
                i.setDesc(rs.getString("des"));
                i.setType(rs.getString("type"));
                ret.add(i);
            }
            rs.close();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ret;
    }
}