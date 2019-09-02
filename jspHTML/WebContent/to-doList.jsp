<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<html>
<body>

	<!-- Step-1 Create a html Form -->
	<form action="to-doList.jsp">
		Add new items: <input type="text" name="item"> 
		<input type="submit" value="Submit">
	</form>

	<%-- Items entered test: <%=request.getParameter("item")%> --%>

	<!-- Step-2 Add new Items to ToDo List -->
	<%
		//Get the todo items from session object
		List<String> items = (List<String>) session.getAttribute("toDoList");

		//if todo items doesn't exits then create new one
		if (items == null) {
			items = new ArrayList<String>();
			session.setAttribute("toDoList", items);
		}
		//see if there is any form data to add
		if (items != null) {
			
		}
	%>
	<!-- Step-3 Display all items of TOdo list from Session -->
	<hr>
	<ol>
		<%
			for (String temp : items) {
				out.println("<li>" + temp + "</li>");
			}
		%>
	</ol>
</body>
</html>