<%@page import="java.util.ArrayList"%>
<%@page import="app.*"%>
<%@ page contentType="application/json; charset=UTF-8" %>
        <%
            response.addHeader("Access-Control-Allow-Origin", "*");
            String accountId = request.getParameter("id");
            response.setContentType("application/json");
            
            ArrayList<Animal> animales = Dao.getAll(accountId);
            int size = animales.size();
            out.println("[");
            for(int i= 0 ; i< size;i++){
                
                out.println(animales.get(i).toString());
                if(i<(size-1)  && i>=0){
                     out.println(",");
                }
            }
        out.println("]");
        %>
        
        
