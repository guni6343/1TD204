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

//This is a basic station data source. It will be replaced with a database later.

public class StationInfoProviderBasic implements StationInfoProvider {

    private static final String CL_RED = "#ff0000";
    private static final String CL_GREEN = "#00ff00";
    private static final String CL_BLUE = "#0000ff";
    private static final String CL_BLACK = "#000000";

    
    
    public StationInfoProviderBasic(){
        //
    }
    
    @Override
    public Station getStation(String name) {
        Station station = null;
        
        if (name.equalsIgnoreCase("slussen")){
            station = new Station();
            station.setName("Slussen");
            station.setColor(CL_BLACK);
            station.setImgUrl("http://www.t-bana.net/images/slussen/IMGP9936%20bl.jpg");
        } else if (name.equalsIgnoreCase("ropsten")){
            station = new Station();
            station.setName("Ropsten");
            station.setColor(CL_RED);
            station.setImgUrl("http://www.t-bana.net/images/ropsten/IMGP7771_2_3_fused%20copy.jpg");
        } else if (name.equalsIgnoreCase("farsta strand")){
            station = new Station();
            station.setName("Farsta strand");
            station.setColor(CL_GREEN);
            station.setImgUrl("http://www.t-bana.net/images/farsta_strand/IMGP0148_bl.jpg");
        } else if (name.equalsIgnoreCase("Akalla")){
            station = new Station();
            station.setName("Akalla");
            station.setColor(CL_BLUE);
            station.setImgUrl("http://www.t-bana.net/images/akalla/IMGP8363_bl.jpg");
        } else if (name.equalsIgnoreCase("t-centralen")){
            station = new Station();
            station.setName("T-Centralen");
            station.setColor(CL_BLACK);
            station.setImgUrl("http://www.t-bana.net/images/tcentralen/IMGP9706_7_fused_bl.jpg");
        }     
        return station;
    }
    
}
