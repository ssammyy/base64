<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="main.css">

    <title>Title</title>
</head>
<body>
<p>Java Is Sweet</p>
<div class="form-style-8" >
    <h2>Encoded input output</h2>
    <form action="decipher.jsp"method="post">
        <%
            String field1=request.getParameter("field1");
            field1=request.getParameter("field1");
            byte[] encodedBytes = Base64.getEncoder().encode(field1.getBytes());
            String encoded=new String(encodedBytes);
            System.out.println("encodedBytes " + new String(encodedBytes));
        %>
        <%--@declare id="name"--%>
        <label for="name"> your input is </label>
            <input name="fld1" type="text" value=<%=field1%>>
        <label for="name"> your encoded is </label>
             <input name="fld1" type="text" value=<%=encoded %>>
<%--    <textarea placeholder="Message" onkeyup="adjust_textarea(this)"></textarea>-->--%>
        <input type="submit" value="submit" />
    </form>
</div>
<video id="bgVideo" autoplay loop poster="image.png">
    <!-- Video is embedded in the WEBM format -->
    <source src="video.webm" type="video/webm" />
</video>
</body>
</html>