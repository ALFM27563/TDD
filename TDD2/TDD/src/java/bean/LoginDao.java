package bean;
import java.sql.*;

public class LoginDao {
    
    public static boolean validate(LoginBean bean)
    {
        boolean status=false;
        try
        {
        Connection con=ConnectionProvider.getCon();
        PreparedStatement ps=con.prepareStatement("SELECT* FROM usuario WHERE usu_nomusuario=? and usu_password=?;");
        ps.setString(1, bean.getNombre());
        ps.setString(2, bean.getPass());
        
        ResultSet rs=ps.executeQuery();
        status=rs.next();
        
        }
        catch(SQLException e){
        }
        return status;
    }

    
}
