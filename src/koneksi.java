
//import com.mysql.jdbc.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
class koneksiApp{
    Connection con;
    public Connection getConnect(){
        String url = "jdbc:mysql://localhost:3306/travel";
        String user = "root";
        String pass = "";
        
        try {
            con =DriverManager.getConnection(url, user, pass);
            System.out.println("Koneksi berhasil");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
 
        
        return con;
    }         
}
public class koneksi {
    public static void main(String[] args) {
        new koneksiApp().getConnect();
    }
}
