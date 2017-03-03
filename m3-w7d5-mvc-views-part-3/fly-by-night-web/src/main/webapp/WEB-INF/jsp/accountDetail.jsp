<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp"></jsp:include>

<p>
	<%-- Display details for account id ${param.accountId} here. Use the request
	scoped variable
	<code>account</code>
	. --%>
	${account.name}
</p>
<p>
	<strong>Balance </strong>${account.balance }</p>
<p>
	<strong>Account #</strong>${account.accountNumber}</p>
<p>
	<strong>Type </strong>${account.accountType }</p>
<p>Transaction History</p>


<table>
	<tr>
		<td>Date</td>
		<td>Amount</td>
		<td>Description</td>
	</tr>
	<c:forEach var="transaction" items="${account.transactionHistory}">
		<tr>
			<td>${transaction.transactionDate}</td>
			<td>${transaction.amount}</td>
			<td>${transaction.description}</td>
		</tr>
	</c:forEach>

</table>
<p> <a href="accountList">Back</a></p>
<jsp:include page="footer.jsp"></jsp:include>