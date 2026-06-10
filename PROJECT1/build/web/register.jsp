<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up - Eventify</title>

<link rel="stylesheet" href="css/style.css">

</head>
<body>

<div class="container">

    <div class="top-logo">
        <img src="images/logo.png" class="small-logo" alt="Eventify">
    </div>

    <h1 class="title">Sign up</h1>

    <form action="RegisterServlet" method="post">

        <div class="form-group">
            <input
                type="text"
                name="name"
                placeholder="Full Name"
                required>
        </div>

        <div class="form-group">
            <input
                type="email"
                name="email"
                placeholder="Email Address"
                required>
        </div>

        <div class="form-group">
            <input
                type="password"
                name="password"
                placeholder="Password"
                required>
        </div>

        <button class="btn" type="submit">
            Create Account
        </button>

    </form>

    <div class="link">
        <a href="login.jsp">
            or Log in
        </a>
    </div>

</div>

</body>
</html>