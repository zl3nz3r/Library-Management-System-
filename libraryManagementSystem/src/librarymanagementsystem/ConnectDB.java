
package librarymanagementsystem;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class ConnectDB {
    public static Connection con = null;
    public static Statement stmt = null;
    
    public void connectDB(){
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/library";
        
        try{
            Class.forName(driver).newInstance();
            con = (Connection) DriverManager.getConnection(url,"admin1","root");
            System.out.println("Suc");
            
        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        } catch (InstantiationException ex) {
            ex.printStackTrace();
        } catch (IllegalAccessException ex) {
            ex.printStackTrace();
        }
        
    }

    public int addMember(String query){
        int res = 0; 
        
        try{
            stmt = con.createStatement();
            System.out.println("stmt done");
            res = stmt.executeUpdate(query);
            con.close();
            stmt.close();
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        return res;
    }
    
    public ResultSet fetchData(String query){
        ResultSet rs = null;
        try{
        stmt = con.createStatement();
        System.out.println("stmt done");
        rs = stmt.executeQuery(query);
            
        }catch(SQLException e){
             System.out.println(e.getMessage());
        }
        return rs;
        
    }
    
    public int reccount(String query1){
    int count=0;
    ResultSet q=null;
    try{
        stmt = con.createStatement();
        System.out.println("stmt done");
        q = stmt.executeQuery(query1);
        while(q.next()){
        count ++;
        }
            con.close();
            stmt.close();
        
        }catch(SQLException e){
             System.out.println(e.getMessage());
        }
    
    return count;
    }
    
    
}
