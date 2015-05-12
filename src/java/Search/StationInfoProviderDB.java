/*
 * Course 1TD204 VT2015 Sergii Gryshkevych, Gunnar Nilsson
 */
package Search;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author grishasergei
 */
public class StationInfoProviderDB implements StationInfoProvider {
    
    //@Resource(lookup="jdbc/tbDataSource")
    //private DataSource dataSource;
    
    public StationInfoProviderDB(){
        //
    }
    
    @Override
    public Station getStation(String name) {
        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        Station station = null;
        name = name.trim();
        try{
            Context ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("jdbc/tbDataSource");
            conn = ds.getConnection();
            statement = conn.prepareStatement("SELECT * FROM STATIONS where \"safeName\" = ?");
            statement.setString(1, name);
            rs = statement.executeQuery();
            while(rs.next()){
                station = new Station();
                station.setName(rs.getString("full_name"));
                station.setColor(rs.getString("color"));
                station.setLatitude(rs.getDouble("latitude"));
                station.setLongitude(rs.getDouble("longitude"));               
            }
        } catch(NamingException | SQLException e){
            station = null;
        } finally {
            try{
                conn.close();
                statement.close();
                rs.close();
            } catch(Exception e){
                
            }
            
        }
        
        return station;

    }
    
}
