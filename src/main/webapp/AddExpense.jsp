<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        input[type="text"],
        input[type="number"],
        input[type="date"],
        button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            background-color: #5cb85c;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #4cae4c;
        }
        @media (max-width: 600px) {
            form {
                width: 90%;
            }
        }
</style>
<body>
<h1>Add Expense.</h1>
<form action="login" method="post">
Description : <input type="text" name=description>
<br><br>
Amount : <input type="number" name=amount>
<br><br>
Date :<input type="date" name="date" value="2024-10-01" />
<br><br>
<button type="submit">Add Expense</button>
</form>

<br>

<form action="fetch">
<button type="submit">View all records.</button>
</form>
<br><br>


<form action="/search">
<input type="text" name=description  placeholder="Enter your description">
<br>
<button type="submit">Search</button>
</form>

</body>
</html>