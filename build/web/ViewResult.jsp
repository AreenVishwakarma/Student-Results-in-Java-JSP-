<%-- 
    Document   : ViewResult
    Created on : 1 Mar 2025, 5:50:55 pm
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : index
    Created on : 1 Mar 2025, 5:22:06 pm
    Author     : Areen Vishwakarma 
    Email      : areenwish.mum@gmail.com
    Contact    : 8452817040
--%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 10px;
            width: 35%;
            text-align: left;
        }
        #name{
            text-align: left;
        }
        #marks{
            text-align: right;
            margin-right: 10px
        }
        #header{
            text-align: center;
        }
    </style>
    </head>
    <body>
        <form action="index.jsp">
            <input type="submit" value="Home">
        </form>
        <div id="header">
            <div class="col-sm-2 hidden-xs">
                <img src="../img/mahastateedu.gif"></div>
            <div class="logo col-lg-10 col-md-10 col-sm-10">
                <h5>MAHARASHTRA STATE BOARD OF SECONDARY AND HIGHER SECONDARY EDUCATION, PUNE</h5> 
                <h3>HSC Examination March- 2022 RESULT</h3>
	</div>
            <hr style="border: 2px solid; width: auto;">
        <%
            String RollNum = request.getParameter("regno");
            String MotherName = request.getParameter("mname");
        %>
        
        <%
            try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/student_result","root","");
                String check = "SELECT * FROM Students WHERE Roll_Num = ? AND Mother_Name = ?";
                PreparedStatement ps = con.prepareStatement(check);
                ps.setString(1, RollNum);
                ps.setString(2, MotherName);
                ResultSet rs = ps.executeQuery();        
            if(rs.next()){
        %>
        <div>
            <h5 id='marks'>Out Of: 500</h5>
            <h3 id='name'>Roll Number: <%=rs.getInt("Roll_Num")%></h3>
            <h3 id='name'>Roll Number: <%=rs.getString("Mother_Name")%></h3>
        </div>
        <div>
        <%    
            out.println("<table");

                out.print("<tr>");
                    out.print("<th>Subject Name</th>");
                    out.print("<th>Marks</th>");
                out.print("</tr>");

                    out.println("<tr><td>Maths</td><td>"+ rs.getInt("Maths") +"</td></tr>");
                    out.println("<tr><td>Sciencer</td><td>"+ rs.getInt("Science") +"</td></tr>");
                    out.println("<tr><td>English</td><td>"+ rs.getInt("English") +"</td></tr>");
                    out.println("<tr><td>History</td><td>"+ rs.getInt("History") +"</td></tr>");
                    out.println("<tr><td>Geography</td><td>"+ rs.getInt("Geography") +"</td></tr>");

                int totalMarks = rs.getInt("Maths") + rs.getInt("Science") + rs.getInt("English") + rs.getInt("History") + rs.getInt("Geography");
                double percentage = (totalMarks / 5.0);
                    out.println("<tr><td><b>Percentage: </b>"+ percentage +"%</td></td><td><b>Total: </b>"+ totalMarks +"</td> </td></tr>");

//                        out.println("<tr><td>Result</td><td>"+if(percentage > 40){out.print("PAss")}+"</td></tr>");

                out.println("</table>");
            }else{ out.println("<p style='color:red;'>No record found for Roll Number " + RollNum + " and Mother Name " + MotherName + ".</p>");}
            
            }catch(SQLException ex){
                response.getWriter().println(ex.getMessage());
            }
%>
    <form method="POST" action="download.jsp">
        <%-- 
    Document   : index
    Created on : 1 Mar 2025, 5:22:06 pm
    Author     : Areen Vishwakarma 
    Email      : areenwish.mum@gmail.com
    Contact    : 8452817040
--%>
        <input type="hidden" name="rollNum" value="<%= RollNum %>">
        <input type="hidden" name="motherName" value="<%= MotherName %>">
        <input type="submit" value="Download">
    </form>        
<%
        %>  
        </div>
    </body>

