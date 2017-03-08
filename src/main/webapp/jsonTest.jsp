<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"/>
    <script type="text/javascript">
        function RequestJson() {
           $.ajax({
               url : '${pageContext.request.contextPath}/jsonRequest.action',
               data : '{"name":"iphone6s","price":4900}',
               method  : 'post',
               contentType : 'application/json;charset=utf-8',
               success: function (data) {
                   alert(data);
               }
           });
        }

        function ResponseJson() {
        }
    </script>

    <title>Json测试</title>
</head>
<body>
<form name="jsonForm" action="jsonTest.jsp" method="post">
    <input type="button" value="请求是JSON，输出是json" onclick="RequestJson()"/>
    <input type="button" value="请求是key/value，输出是json" onclick="ResponseJson()"/>
</form>
</body>
</html>
