
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function logincheck(){
    
         alert("로그인 후 이용가능합니다.");

   
}
</script>


</head>
<body>


<c:if test="${member != null}"><!-- 로그인했다면  -->
   
   <a href="QnA_regist.jsp" class="btn_bbs">글쓰기</a>
   
</c:if>

<c:if test="${member == null}">
   
   
   <a href='javascript:logincheck()' class="btn_bbs">글쓰기</a>
</c:if>
   
</body>
</html>