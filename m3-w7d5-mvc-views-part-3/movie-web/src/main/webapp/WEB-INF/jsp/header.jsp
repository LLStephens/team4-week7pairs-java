<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Page Title</title>
<link rel="stylesheet" href="site.css" />
</head>
<body>
	<header>
		<h1>Movie Detail</h1>
	</header>
	<nav>
		<ul>
			<c:url var="movieListHref" value="movieList" />
			<li><a href="movieList">Movie List</a></li>
			<li><a href="${movieListHref}">Nav Link 2</a></li>
			<li><a href="${movieListHref}">Nav Link 3</a></li>
			<li><a href="${movieListHref}">Nav Link 4</a></li>
		</ul>

	</nav>
	<section id="main-content">