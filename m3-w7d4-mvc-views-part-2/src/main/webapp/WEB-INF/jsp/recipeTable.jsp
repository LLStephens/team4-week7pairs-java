<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" >
	<jsp:param name = "currentPage" value="recipeTable" />
</jsp:include>


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
				<c:url var="detailsURL" value="/recipeDetails" />
				<p><a class="recipe" href="${detailsURL}">${recipe.name}</a></p>
				<div class = "bottom-div">
				<span class="bottomright">${recipe.ingredients.size()} ingredients</span>
				
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
			</div>
		</c:forEach>
<jsp:include page="footer.jsp" />