package champs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

public class data {

	public void addToDB(HttpServletRequest request) {
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String dateN=request.getParameter("date");
		String email=request.getParameter("email");
		String adresse=request.getParameter("adresse");
		String filiere=request.getParameter("filiere");
		String niveau="";
		String[] nv=request.getParameterValues("niveau");
		try { 
			for (int i = 0; i < nv.length; ++i){ 
			niveau=nv[i]; 

			} 
			} catch (Exception e1) { 
			e1.printStackTrace(); 
			}
		String Langages="";
		String[] lan=request.getParameterValues("Langages");
		try { 
			for (int i = 0; i < lan.length; ++i){ 
			Langages+=lan[i]+"/"; 
			}
			} catch (Exception e1) { 
			e1.printStackTrace(); 
			}

		String exp=request.getParameter("exp");
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");

			Connection con=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/javaee","root","root");

			Statement stmt=con.createStatement();

			int rs=stmt.executeUpdate("INSERT into inscription values('"+nom+"','"+prenom+"','"+dateN+"'"+",'"+email+
					"',"+"'"+adresse+"','"+filiere+"','"+niveau+"','"+Langages+"','"+exp+"');");
			con.close();

			}catch(Exception e){ System.out.println(e);}

			}
	
	
	
	
}
