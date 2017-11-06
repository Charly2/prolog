/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import alice.tuprolog.*;
import java.io.FileInputStream;
import java.util.ArrayList;

/**
 *
 * @author Charly
 */
public  class Dao {
    public static ArrayList<Animal> getAll(String id){
        ArrayList<Animal> animales = new ArrayList<>();
        String ap = "";
        try{
            Prolog engine1 = new Prolog();
            Theory tu = new Theory(new FileInputStream("C:\\Users\\Charly\\Documents\\NetBeansProjects\\p7\\web\\animalia.pl"));
            engine1.setTheory(tu); 
            String consulta1 = "quien(["+id+"],A,V,I,L)."; // Se crea la consulta
            System.out.println(consulta1);
            SolveInfo answer1 = engine1.solve(consulta1); // Se envía la consulta
            if(answer1.isSuccess()){
                do{
                    Term a = answer1.getTerm("A");
                    Term v = answer1.getTerm("V");
                    Term i = answer1.getTerm("I");
                    Term l = answer1.getTerm("L");
                    ap += a.toString();
                    Animal ani = new Animal(a,v,i,l);
                    animales.add(ani);
                    System.out.println(ani.toString());
                    answer1 = engine1.solveNext();  // Busca la siguiente enfermedad
                } while(answer1.hasOpenAlternatives());
            }else{
		System.out.println("false.");
            }
        }
	catch (Exception ex) {ex.printStackTrace();}
        return animales;
    }
    public static ArrayList<Enfermedad> getAllE(String id){
        ArrayList<Enfermedad> enfermedades = new ArrayList<>();
        String ap = "";
        try{
            Prolog engine1 = new Prolog();
            Theory tu = new Theory(new FileInputStream("C:\\Users\\Charly\\Documents\\NetBeansProjects\\p7\\web\\conocimiento.pl"));
            engine1.setTheory(tu); 
            String consulta1 = "quien(["+id+"],E,S,D,I)."; // Se crea la consulta
            System.out.println(consulta1);
            SolveInfo answer1 = engine1.solve(consulta1); // Se envía la consulta
            if(answer1.isSuccess()){
                do{
                    Term a = answer1.getTerm("E");
                    Term v = answer1.getTerm("S");
                    Term i = answer1.getTerm("D");
                    Term l = answer1.getTerm("I");
                    ap += a.toString();
                    Enfermedad ani = new Enfermedad(a,v,i,l);
                    enfermedades.add(ani);
                    System.out.println(ani.toString());
                    answer1 = engine1.solveNext();  // Busca la siguiente enfermedad
                } while(answer1.hasOpenAlternatives());
            }else{
		System.out.println("false.");
            }
        }
	catch (Exception ex) {}
        return enfermedades;
    }
}
