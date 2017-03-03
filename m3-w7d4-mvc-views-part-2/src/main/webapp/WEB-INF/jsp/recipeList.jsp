<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp">
	<jsp:param name="currentPage" value="recipeList" />
</jsp:include>

<p id="title">Recipes</p>
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
			<c:url var="detailsURL" value= "/recipeDetails">
				<c:param name="recipeId" value="${recipe.recipeId}" />
			</c:url>
			<td><a class="recipe" href="${detailsURL}">${recipe.name}</a></td>
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
			<td>${recipe.cookTimeInMinutes}min</td>
		</c:forEach>
	</tr>
	<tr>
		<td class="firstCol">Ingredients</td>
		<c:forEach var="recipe" items="${recipes}">
			<td>${recipe.ingredients.size()}ingredients</td>
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
<jsp:include page="footer.jsp" />