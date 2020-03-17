<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function send_editar(){
	window.location="<%=request.getContextPath()%>/editar.action"
}
</script>
</head>
<body style="text-align: center;">
	<s:form action="listar" method="POST">
		<button type="submit" name="fetchData" value="FetchRecords">Fetch
			Records</button>
	</s:form>
	<s:if test="fetchData=='FetchRecords'">
		<div style="margin-top: 40px; margin-right: 150px; margin-left: 150px;">
			<table>
				<thead>
					<tr style="background-color: #E0E0E1;">
					    <th>id</th>
						<th>Nombre</th>
						<th>apellido</th>
						<th>correo</th>
						<th>contraseña</th>
						
					</tr>
				</thead>
				<s:iterator value="dataList">
					<tr>
						<td><s:property value="id" /></td>
						<td><s:property value="nombre" /></td>
						<td><s:property value="apellido" /></td>
						<td><s:property value="email" /></td>
						<td><s:property value="contraseña" /></td>
						
					</tr>
				</s:iterator>
			</table>
		</div>
	</s:if>
	
	<button  onclick="send_editar()" >editar</button>

	
</body>
</html>