<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Recipe Table View</title>
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

		<p id="title">Recipes</p>

		<c:forEach var="recipe" items="${recipes}">
			<div id="first">
				<c:choose>
					<c:when test="${recipe.recipeId == 0}">
						<img class="image" src="img/recipe0.jpg" height="150" width="200">
					</c:when>
					<c:when test="${recipe.recipeId == 1}">
						<img class="image" src="img/recipe1.jpg" height="150" width="200">
					</c:when>
					<c:when test="${recipe.recipeId == 2}">
						<img class="image" src="img/recipe2.jpg" height="150" width="200">
					</c:when>
				</c:choose>
				<p>${recipe.name}</p>
				<p class="bottomright">${recipe.ingredients.size()} ingredients</p>
				<c:choose>
					<c:when test="${recipe.averageRating >4}">
						<img class="bottomleft" src="img/5-star.png" height="15" width="72">
					</c:when>
					<c:when test="${recipe.averageRating > 3}">
						<img class="bottomleft" src="img/4-star.png" height="15" width="72">
					</c:when>
					<c:when test="${recipe.averageRating > 2}">
						<img class="bottomleft" src="img/3-star.png" height="15" width="72">
					</c:when>
					<c:when test="${recipe.averageRating > 1}">
						<img sclass="bottomleft" rc="img/2-star.png" height="15" width="72">
					</c:when>
					<c:otherwise>
						<img class="bottomleft" src="img/1-star.png" height="15" width="72">
					</c:otherwise>
				</c:choose>
			</div>
		</c:forEach>
	</section>
</body>
</html>