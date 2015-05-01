/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Search;

import java.io.Serializable;

/**
 *
 * @author grishasergei
 */
public class Station implements Serializable {
    private String name;
    private String color;
    private double latitude;
    private double longitude;
    private String pin_color;
    
    
    public Station(){
        name = "";
        color = "";
        latitude = 0;
        longitude = 0;
        pin_color = "";
    }
    
    /**
     * @return the latitude
     */
    public double getLatitude() {
        return latitude;
    }

    /**
     * @param latitude the latitude to set
     */
    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    /**
     * @return the longtitude
     */
    public double getLongitude() {
        return longitude;
    }

    /**
     * @param longitude the longtitude to set
     */
    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    /**
     * @return the pin_color
     */
    public String getPin_color() {
        return pin_color;
    }

    /**
     * @param pin_color the pin_color to set
     */
    public void setPin_color(String pin_color) {
        this.pin_color = pin_color;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the color
     */
    public String getColor() {
        return color;
    }

    /**
     * @param color the color to set
     */
    public void setColor(String color) {
        this.color = color;
    }

}
