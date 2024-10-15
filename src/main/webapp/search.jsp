<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Expense</title>
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

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            h1 {
                font-size: 1.8em; /* Adjust heading size for medium devices */
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
<h1>Search Expense</h1>

<table>
    <thead>
        <tr>
            <th>Id</th>
            <th>Description</th>
            <th>Amount</th>
            <th>Date</th>
        </tr>
    </thead>
    <tbody>
        <d:forEach var="x" items="${data}">
            <tr>
                <td data-label="Id">${x.id}</td>
                <td data-label="Description">${x.description}</td>
                <td data-label="Amount">${x.amount}</td>
                <td data-label="Date">${x.date}</td>
            </tr>    
        </d:forEach>
        <tr>
            <td colspan="2" style="text-align: right; font-weight: bold;">Total:</td>
            <td>
                <d:forEach var="x" items="${data}">
                    <d:set var="total" value="${total + x.amount}" />
                </d:forEach>
                <d:if test="${not empty total}">
                    ${total}
                </d:if>
            </td>
            <td></td>
        </tr>
    </tbody>
</table>
</body>
</html>
