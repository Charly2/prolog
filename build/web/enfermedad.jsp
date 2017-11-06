<%@page import="java.util.ArrayList"%>
<%@page import="app.*"%>
        <%
            response.addHeader("Access-Control-Allow-Origin", "*");
            String accountId = request.getParameter("id");
            response.setContentType("application/json");
            
            ArrayList<Enfermedad> enfermedades = Dao.getAllE(accountId);
            int size = enfermedades.size();
            out.println("[");
            for(int i= 0 ; i< size;i++){
                
                out.println(enfermedades.get(i).toString());
                if(i<(size-1)  && i>=0){
                     out.println(",");
                }
            }
        out.println("]");
        %>