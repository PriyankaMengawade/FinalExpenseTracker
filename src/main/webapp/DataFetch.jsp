<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Data</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('your-background-image.jpg'); /* Set your background image */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column; /* Arrange content vertically */
            align-items: center;
            color: #fff;
        }

        h1 {
            position: absolute; /* Allows precise positioning */
            top: 5px; /* Adjust to move vertically */
            left: 50%; /* Start positioning from the center horizontally */
            transform: translateX(-50%); /* Center align horizontally */
            color: #fff;
            font-size: 36px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); /* Added shadow for better readability */
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            padding: 10px 20px;
            border-radius: 10px;
        }

        table {
            width: 85%;
            margin: 80px auto; /* Adjust margin to account for heading position */
            border-collapse: collapse;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        th {
            background-color: #343a40;
            color: #fff;
            font-weight: bold;
        }

        td {
            background-color: #f8f9fa;
            color: #333;
        }

        td a {
            color: #28a745;
            text-decoration: none;
            font-weight: bold;
        }

        td a:hover {
            text-decoration: underline;
            color: #218838;
        }

        tr:nth-child(even) {
            background-color: #e9ecef;
        }

        tr:hover {
            background-color: #dee2e6;
        }

        .total-amount {
            font-weight: bold;
            font-size: 18px;
            background-color: #343a40;
            color: #fff;
            text-align: right;
        }

        .total-amount td {
            text-align: left;
        }

        /* Responsive design */
        @media screen and (max-width: 768px) {
            table {
                width: 95%;
            }

            th, td {
                padding: 10px;
                font-size: 14px;
            }

            h1 {
                font-size: 28px;
            }
        }
    </style>
</head>
<body>

<h1>All Data</h1>

<table>
    <thead>
        <tr>
            <th>Id</th>
            <th>Description</th>
            <th>Amount</th>
            <th>Date</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <d:set var="totalAmount" value="0" />

        <d:forEach var="a" items="${data}">
            <tr>
                <td data-label="Id">${a.id}</td>
                <td data-label="Description">${a.description}</td>
                <td data-label="Amount">${a.amount}</td>
                <td data-label="Date">${a.date}</td>
                <td data-label="Update"><a href="<d:url value='/${a.id}'/>">Update</a></td>
                <td data-label="Delete"><a href="<d:url value='Delete/${a.id}'/>">Delete</a></td>
            </tr>
            <d:set var="totalAmount" value="${totalAmount + a.amount}" />
        </d:forEach>

        <tr class="total-amount">
            <td colspan="2" style="text-align: right;">Total Amount:</td>
            <td colspan="4" style="text-align: left;">${totalAmount}</td>
        </tr>
    </tbody>
</table>

</body>
</html>
