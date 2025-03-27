<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
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
            max-width: 800px;
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
        p {
            font-size: 16px;
            color: #333;
            line-height: 1.6;
            margin-bottom: 20px;
        }
        .image-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .image-container img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
        <a href="/home">Home</a>
        <a href="/menu">Menu</a>
        <a href="/about">About</a>
        <a href="/contact">Contact</a>
    </nav>
    <div class="container">
        <h1>About Us</h1>
        <div class="image-container">
            <img src="" alt="About Us Image">
        </div>
        <p>
            Welcome to Coffee Oclock! We are passionate about serving the best coffee in town. Our mission is to provide a cozy atmosphere where you can enjoy premium coffee and delightful pastries. Our team is dedicated to ensuring you have a memorable experience every time you visit us.
        </p>
        <p>
            At Coffee Oclock, we source our beans from the finest farms around the world and use state-of-the-art brewing techniques to bring you the perfect cup of coffee. Whether you're here for a quick pick-me-up or a leisurely afternoon with friends, we're here to make sure you feel right at home.
        </p>
        <p>
            Thank you for choosing Coffee Oclock. We look forward to serving you!
        </p>
    </div>
</body>
</html>
