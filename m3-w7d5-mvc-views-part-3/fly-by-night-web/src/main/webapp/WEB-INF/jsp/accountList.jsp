<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="header.jsp"></jsp:include>

<p>List of all accounts:</p>

<table>

	<tr>
		<td></td>
		<td>Nickname</td>
		<td>Account Number</td>
		<td>Balance</td>
	</tr>
	<c:forEach var="account" items="${accounts}">
		<tr>
			<c:url var="detailsURL" value="/accountDetail">
				<c:param name="accountId" value="${account.id}" />
			</c:url>
			<td><a class="details" href="${detailsURL}">View</a></td>
			<td>${account.name}</td>
			<td>${account.accountNumber}</td>
			<td>${account.balance}</td>
		</tr>
	</c:forEach>
</table>
<%-- 	<code>accounts</code>
 --%>
<jsp:include page="footer.jsp"></jsp:include>