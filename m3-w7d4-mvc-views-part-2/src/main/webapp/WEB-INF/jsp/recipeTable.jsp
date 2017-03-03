<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" >
	<jsp:param name = "currentPage" value="recipeTable" />
</jsp:include>


		<p id="title">Recipes</p>

		<c:forEach var="recipe" items="${recipes}">
			<div id="first">
				<c:choose>
					<c:when test="${recipe.recipeId == 0}">
						<img class="image" src="img/recipe0.jpg">
					</c:when>
					<c:when test="${recipe.recipeId == 1}">
						<img class="image" src="img/recipe1.jpg">
					</c:when>
					<c:when test="${recipe.recipeId == 2}">
						<img class="image" src="img/recipe2.jpg">
					</c:when>
				</c:choose>
				<c:url var="detailsURL" value="/recipeDetails">
					<c:param name="recipeId" value="${recipe.recipeId}" />
				</c:url>
				
				<p><a class="recipe" href="${detailsURL}">${recipe.name}</a></p>
				<div class = "bottom-div">
				<span class="bottomright">${recipe.ingredients.size()} ingredients</span>
				
				<c:choose>
					<c:when test="${recipe.averageRating >4}">
						<img class="bottomleft" src="img/5-star.png">
					</c:when>
					<c:when test="${recipe.averageRating > 3}">
						<img class="bottomleft" src="img/4-star.png">
					</c:when>
					<c:when test="${recipe.averageRating > 2}">
						<img class="bottomleft" src="img/3-star.png">
					</c:when>
					<c:when test="${recipe.averageRating > 1}">
						<img class="bottomleft" src="img/2-star.png">
					</c:when>
					<c:otherwise>
						<img class="bottomleft" src="img/1-star.png">
					</c:otherwise>
				</c:choose>
				</div>
			</div>
		</c:forEach>
<jsp:include page="footer.jsp" />