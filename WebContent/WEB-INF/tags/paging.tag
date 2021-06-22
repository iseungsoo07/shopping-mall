<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	int totalPage = (int) request.getAttribute("totalPage");
	int curPage = (int) request.getAttribute("curPage");
	
%>

<%
	for(int i = 1; i <= totalPage; i++) { %>
	<a href="showN.do?page=<%=i%>">
		<span class="pagenum <%=curPage == i ? "currentPage" : "" %>"><%=i%></span>
	</a>
<% 
	}
%>

