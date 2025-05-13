<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Farming Awareness</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://www.shutterstock.com/image-photo/agricultural-landscape-green-fields-on-260nw-319123307.jpg');
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
        .back-btn {
            bottom: 20px;
            left: 20px;
        }
        .container {
            max-width: 400px;
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
        input[type="text"], input[type="email"], input[type="password"] {
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
        .error {
            color: red;
            font-size: 12px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <a href="home.jsp" class="home-btn">Home</a>
    <a href="home.jsp" class="back-btn">Back</a>

    <div class="container">
        <h1>Register</h1>
        <form action="RegisterServlet" method="post" id="registerForm">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required maxlength="10">
            <span id="nameError" class="error"></span>
<br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required maxlength="20">
            <span id="emailError" class="error"></span>
<br>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" maxlength="15" required>
            <span id="usernameError" class="error"></span>
<br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required maxlength="50">
            <span id="passwordError" class="error"></span>
<br>
            <label for="confirm_password">Confirm Password:</label>
            <input type="password" id="confirm_password" name="confirm_password" required>
            <span id="confirmPasswordError" class="error"></span>

            <button type="submit">Register</button>
        </form>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.getElementById('registerForm');
            const nameInput = document.getElementById('name');
            const emailInput = document.getElementById('email');
            const usernameInput = document.getElementById('username');
            const passwordInput = document.getElementById('password');
            const confirmPasswordInput = document.getElementById('confirm_password');

            const nameError = document.getElementById('nameError');
            const emailError = document.getElementById('emailError');
            const usernameError = document.getElementById('usernameError');
            const passwordError = document.getElementById('passwordError');
            const confirmPasswordError = document.getElementById('confirmPasswordError');

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

            // Username validation (only characters and length)
            usernameInput.addEventListener('input', () => {
                const usernameRegex = /^[A-Za-z]+$/;
                if (!usernameRegex.test(usernameInput.value)) {
                    usernameError.textContent = 'Username must contain only letters';
                } else {
                    usernameError.textContent = '';
                }
                if (usernameInput.value.length > 15) {
                    usernameInput.value = usernameInput.value.slice(0, 15);
                    usernameError.textContent = 'Username cannot exceed 15 characters';
                }
            });

            // Password validation (length and complexity)
            passwordInput.addEventListener('input', () => {
                const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!%?&])[A-Za-z\d@!%?&]{8,}$/;
                if (!passwordRegex.test(passwordInput.value)) {
                    passwordError.textContent = 'Password must be at least 8 characters and contain an uppercase letter, a lowercase letter, a number, and a special character';
                } else {
                    passwordError.textContent = '';
                }
            });

            // Confirm password validation
            confirmPasswordInput.addEventListener('input', () => {
                if (confirmPasswordInput.value !== passwordInput.value) {
                    confirmPasswordError.textContent = 'Passwords do not match';
                } else {
                    confirmPasswordError.textContent = '';
                }
            });
        });
    </script>
</body>
</html>