

<jsp:include page="header.jsp"></jsp:include>

<p>
	<strong>${movie.name} (${movie.yearReleased})</strong>
</p>

<p>
	<strong>Runtime:</strong> ${movie.runningTime} minutes
</p>

<p>${movie.description}</p>

<p>
	<strong>Cast:</strong>
</p>

<c:forEach var="actor" items="${movie.cast }">
	<p>${actor}</p>
</c:forEach>

<p>
	<strong>Show Times:</strong>
</p>
<table>
	<tr>
		<th>Start Time</th>
		<th>Theater</th>
	</tr>

	<c:forEach var="time" items="${movie.showTimes }">
		<tr>
			<td>${time.startTime }</td>
			<td>${time.theatre }</td>
		</tr>
	</c:forEach>
</table>

<p>
	<a href="movieList">Back</a>
</p>

<jsp:include page="footer.jsp"></jsp:include>

