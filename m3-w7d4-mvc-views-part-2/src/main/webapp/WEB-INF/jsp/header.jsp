<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width" />
<c:set var = "title" value = "${param.title}" />
<c:if test="${empty title }" >
	<c:set var = "title" value ="Recipe Page" />
</c:if>

<title>${title}</title>

<link rel="stylesheet" href="css/site.css" />
</head>
<body>
	<header>
		<h1>MVC Exercises - Views Part 2: Models</h1>
	</header>
	<nav>
		<ul>
			<c:set var="selected" value = "" />
			<c:if test = "${param.currentPage = 'recipeList'}">
				<c:set var = "selected" value = "selected" />
			</c:if>
			
			<c:url var = "listUrl" value = "/recipeList" />
			<li><a class = "${selected}" href="${listUrl}">Recipe List</a></li>
			
			<c:url var = "tableUrl"value= "recipeTable" />
			<li><a class="${selected}" href="${tableUrl}">Recipe Table</a></li>
			
		</ul>

	</nav>
	<section id="main-content">