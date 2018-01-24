<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>File Uploading Form</title>
</head>
<body>

<form action="upload_image" method="Post"  enctype="multipart/form-data" name="form1">

Name: <input type="text" name="name" /><br/>
Select: <input type="file" name="file" multiple/>



<input type="submit" value="Upload File" />

</form>
</body>