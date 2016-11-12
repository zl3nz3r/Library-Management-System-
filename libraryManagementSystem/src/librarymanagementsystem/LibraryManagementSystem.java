package librarymanagementsystem;
import java.sql.*;
/**
 *
 * @author zlenzer
 */
public class LibraryManagementSystem {
    
    public static boolean log = false;
    private static void login(){
        
        Login a = new Login();
        while(log != true){
        a.setVisible(true);}
    }
    private static void mainForm(){
           new MainForm().setVisible(false);
    }
    private static void regForm(){
           new RegForm().setVisible(false);
    }
    private static void addBook(){
        new AddBook().setVisible(false);
    }
    private static void updateBook(){
        new UpdateBook().setVisible(false);
    }
    private static void updateMember(){
        new UpdateMember().setVisible(false);
    }
    
    public static void main(String[] args) {
       login();
       
       System.out.print("hello");

       mainForm();
       regForm();
       addBook();
       updateBook();
       updateMember();

    }
    
}
