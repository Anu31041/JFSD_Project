<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Farming Awareness</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://www.shutterstock.com/image-photo/agricultural-landscape-green-fields-on-260nw-319123307.jpg'); /* Replace with your image */
            background-size: cover;
            background-position: center;
        }
        .home-btn, .back-btn {
            position: absolute;
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .home-btn {
            top: 20px;
            left: 20px;
        }
        .home-btn:hover, .back-btn:hover {
            background-color: #4CAF50;
        }
        .back-btn {
            bottom: 20px;
            left: 20px;
        }
        .container {
            max-width: 800px;
            margin: 100px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        h1 {
            text-align: center;
            color: #28a745;
        }
        p {
            text-align: justify;
            color: #333;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <a href="index.jsp" class="home-btn">Home</a>
    <a href="home.jsp" class="back-btn">Back</a>

    <div class="container">
        <h1>About Us</h1>
        <p>
            Welcome to the Farming Awareness platform! We are committed to empowering farmers with knowledge and resources
            to help them make informed decisions, increase productivity, and improve their livelihoods. Through our platform,
            we aim to provide useful tips, access to expert advice, and create a community of support for farmers across the world.
        </p>
        <p>
            Our vision is to bridge the gap between modern agricultural practices and small-scale farmers. With our easy-to-access 
            resources, we believe that farmers will be able to improve their crop yields, gain access to modern techniques, and 
            find support from industry experts and fellow farmers alike.
        </p>
    </div>
</body>
</html>
