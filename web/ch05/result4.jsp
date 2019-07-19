<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="keyword.KeywordDAO" %>
<!-- 클래스 import -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title></head>
<body>
<% request.setCharacterEncoding("utf-8"); //한글 인코딩 설정
    String keyword = request.getParameter("keyword");
    out.println("추가할 키워드:" + keyword);
    KeywordDAO dao = new KeywordDAO();
    dao.insert(keyword); %>
<script>     alert("추가되었습니다.");
location.href = "ajax3.html"; //페이지 이동
</script>

</body>
</html>