<%-- 
    Document   : Login
    Created on : Oct 5, 2024, 11:12:26 PM
    Author     : Nguyễn Quang Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        /* Đặt màu nền và căn giữa khung đăng nhập */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Màu nền nhạt */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Khung đăng nhập */
        .login-container {
            width: 350px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Tiêu đề */
        h2 {
            text-align: center;
            color: #6699ff;
            margin-bottom: 20px;
        }

        /* Nhãn và input */
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Nút đăng nhập */
        button {
            width: 100%;
            padding: 10px;
            background-color: #6699ff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #5588ee;
        }

        /* Liên kết quên mật khẩu */
        .forgot-password {
            text-align: center;
            margin-top: 10px;
        }

        .forgot-password a {
            color: #6699ff;
            text-decoration: none;
        }

        .forgot-password a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>ABC LOGIN</h2>
        <form action="login" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
