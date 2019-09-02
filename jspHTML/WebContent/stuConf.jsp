<html>
<body>
	Student Conformed
	<br> Name: ${param.FirstName} ${param.LastName}
	<br> Country : ${param.Country}
	<br> favLanguage : ${param.favLang}
	<ul>
		<%
			String[] lang = request.getParameterValues("checkBox");
			for (String tempLang : lang) {
				out.println("<li>" + tempLang + "</li>");
			}
		%>
	</ul>

</body>
</html>