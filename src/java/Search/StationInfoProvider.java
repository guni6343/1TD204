/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Search;

/**
 *
 * @author grishasergei
 */

//It is an interface which all station data sources must implement. It is introduced to make refactoring easier.
public interface StationInfoProvider {
    
    //get station object by station name
    Station getStation(String name);
    
}
