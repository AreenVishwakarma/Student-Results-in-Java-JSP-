# Student Result Processing System

## 📌 Project Overview
This is a **JSP-based web application** built using **JDK 22** and **MySQL** as the backend database. The application allows students to view their results by entering their roll number and mother's name, similar to the **Maharashtra Result Page**.

## 🚀 Features
- Student result lookup by Roll Number & Mother's Name.
- Secure database connection using MySQL.
- Displays subject-wise marks, total marks, and percentage.
- Generates student result details in **PDF format**.

## 🛠️ Technology Stack
- **Frontend:** JSP, HTML, CSS, JavaScript
- **Backend:** Java (JDK 22), JSP, Servlets
- **Database:** MySQL
- **Libraries Used:** iText (for PDF generation), JDBC (for database connection)

## 📥 Installation Guide (Local System)

### 1️⃣ Prerequisites
Ensure you have the following installed on your system:
- **JDK 22** ([Download here](https://www.oracle.com/java/technologies/javase/jdk22-archive-downloads.html))
- **Apache Tomcat (9+)** ([Download here](https://tomcat.apache.org/download-90.cgi))
- **MySQL Server** ([Download here](https://dev.mysql.com/downloads/mysql/))
- **MySQL Workbench** (Optional, for database management)

### 2️⃣ Setup MySQL Database
1. Open MySQL Workbench or Command Line.
2. Run the following SQL queries to create the database and table:
   ```sql
   CREATE DATABASE student_result;
   USE student_result;
   
   CREATE TABLE Students (
       Roll_Num INT PRIMARY KEY,
       Mother_Name VARCHAR(100),
       Maths INT,
       Science INT,
       English INT,
       History INT,
       Geography INT
   );
   ```
3. Insert sample data:
   ```sql
   INSERT INTO Students VALUES (101, 'Anita', 85, 90, 88, 78, 92);
   INSERT INTO Students VALUES (102, 'Meera', 75, 80, 85, 88, 79);
   ```

### 3️⃣ Setup the Project
1. Clone or download the project from GitHub.
2. Place the project folder inside **Tomcat's webapps** directory.
3. Configure `web.xml` and database connection in `JSP` files.
4. Start the **Apache Tomcat** server.
5. Open your browser and go to:
   ```
   http://localhost:8080/StudentResultProcessing
   ```

### 4️⃣ Testing the Application
- Enter **Roll Number** and **Mother's Name** in the input fields.
- Click "View Result" to display marks and percentage.
- Click **Download Result** to get the result as a **PDF file**.

## 📜 License
This project is open-source and available for educational purposes.

---

💡 **Need Help?** 


    Created on : 1 Mar 2025, 5:22:06 pm
    Author     : Areen Vishwakarma 
    Email      : areenwish.mum@gmail.com
    Contact    : 8452817040

