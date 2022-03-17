<%@ page import="java.util.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="main.css">
    <style type=”text/css”>

        video#bgVideo {
            position: absolute; // Play the video in full screen mode
        top: 0px;
            left: 0px;
            min-width: 100%;
            min-height: 100%;
            z-index: -1; // Put the video behind all other elements
        }

        @media only screen and (max-width: 768px) {
            video {
                display:none;
            }
            body{
                background-image:url('BACK.JPG');
            }
        }
    </style>
</head>
<body>
<video id="bgVideo" autoplay loop poster="image.png">
    <!-- Video is embedded in the WEBM format -->
    <source src="video.webm" type="video/webm" />
</video>
<div class="form-style-8">
    <h2>Key in Input</h2>
    <form action="main.jsp"method="post">
      <input type="text" name="field1" placeholder="encode input"  />
        <input type="submit" value="encode" />

    </form>
</div>

<br/>
</body>
</html>