<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
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
        input[type="text"],
        input[type="email"],
        input[type="password"],
        textarea,
        select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #d8d8d8;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus,
        textarea:focus,
        select:focus {
            border-color: #F40009;
            outline: none;
            box-shadow: 0 0 5px rgba(244, 0, 9, 0.3);
        }
        input[type="submit"] {
            background-color: #F40009; /* Coca-Cola Red */
            color: #FFFFFF; /* White text */
            border: none;
            padding: 15px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        input[type="submit"]:hover {
            background-color: #C8102E;
            transform: scale(1.05);
        }
        .checkbox-label {
            font-size: 16px;
            color: #333;
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .checkbox-label input[type="checkbox"] {
            margin-right: 10px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group.error input,
        .form-group.error textarea {
            border-color: #e57373;
        }
        .error-message {
            color: #e57373;
            font-size: 14px;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .success-message {
            color: #81c784;
            font-size: 14px;
            margin-bottom: 10px;
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
        <h1>Contact me</h1>
    </header>
    <nav>
        <a href="/home">Home</a>
        <a href="/menu">Menu</a>
        <a href="/about">About</a>
        <a href="/contact">Contact</a>
    </nav>
    <div class="container">
        <h1>Contact Us</h1>
        <form action="/contact/submit" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                <div class="error-message"></div>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <div class="error-message"></div>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <div class="error-message"></div>
            </div>

            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
                <div class="error-message"></div>
            </div>

            <div class="form-group">
                <label class="checkbox-label">
                    <input type="checkbox" id="subscribe" name="subscribe">
                    Subscribe to our newsletter
                </label>
            </div>

            <div class="additional-field" id="extraInfo">
                <label for="extra">Extra Information:</label>
                <textarea id="extra" name="extra" rows="4"></textarea>
            </div>

            <div class="form-group">
                <label for="country">Country:</label>
                <select id="country" name="country">
                    <option value="us">United States</option>
                    <option value="ca">Canada</option>
                    <option value="gb">United Kingdom</option>
                    <option value="au">Australia</option>
                </select>
            </div>

            <input type="submit" value="Submit">
            <div class="success-message"></div>
        </form>
    </div>

    <script>
        document.getElementById('contactForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form submission

            // Clear previous messages
            document.querySelectorAll('.error-message').forEach(elem => elem.textContent = '');
            document.querySelectorAll('.form-group').forEach(elem => elem.classList.remove('error'));

            let isValid = true;

            // Name Validation
            const name = document.getElementById('name').value.trim();
            if (name === '') {
                document.getElementById('nameGroup').classList.add('error');
                document.getElementById('nameGroup').querySelector('.error-message').textContent = 'Name is required.';
                isValid = false;
            } else {
                document.getElementById('nameGroup').classList.remove('error');
            }

            // Email Validation
            const email = document.getElementById('email').value.trim();
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (email === '') {
                document.getElementById('emailGroup').classList.add('error');
                document.getElementById('emailGroup').querySelector('.error-message').textContent = 'Email is required.';
                isValid = false;
            } else if (!emailPattern.test(email)) {
                document.getElementById('emailGroup').classList.add('error');
                document.getElementById('emailGroup').querySelector('.error-message').textContent = 'Invalid email address.';
                isValid = false;
            } else {
                document.getElementById('emailGroup').classList.remove('error');
            }

            // Password Validation
            if (document.getElementById('password').value.trim() === '') {
                document.getElementById('passwordGroup').classList.add('error');
                document.getElementById('passwordGroup').querySelector('.error-message').textContent = 'Password is required.';
                isValid = false;
            } else {
                document.getElementById('passwordGroup').classList.remove('error');
            }

            // Message Validation
            if (document.getElementById('message').value.trim() === '') {
                document.getElementById('messageGroup').classList.add('error');
                document.getElementById('messageGroup').querySelector('.error-message').textContent = 'Message is required.';
                isValid = false;
            } else {
                document.getElementById('messageGroup').classList.remove('error');
            }

            // Show success message
            if (isValid) {
                document.querySelector('.success-message').textContent = 'Form submitted successfully!';
                // Simulate form submission with a delay
                setTimeout(() => {
                    document.getElementById('contactForm').reset();
                    document.querySelector('.success-message').textContent = 'Thank you for contacting us!';
                }, 1000); // Simulate a network delay of 1 second
            }
        });

        // Live validation on input change
        document.querySelectorAll('input, textarea').forEach(element => {
            element.addEventListener('input', function() {
                const parent = this.parentElement;
                parent.classList.remove('error');
                const errorElement = parent.querySelector('.error-message');
                if (errorElement) errorElement.textContent = '';
            });
        });

        // Toggle additional field visibility based on checkbox
        document.getElementById('subscribe').addEventListener('change', function() {
            const extraField = document.getElementById('extraInfo');
            if (this.checked) {
                extraField.style.display = 'block';
            } else {
                extraField.style.display = 'none';
            }
        });

        // Trigger the change event on page load to set the initial state
        document.getElementById('subscribe').dispatchEvent(new Event('change'));
    </script>
</body>
</html>
