1)
A)SELECT EName, Sal FROM Employee WHERE Sal >= 2200;

B)SELECT * FROM Employee WHERE Comm IS NULL;

C)SELECT EName, Sal FROM Employee WHERE Sal NOT BETWEEN 2500 AND 4000;

D)SELECT EName, Job, Sal FROM Employee WHERE Mgr IS NULL;

E)SELECT EName FROM Employee WHERE EName LIKE '__A%';

I)SELECT EName FROM Employee WHERE EName LIKE '%T';

2)

sql :

CREATE TABLE Employee (
    empcode INT PRIMARY KEY,
    empname VARCHAR(50),
    empage INT,
    esalary DECIMAL(10, 2)
);

java:

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeInsertJDBC {
    
    public static void main(String[] args) {
        
        String url = "jdbc:mysql://localhost:3306/your_database_name";  
        String username = "your_username"; 
        String password = "your_password";  
        
        
        String insertSQL = "INSERT INTO Employee (empcode, empname, empage, esalary) VALUES (?, ?, ?, ?)";
        
        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement ps = conn.prepareStatement(insertSQL)) {
            
           
            Class.forName("com.mysql.cj.jdbc.Driver");

            
            ps.setInt(1, 101);  
            ps.setString(2, "Jenny");  
            ps.setInt(3, 25);  
            ps.setDouble(4, 10000); 
            ps.executeUpdate();
            
            ps.setInt(1, 102);
            ps.setString(2, "Jacky");
            ps.setInt(3, 30);
            ps.setDouble(4, 20000);
            ps.executeUpdate();
            
            ps.setInt(1, 103);
            ps.setString(2, "Joe");
            ps.setInt(3, 20);
            ps.setDouble(4, 40000);
            ps.executeUpdate();
            
            ps.setInt(1, 104);
            ps.setString(2, "John");
            ps.setInt(3, 40);
            ps.setDouble(4, 80000);
            ps.executeUpdate();
            
            ps.setInt(1, 105);
            ps.setString(2, "Shameer");
            ps.setInt(3, 25);
            ps.setDouble(4, 90000);
            ps.executeUpdate();
            
            System.out.println("Data inserted successfully!");
            
        } catch (SQLException e) {
            System.out.println("SQL error: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found: " + e.getMessage());
        }
    }
}

xml:

<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.30</version>  <!-- Use the latest version -->
</dependency>



