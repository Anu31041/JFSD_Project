<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farming Awareness Platform</title>
    <style>
        /* Your CSS styles */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        header {
            background-color: #28a745;
            color: white;
            padding: 60px 0;
            text-align: center;
            box-shadow: 0 4px 2px -2px gray;
        }
        .home-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .home-btn:hover {
            background-color: #4CAF50;
        }
        .hero {
            background-image: url('https://www.shutterstock.com/image-photo/agricultural-landscape-green-fields-on-260nw-319123307.jpg'); /* Replace with your image */
            background-size: cover;
            background-position: center;
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
            margin-top: 30px;
        }
        .hero h1 {
            font-size: 4em;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
        }
        .btn-primary {
            background-color: #4CAF50;
            color: white;
            padding: 12px 30px;
            font-size: 1.2em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .btn-primary:hover {
            background-color: #45a049;
        }
        .footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Home button visible at all times -->
    <header>
        <h1>Farming Awareness Platform</h1>
        <a href="index.jsp">
            <button class="home-btn">Home</button>
        </a>
    </header>

    <!-- Hero Section -->
    <div class="hero">
        <div>
            <h1>Empowering Farmers with Knowledge</h1>
            <p>Join us in creating a brighter future for agriculture by accessing expert advice and government schemes.</p>
            <a href="home.jsp" class="btn-primary">Get Started</a>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2024 Inspire Society About Farming. All rights reserved.</p>
    </footer>
</body>
</html>
