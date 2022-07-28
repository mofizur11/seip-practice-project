/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package absstraction;

/**
 *
 * @author BITM Admin Panel
 */
public class user1 extends accountinfo{
    private String String;

    @Override
    void Id() {
        int i=156321456;
        System.out.println("ID: "+i);
    }

    @Override
    void name() {
        String s="Ronaldo";
        System.out.println("Name: "+s);
    }

    @Override
    void salary() {
        int b=50;
        System.out.println("Salary: "+b+"M");
    }

    @Override
    void designation() {
        String d="Football Player";
        System.out.println("Designation: "+d);
    }
    
}
