<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Author : Khushi -->

<html>
<head>
    <title>Book List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f4f8;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333333;
            margin-top: 30px;
        }

        .container {
            width: 80%;
            margin: 30px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        a.add-btn {
            display: inline-block;
            text-decoration: none;
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 15px;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        a.add-btn:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        footer {
            text-align: center;
            padding: 10px;
            margin-top: 20px;
            color: #555555;
            font-size: 14px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Available Books</h2>
        <a href="${pageContext.request.contextPath}/books/add" class="add-btn">Add New Book</a>

        <table>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price (₹)</th>
            </tr>

            <c:forEach var="b" items="${books}">
                <tr>
                    <td>${b.bookId}</td>
                    <td>${b.title}</td>
                    <td>${b.author}</td>
                    <td>${b.price}</td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <footer>
        <p>Developed by <b>Khushi</b> | © 2025 BookStore App</p>
    </footer>
</body>
</html>
