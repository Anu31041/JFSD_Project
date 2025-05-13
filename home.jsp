<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Farming Awareness</title>
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
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 4px 2px -2px gray;
        }
        nav {
            background-color: #333;
            padding: 10px 0;
        }
        nav ul {
            list-style: none;
            display: flex;
            justify-content: flex-start; /* Align to the left side */
            margin: 0;
            padding: 0;
        }
        nav ul li {
            margin-left: 15px; /* Add left margin to space items */
        }
        nav ul li:first-child {
            margin-left: 20px; /* Larger left margin for first item */
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
        }
        nav ul li a:hover {
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
        }
        .footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
            margin-top: 50px;
        }
        /* Home button style */
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
    </style>
</head>
<body>

    <!-- Home Button -->
    <a href="index.jsp">
        <button class="home-btn">Home</button>
    </a>

    <header>
        <h1>Welcome to Farming Awareness Platform</h1>
    </header>

    <nav>
        <ul>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="register.jsp">Register</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="contact us.jsp">Contact Us</a></li>
        </ul>
    </nav>

    <div class="hero">
        <div>
            <h1>Empowering Farmers with Knowledge</h1>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2024 Inspire Society About Farming. All rights reserved.</p>
    </footer>
</body>
</html>
