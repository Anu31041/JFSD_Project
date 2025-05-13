<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Farming Awareness</title>
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
        input[type="text"], input[type="password"] {
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
            font-size: 0.9em;
            margin-top: -8px;
        }
    </style>
</head>
<body>
    <a href="home.jsp" class="home-btn">Home</a>
    <a href="home.jsp" class="back-btn">Back</a>

    <div class="container">
        <h1>Login</h1>
        <form id="loginForm" action="loginAction" method="POST">
            <input type="text" id="username" name="username" placeholder="Username" maxlength="10" required>
            <span id="usernameError" class="error"></span>
            <input type="password" id="password" name="password" placeholder="Password" maxlength="10" required>
            <span id="passwordError" class="error"></span>
            <button type="submit">Login</button>
        </form>
        <a href="register.jsp" style="display: block; text-align: center; margin-top: 10px; text-decoration: none; color: #28a745;">Register</a>
    </div>

    <script>
        const form = document.getElementById('loginForm');
        const usernameInput = document.getElementById('username');
        const passwordInput = document.getElementById('password');
        const usernameError = document.getElementById('usernameError');
        const passwordError = document.getElementById('passwordError');

        // Username validation (letters only and length check)
        usernameInput.addEventListener('input', () => {
            const usernameRegex = /^[A-Za-z]+$/;
            if (!usernameRegex.test(usernameInput.value)) {
                usernameError.textContent = 'Username can only contain letters';
                usernameError.style.color = 'red';
            } else if (usernameInput.value.length > 10) {
                usernameError.textContent = 'Username cannot exceed 10 characters';
                usernameError.style.color = 'red';
                usernameInput.disabled = true;
            } else {
                usernameError.textContent = '';
                usernameInput.disabled = false;
            }
        });

        // Password validation (length and complexity)
        passwordInput.addEventListener('input', () => {
            if (passwordInput.value.length > 10) {
                passwordError.textContent = 'Password cannot exceed 10 characters';
                passwordError.style.color = 'red';
                passwordInput.disabled = true;
            } else {
                const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%?&])[A-Za-z\d@$!%?&]{8,}$/;
                if (!passwordRegex.test(passwordInput.value)) {
                    passwordError.textContent = 'Password must be at least 8 characters and contain at least one uppercase letter, one lowercase letter, one number, and one special character';
                    passwordError.style.color = 'red';
                } else {
                    passwordError.textContent = '';
                }
                passwordInput.disabled = false; // Enable input if less than 10 characters
            }
        });

        // Basic form validation
        form.addEventListener('submit', (event) => {
            if (usernameInput.value.length !== 10 || passwordInput.value.length !== 10) {
                event.preventDefault();
                if (usernameInput.value.length !== 10) {
                    usernameError.textContent = 'Username must be 10 characters';
                }
                if (passwordInput.value.length !== 10) {
                    passwordError.textContent = 'Password must be 10 characters';
                }
            }
        });
    </script>
</body>
</html>

