
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp">
	<jsp:param name="currentPage" value="recipeList" />
</jsp:include>

	<div>
	
	<img id="details-image" src="img/recipe${recipe.recipeId}.jpg" ></div>
	
	<div class = "details-body">
	
	<p id="title">${recipe.name}</p>
	<p>${recipe.recipeType}</p>
	<p><strong>Cook Time </strong>${recipe.cookTimeInMinutes} minutes</p>
	<p>${recipe.description}</p>
	<p class="label">Ingredients</p>
	
	<c:forEach var="ingredient" items="${recipe.ingredients}">
		<ul>
			<li>${ingredient.quantity} ${ingredient.name}</li>
		</ul>
	</c:forEach>
	<hr></hr>
	<p class="label">Preparation</p>
	<ol>
	<c:forEach var="prep" items="${recipe.preparationSteps}">
		
			<li>${prep}</li>
		
	</c:forEach>
	</ol>
	</div>


<jsp:include page="footer.jsp" />