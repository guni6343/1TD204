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
    private String imgUrl;
    
    public Station(){
        name = "";
        color = "";
        imgUrl = "";
    }
    
    public String getName(){
        return name;
    }
    
    public void setName(String value){
        name = value;
    }
    
    public String getColor(){
        return color;
    }
    
    public void setColor(String value){
        color = value;
    }

    public String getImgUrl(){
        return imgUrl;
    }
    
    public void setImgUrl(String value){
        imgUrl = value;
    }
}
