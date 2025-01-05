<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Page</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
            color: #fff;
            position: relative;
        }

        h1 {
            position: absolute;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            text-align: center;
            color: #fff;
            font-size: 2.2em;
            font-weight: bold;
            padding-top: 5%;
        }

        /* Form Container */
        form {
          
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            margin-top: 80px; /* Space for the h1 tag at the top */
            border: 2px solid black;
              background-color: transparent; /* Transparent background */
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
            background-color: #f9f9f9;
        }

        input[type="text"]:focus, input[type="number"]:focus, input[type="date"]:focus {
            border-color: #2575fc;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #f1c40f;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            form {
                padding: 30px;
            }

            h1 {
                font-size: 2em;
            }

            input[type="text"], input[type="number"], input[type="date"] {
                font-size: 1em;
            }

            button {
                font-size: 1em;
            }
        }

        @media screen and (max-width: 480px) {
            form {
                padding: 20px;
            }

            h1 {
                font-size: 1.8em;
            }

            input[type="text"], input[type="number"], input[type="date"] {
                padding: 10px;
                font-size: 1em;
            }

            button {
                font-size: 1em;
            }
        }

        @media screen and (max-width: 360px) {
            h1 {
                font-size: 1.6em;
            }

            input[type="text"], input[type="number"], input[type="date"] {
                padding: 8px;
                font-size: 0.95em;
            }

            button {
                font-size: 1em;
            }
        }
    </style>
</head>
<body>

<h1>UPDATE YOUR INFORMATION</h1>

<form action="/edit/${data.id}" method="post">
    <input type="hidden" name="id" value="${data.id}">

    <label for="description">Description</label>
    <input type="text" name="description" id="description" value="${data.description}">
    
    <label for="amount">Amount</label>
    <input type="number" name="amount" id="amount" value="${data.amount}">
    
    <label for="date">Date</label>
    <input type="date" name="date" id="date" value="${data.date}">
    
    <button type="submit">Update</button>
</form>

</body>
</html>
