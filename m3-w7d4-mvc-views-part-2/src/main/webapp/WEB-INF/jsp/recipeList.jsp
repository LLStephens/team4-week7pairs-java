<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Recipe List View</title>
<link rel="stylesheet" href="css/site.css" />
</head>
<body>
	<header>
		<h1>MVC Exercises - Views Part 2: Models</h1>
	</header>
	<nav>
		<ul>
			<li><a href="#">Tile Layout</a></li>
			<li><a href="#">Table Layout</a></li>
		</ul>

	</nav>
	<section id="main-content">
		
		<p id = "title">Recipes</p>
		<table>
		<tr>
			<td></td>
				<c:forEach var="recipe" items="${recipes}">
					<c:choose>
						<c:when test="${recipe.recipeId == 0}">
							<td><img src="img/recipe0.jpg" height="100" width="150"></td>
						</c:when>
						<c:when test="${recipe.recipeId == 1}">
							<td><img src="img/recipe1.jpg" height="100" width="150"></td>
						</c:when>
						<c:when test="${recipe.recipeId == 2}">
							<td><img src="img/recipe2.jpg" height="100" width="150"></td>
						</c:when>
					</c:choose>
				</c:forEach>
			</tr>
			<tr>
				<td class="firstCol">Name</td>
				<c:forEach var="recipe" items="${recipes}">
					<td>${recipe.name}</td>
				</c:forEach>
			</tr>
			<tr>
				<td class="firstCol">Type</td>
				<c:forEach var="recipe" items="${recipes}">
					<td>${recipe.recipeType}</td>
				</c:forEach>
			</tr>
			<tr>
				<td class="firstCol">Cook Time</td>
				<c:forEach var="recipe" items="${recipes}">
					<td>${recipe.cookTimeInMinutes} min</td>
				</c:forEach>
			</tr>
			<tr>
				<td class="firstCol">Ingredients</td>
				<c:forEach var="recipe" items="${recipes}">
					<td>${recipe.ingredients.size()} ingredients</td>
				</c:forEach>
			</tr>
			<tr>
				<td class="firstCol">Rating</td>
				<c:forEach var="recipe" items="${recipes}">
					<c:choose>
						<c:when test="${recipe.averageRating >4}">
							<td><img src="img/5-star.png" height="20" width="92"></td>
						</c:when>
						<c:when test="${recipe.averageRating > 3}">
							<td><img src="img/4-star.png" height="20" width="92"></td>
						</c:when>
						<c:when test="${recipe.averageRating > 2}">
							<td><img src="img/3-star.png" height="20" width="92"></td>
						</c:when>
						<c:when test="${recipe.averageRating > 1}">
							<td><img src="img/2-star.png" height="20" width="92"></td>
						</c:when>
						<c:otherwise>
							<td><img src="img/1-star.png" height="20" width="92"></td>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		</tr>
		</table>
	</section>
</body>
</html>