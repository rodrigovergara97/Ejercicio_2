<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags"  prefix="s" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function send_registro(){
	window.location="<%=request.getContextPath()%>/inicio.action"
}
function send_listar(){
	window.location="<%=request.getContextPath()%>/listar.action"
}

</script>
<button onclick="send_registro()">registrar</button>
<button onclick="send_listar()">listar</button>
<s:form action="saludo">

</s:form>
</body>
</html>