<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="/struts-tags" prefix="s"%>
    <html>
    <head>

    </head>
   <body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/members"
        user="root" password="root"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM userstable;
    </sql:query>
    <form method = "post" action = "index.jsp">
<p>Which of the programming languages you like the most</p>
<select name="username">
   <c:forEach items="${listUsers.rows}" var="user">
                <option value="${user.username}" >
                    ${user.username}
                </option>
            </c:forEach>
        </select>
 
                <input type="submit" value="Submit" />
        
</form>

    <%!
    String tlen="";
    String languages="";%>
    <%
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/members","root","root");
            Statement st=con.createStatement();
        int j=0;
        String lang[]=request.getParameterValues("username");




        for(int i=0; i<lang.length; i++)
        {
            //languages+=lang[i]+", ";
            String name=(String)session.getAttribute("username");
            String sql ="UPDATE userstable SET friends = '" +lang[i]+"' where username = '" +session.getAttribute("username") + "'";
            j=st.executeUpdate(sql);
        }



            out.println("Data is successfully inserted into database.");
    }
    catch(Exception e)
    {
        out.println(e);
        e.printStackTrace();
    }

            %>


    </body>
    </html>
       %>