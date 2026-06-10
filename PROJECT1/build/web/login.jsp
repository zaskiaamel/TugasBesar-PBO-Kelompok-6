<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Eventify</title>

<link rel="stylesheet" href="css/style.css">

</head>
<body>

<div class="container">

    <div class="top-logo">
        <img src="images/logo.png" class="small-logo">
    </div>

    <h1 class="title">Log in</h1>

    <form action="LoginServlet" method="post">

        <div class="form-group">
            <input type="email"
                   name="email"
                   placeholder="Username">
        </div>

        <div class="form-group">
            <input type="password"
                   name="password"
                   placeholder="Password">
        </div>

        <button class="btn" type="submit">
            Log in
        </button>

    </form>

    <div class="link">
        <a href="register.jsp">
            or Sign up
        </a>
    </div>

</div>

</body>
</html>