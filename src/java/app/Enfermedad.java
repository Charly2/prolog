/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import alice.tuprolog.Term;
import java.io.UnsupportedEncodingException;

/**
 *
 * @author Charly
 */
public class Enfermedad {
    String nombre="",sintomas="",descripcion="",img="";
    Enfermedad(Term a, Term v, Term i, Term l) throws UnsupportedEncodingException {
        nombre =v.toString();
        sintomas = a.toString();
        byte ptext[] = l.toString().getBytes();
        String value = new String(ptext, "UTF-8");
        descripcion=value;
        img = i.toString();
    }

    @Override
    public String toString() {
        
        return "{"+"\"nombre\":\""+nombre+"\",\"sintomas\":\""+sintomas+"\""+",\"descripcion\":\""+descripcion+"\",\"img\":\""+img+"\"}";
    }
    
    
}
