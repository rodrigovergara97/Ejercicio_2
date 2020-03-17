<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-Type" charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

.container
{
text-align:center;
border:1px solid black;
width:30%;
height:30%;
margin:0 auto;
background-color:rgb(240, 248, 255);


}
h1
{
text-align:center;
margin-left:0 auto;
font-weight:150;


}
</style>

</head>
<body>
<h1>Registro</h1>
<div class="container">
<s:actionerror  />

<s:form action="Registrar">

    <s:textfield label="Nombre" name="name"></s:textfield>
    <s:textfield label="Apellido" name="lt_name"></s:textfield>
   <s:textfield label="Correo electronico" name="email" ><span id="err"></span></s:textfield>
    <s:password label="Contraseña" name="password"></s:password>
    <s:submit value="Registrar"></s:submit>
</s:form>
</div>
</body>
</html>