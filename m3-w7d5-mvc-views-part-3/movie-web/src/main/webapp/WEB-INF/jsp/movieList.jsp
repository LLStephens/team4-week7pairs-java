<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp"></jsp:include>


<p>Local Movie Listing</p>

<table>
	<tr>
		<td></td>
		<td><strong>Movie</strong></td>
		<td><strong>Genre</strong></td>
		<td><strong>Run Time(min)</strong></td>

	</tr>

	<c:forEach var="movie" items="${movies}">
		<c:url var="movieURL" value="/movieDetail">
			<c:param name="movieId" value="${movie.id}" />
		</c:url>
		<tr>
			<td><a href="${movieURL}">View Times</a></td>
			<td>${movie.name} (${movie.yearReleased})</td>
			<td>${movie.genre}</td>
			<td>${movie.runningTime}</td>
		</tr>
	</c:forEach>


</table>

<jsp:include page="footer.jsp"></jsp:include>

