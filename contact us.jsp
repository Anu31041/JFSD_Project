<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Farming Awareness</title>
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
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        h1 {
            text-align: center;
            color: #28a745;
        }
        input[type="text"], input[type="email"], textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

     <a href="home.jsp" class="home-btn">Home</a>
    <a href="home.jsp" class="back-btn">Back</a>
    
    
    <div class="container">
        <h1>Contact Us</h1>
        <form action="ContactServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>

            <button type="submit">Send Message</button>
        </form>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
        	const nameInput = document.getElementById('name');
            const emailInput = document.getElementById('email');
            const nameError = document.getElementById('nameError');
            const emailError = document.getElementById('emailError');
        	// Name validation (only characters)
            nameInput.addEventListener('input', () => {
                const nameRegex = /^[A-Za-z]+$/;
                if (!nameRegex.test(nameInput.value)) {
                    nameError.textContent = 'Name must contain only letters';
                } else {
                    nameError.textContent = '';
                }
                if (nameInput.value.length === 0) {
                    nameError.textContent = 'Name is required';
                }
                if (nameInput.value.length > 10) {
                    nameInput.value = nameInput.value.slice(0, 10);
                    nameError.textContent = 'Name cannot exceed 10 characters';
                }
            });

            // Email validation
            emailInput.addEventListener('input', () => {
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailRegex.test(emailInput.value)) {
                    emailError.textContent = 'Invalid email format (e.g., john.doe@example.com)';
                } else {
                    emailError.textContent = '';
                }
                if (emailInput.value.length > 20) {
                    emailInput.value = emailInput.value.slice(0, 20);
                    emailError.textContent = 'Email cannot exceed 20 characters';
                }
            });

        });
        </script>
</body>
</html>
