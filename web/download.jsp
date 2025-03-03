<%@ page import="java.io.*, java.sql.*, com.itextpdf.text.*, com.itextpdf.text.pdf.*" %>
<%
    // Get user input
    String rollNum = request.getParameter("rollNum");
    String motherName = request.getParameter("motherName");

//    Document   : index
//    Created on : 1 Mar 2025, 5:22:06?pm
//    Author     : Areen Vishwakarma 
//    Email      : areenwish.mum@gmail.com
//    Contact    : 8452817040

    if (rollNum != null && motherName != null) {
        // Database connection details
        String url = "jdbc:mysql://localhost:3306/student_result"; // Change if needed
        String user = "root"; // Change if needed
        String password = ""; // Change if needed

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish Connection
            conn = DriverManager.getConnection(url, user, password);
            
            // Prepare SQL Query
            String query = "SELECT * FROM Students WHERE Roll_Num = ? AND Mother_Name = ?";
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, Integer.parseInt(rollNum));
            pstmt.setString(2, motherName);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                // Fetch subject marks
                int maths = rs.getInt("Maths");
                int science = rs.getInt("Science");
                int english = rs.getInt("English");
                int history = rs.getInt("History");
                int geography = rs.getInt("Geography");

                // Calculate Total Marks & Percentage
                int totalMarks = maths + science + english + history + geography;
                double percentage = (totalMarks / 5.0);

                // Set response headers for PDF download
                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "attachment; filename=Student_Result.pdf");

                // Create PDF document
                Document document = new Document();
                PdfWriter.getInstance(document, response.getOutputStream());
                document.open();

                // Add content to PDF
                document.add(new Paragraph("Student Result Details"));
                document.add(new Paragraph("-------------------------------------------------"));
                document.add(new Paragraph("Roll Number: " + rollNum));
                document.add(new Paragraph("Mother Name: " + motherName));
                document.add(new Paragraph("Maths: " + maths));
                document.add(new Paragraph("Science: " + science));
                document.add(new Paragraph("English: " + english));
                document.add(new Paragraph("History: " + history));
                document.add(new Paragraph("Geography: " + geography));
                document.add(new Paragraph("Total Marks: " + totalMarks));
                document.add(new Paragraph("Percentage: " + String.format("%.2f", percentage) + " %"));

                document.close();
            } else {
                response.getWriter().println("No record found.");
            }
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
    }
%>
