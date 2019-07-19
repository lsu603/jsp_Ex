<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <style>
        div.out {
            width: 250px;
            height: 60px;
            background-color: yellow;
        }    </style>
    <!--    공통파일 처리 -->
    <%@ include file="../include/common.jsp" %>
    <script> //자동 실행 코드
    $(function () {
        var i = 0;
        //div 태그 중에서 class 가 out 인 태그
        $("div.out").mouseover(function () {
            //선택자.text() 태그 내부의 내용을 읽기
            // 선택자.text("값") 내용 변경
            // alert( $("p:first").text() );
            $("p:first").text("mouse over"); //첫번째 p 태그의 내용변경
            // $("p:first").html("<marquee>mouse over</marquee>");
            $("p:last").text(++i);//마지막 p 태그의 내용 변경
        });
        $("div.out").mouseout(function () {
            $("p:first").text("마우스를 여기로 움직이세요.");
        });
    });
    </script>
</head>
<body>
<div class="out">
    <p>마우스를 여기로 움직이세요</p>
    <p>0</p>
</div>
<div>
    <p>두번째 div</p>
</div>
</body>
</html>