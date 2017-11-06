/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import alice.tuprolog.Term;

/**
 *
 * @author Charly
 */
public class Animal {
    String nombre="",clase="",propiedades="",img="";
    Animal(Term a, Term v, Term i, Term l) {
        nombre =v.toString();
        clase = a.toString();
        propiedades=l.toString();
        img = i.toString();
    }

    @Override
    public String toString() {
        return "{"+"\"nombre\":\""+nombre+"\",\"clase\":\""+clase+"\""+",\"propiedades\":\""+propiedades+"\",\"img\":\""+img+"\"}";
    }

    
}
