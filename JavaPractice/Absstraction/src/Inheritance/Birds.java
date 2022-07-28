/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Inheritance;

/**
 *
 * @author BITM Admin Panel
 */
public class Birds implements Bird,Bird2{

    @Override
    public void name() {
        String s="Sparrow";
        System.out.println("Bird Name: "+s);
    }

    @Override
    public void color() {
        String c="Gray";
        System.out.println("Color is: "+c);
    }

    @Override
    public void price() {
        int p=50;
        System.out.println("Price is: "+p+"K");
    }
    
}
