<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>Json测试</title>
    <script text="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript">

        function requestJson() {
            $.ajax({
                type : 'POST',
                url : '${pageContext.request.contextPath}/requestJson.action',
                contentType : 'application/json;charset=utf-8',
                data:'{"name":"iphone","price":999}',
                success:function(data) {
                    alert(data);
                },
                error : function() {
                    alert('error...');
                }
            });
        }
        
        function responseJson() {
            $.ajax({
                type:'post',
                url:'${pageContext.request.contextPath}/responseJson.action',
                data:'name=iphone&price=1000',
                success:function (data) {
                    alert(data);
                }
            });
        }


    </script>
</head>
<body>
<form id="jsonForm">
    <input type="button" onclick="requestJson()" value="请求是json，输出是json"/>
    <input type="button" onclick="responseJson()" value="请求是key/value，输出是json"/>
</form>
</body>
</html>
