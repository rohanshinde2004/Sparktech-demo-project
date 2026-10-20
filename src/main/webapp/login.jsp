
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sparktech - Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            display: grid;
            place-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .login-box {
            background: white;
            padding: 32px;
            width: min(320px, 80vw);
            border-radius: 12px;
            box-shadow: 0 4px 18px #0002;
        }
        input, button {
            box-sizing: border-box;
            width: 100%;
            padding: 12px;
            margin-top: 12px;
        }
        button {
            background: #2563eb;
            color: white;
            border: 0;
            border-radius: 5px;
            cursor: pointer;
        }
        .error { color: #b91c1c; }
    </style>
</head>
<body>
    <main class="login-box">
        <h2>Sparktech Login</h2>
        <p>Sign in to continue.</p>

        <% if ("1".equals(request.getParameter("error"))) { %>
            <p class="error">Invalid username or password.</p>
        <% } %>

        <form action="${pageContext.request.contextPath}/login"
              method="post">
            <label for="username">Username</label>
            <input id="username" name="username"
                   autocomplete="username" required>

            <label for="password">Password</label>
            <input id="password" name="password"
                   type="password"
                   autocomplete="current-password" required>

            <button type="submit">Login</button>
        </form>
    </main>
</body>
</html>
