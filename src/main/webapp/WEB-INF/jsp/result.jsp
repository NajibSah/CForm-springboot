<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submission Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            background-color: #000000; /* Black */
            color: #FFFFFF; /* White */
            padding: 20px;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #F40009; /* Coca-Cola Red */
            padding: 10px 0;
        }
        nav a {
            color: #FFFFFF; /* White text */
            text-decoration: none;
            padding: 12px 20px;
            display: block;
        }
        nav a:hover {
            background-color: #C8102E; /* Darker red */
        }
        .container {
            background: #FFFFFF; /* White background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            margin: 20px auto;
            box-sizing: border-box;
            transition: transform 0.3s ease;
        }
        .container:hover {
            transform: scale(1.02);
        }
        h1 {
            color: #F40009; /* Coca-Cola Red */
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }
        label {
            font-size: 16px;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group p {
            margin: 0;
            font-size: 16px;
            color: #333;
        }
        .additional-field {
            display: none;
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #d8d8d8;
            border-radius: 4px;
            background-color: #f4f4f4;
        }
        @media (max-width: 600px) {
            nav {
                flex-direction: column;
            }
            nav a {
                padding: 10px;
                text-align: center;
            }
            .container {
                padding: 15px;
                width: 100%;
                box-sizing: border-box;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Coffee Oclock</h1>
    </header>
    <nav>
        <a href="#home">Home</a>
        <a href="#menu">Menu</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </nav>
    <div class="container">
        <h1>Submission Result</h1>
        <div class="form-group">
            <label>Name:</label>
            <p>${contactForm.name}</p>
        </div>

        <div class="form-group">
            <label>Email:</label>
            <p>${contactForm.email}</p>
        </div>

        <div class="form-group">
            <label>Password:</label>
            <p>${contactForm.password}</p>
        </div>

        <div class="form-group">
            <label>Message:</label>
            <p>${contactForm.message}</p>
        </div>

        <div class="form-group">
            <label>Subscribe:</label>
            <p>${contactForm.subscribe ? 'Yes' : 'No'}</p>
        </div>

        <div class="form-group">
            <label>Country:</label>
            <p>
                <c:choose>
                    <c:when test="${contactForm.country == 'us'}">United States</c:when>
                    <c:when test="${contactForm.country == 'ca'}">Canada</c:when>
                    <c:when test="${contactForm.country == 'gb'}">United Kingdom</c:when>
                    <c:when test="${contactForm.country == 'au'}">Australia</c:when>
                    <c:otherwise>Unknown</c:otherwise>
                </c:choose>
            </p>
        </div>

        <div class="form-group additional-field">
            <label>Extra Information:</label>
            <p>${contactForm.extra}</p>
        </div>
    </div>
</body>
</html>
