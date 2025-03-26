<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: sans-serif;
            margin: 0;
            padding: 0;
        }
        .logo {
            position: absolute;
            top: 20px;
            left: 20px;
        }
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: #333;
            padding: 20px;
            border-radius: 5px;
            width: 300px;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 3px;
            background-color: #444;
            color: white;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #e50914;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        a {
            color: #737373;
            text-decoration: none;
        }
        a:hover {
            color: white;
        }
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            background-color: #141414;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="logo">
        <img src="netflix-logo.png" alt="Netflix" width="100">
    </div>
    <div class="form-container">
        <form action="loginServlet" method="post">
            <h2>Sign In</h2>
            <% String error = (String) request.getAttribute("error"); if (error != null) { %>
                <p style="color: red;"><%= error %></p>
            <% } %>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Sign In</button>
            <p>Don't have an account? <a href="signup.jsp">Sign up now</a></p>
        </form>
    </div>
    <div class="footer">
        <a href="#">Terms of Use</a> | <a href="#">Privacy Policy</a> | <a href="#">Help</a>
    </div>
</body>
</html>