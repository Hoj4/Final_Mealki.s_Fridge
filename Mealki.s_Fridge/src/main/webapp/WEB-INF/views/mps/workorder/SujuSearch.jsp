<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키의 냉장고</title>
</head>
<body>
<input type="button" value="닫기" onclick="window.close()">
    
    
    
    <script>
        function setParentText(){
        	opener.document.getElementById("pInput").value = document.getElementById("cInput").value
        }
    </script>
    
</body>
</html>