<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Author : Khushi -->

<html>
<head>
    <title>Add Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: 60px auto;
            background-color: #ffffff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #333333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555555;
        }

        input[type="text"],
        input[type="number"] {
            width: 95%;
            padding: 8px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }

        footer {
            text-align: center;
            margin-top: 30px;
            color: #555555;
            font-size: 13px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Add New Book</h2>

        <form:form modelAttribute="book" method="post" action="${pageContext.request.contextPath}/books/add">
            <label for="title">Title:</label>
            <form:input path="title" id="title" />

            <label for="author">Author:</label>
            <form:input path="author" id="author" />

            <label for="price">Price:</label>
            <form:input path="price" id="price" />

            <input type="submit" value="Save" />
        </form:form>

        <a href="${pageContext.request.contextPath}/books/list">View All Books</a>
    </div>

    <footer>
        <p>Developed by <b>Khushi</b> | © 2025 BookStore App</p>
    </footer>
</body>
</html>
