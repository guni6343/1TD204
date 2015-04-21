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
public class Station {
    private String name;
    private String color;
    private String imgUrl;
    
    public Station(){
        //
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
