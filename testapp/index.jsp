<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
<title>HTTP Header Request Example</title>
</head>
<body>
<center>
<h2>HTTP Header Request Example</h2>
<%
out.print( request.getRemoteAddr() );
%>
<%= date = new java.util.Date() %>
<p>Greetings, this is the first version of our test app. The time is currently: <%= date %></p>
<table width="100%" border="1" align="center">
<tr bgcolor="#949494">
<th>Header Name</th><th>Header Value(s)</th>
</tr>
<%
   Enumeration headerNames = request.getHeaderNames();
      while(headerNames.hasMoreElements()) {
            String paramName = (String)headerNames.nextElement();
	    out.print("<tr><td>" + paramName + "</td>\n");
            String paramValue = request.getHeader(paramName);
	    out.println("<td> " + paramValue + "</td></tr>\n");
	    }
%>
</table>
</center>
</body>
</html>

