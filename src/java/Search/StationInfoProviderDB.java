/*
 * Course 1TD204 VT2015 Sergii Gryshkevych, Gunnar Nilsson
 */
package Search;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author grishasergei
 */
public class StationInfoProviderDB implements StationInfoProvider {
    
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
            //Class.forName("com.mysql.jdbc");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tbana?zeroDateTimeBehavior=convertToNull&useUnicode=true&characterEncoding=utf8","tbana","tbana");
            statement = conn.prepareStatement("select * from stations where safeName = ?");
            statement.setString(1, name);
            rs = statement.executeQuery();
            while(rs.next()){
                station = new Station();
                station.setName(rs.getString("full_name"));
                station.setColor(rs.getString("color"));
                station.setLatitude(rs.getDouble("latitude"));
                station.setLongitude(rs.getDouble("longitude"));               
            }
        } catch(Exception e){
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
