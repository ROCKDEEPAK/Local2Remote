<%@page import="java.util.*"%>
<html>
<body>

	<!-- Step-1 Create a html Form -->
	<form action="to-doList1.jsp">
		Add new items: <input type="text" name="item"> <input
			type="submit" value="Submit">
	</form>
	<%-- Items entered test: <%=request.getParameter("item")%> --%>
	<%
		List<String> items = (List<String>) session.getAttribute("toDoList");

		if (items == null) {
			items = new ArrayList<String>();
			items.add(request.getParameter("item"));
			session.setAttribute("toDoList", items);

		} else {
			items.add(request.getParameter("item"));
			request.removeAttribute("item");
			session.setAttribute("toDoList", items);
		}
	%>
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