<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Data</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 2em;
            color: #4CAF50;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fff;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            h1 {
                font-size: 1.8em; /* Slightly smaller heading */
            }

            table {
                font-size: 14px; /* Adjust table font size */
            }

            th, td {
                padding: 10px; /* Adjust padding */
            }
        }

        @media screen and (max-width: 480px) {
            h1 {
                font-size: 1.5em; /* Smaller heading for mobile */
            }

            table {
                font-size: 12px; /* Smaller table font */
            }

            th, td {
                padding: 8px; /* Smaller padding for mobile */
            }

            th, td {
                display: block; /* Stack table elements on small screens */
                text-align: left; /* Align text to the left */
                border: none; /* Remove border on small screens */
                position: relative; /* Positioning for pseudo-elements */
            }

            th {
                font-size: 14px; /* Slightly larger heading font for mobile */
            }

            td::before {
                content: attr(data-label); /* Use data-label for headers */
                font-weight: bold;
                position: absolute;
                left: 10px;
                top: 8px; /* Adjust label position */
            }
        }

        @media screen and (max-width: 360px) {
            th, td {
                padding: 6px;
                font-size: 10px;
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

        <tr>
            <td colspan="2" style="text-align: right; font-weight: bold;">Total Amount:</td>
            <td colspan="4" style="text-align: left; font-weight: bold;">${totalAmount}</td>
        </tr>
    </tbody>
</table>

</body>
</html>
