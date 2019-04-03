<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>HS Code Information</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/datatables.css">
	</head>
	<body>
	<!-- Include Header.jsp -->
    <div id="header">
		<%@ include file="Header.jsp" %>
	</div>
		<div id="wrap">
			<div class="container">
				<table cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered">
					<thead>
						<tr>
							<th>Firm Code</th>  
          					<th>Customer</th>
           					<th>Part Number</th>
           					<th>Murata Type</th>
           					<th>Murata Type without +</th>
           					<th>PPT</th>
           					<th>H40 Code</th>
           					<th>HS Code</th>
           					<th>Duty</th>
           					<th>Tariff Description (English)</th>
           					<th>Tariff Description (Local)</th>
          					<th>Custom Judgement</th>
						</tr>
					</thead>
					<tbody>
						 <c:forEach var="hs" items="${hsArr}">
        					<tr class="${hs.hsCode} }">
           					<td>${hs.hsFirm }</td>
           					<td>${hs.hsCust }</td>
           					<td>${hs.hsPart }</td>
           					<td>${hs.hsMura }</td>
           					<td>${hs.hsAmur }</td>
           					<td>${hs.hsPptc }</td>
           					<td>${hs.hsH40c }</td>
           					<td>${hs.hsCode }</td>
           					<td>${hs.hsDuty }</td>
	       					<td>${hs.hsEProdName }</td>
	       					<td>${hs.hsLProdName }</td>
	       					<td>${hs.hsCusJudge }</td>        
        					</tr>
       					 </c:forEach>
					</tbody>
					
				</table>
			</div>
		</div>
		<!-- <script src="js/jquery.min.js"></script> -->
		<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/datatables.js"></script>
		<script type="text/javascript">
		$(document).ready(function() {
			$('.datatable').dataTable({
				"sPaginationType": "bs_full"
			});	
			$('.datatable').each(function(){
				var datatable = $(this);
				// SEARCH - Add the placeholder for Search and Turn this into in-line form control
				var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
				search_input.attr('placeholder', 'Search');
				search_input.addClass('form-control input-sm');
				// LENGTH - Inline-Form control
				var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
				length_sel.addClass('form-control input-sm');
			});
		});
		</script>
	</body>
</html>