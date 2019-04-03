<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>HS Code Information</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>

<!-- Include Header.jsp -->
<div id="header">
	<%@ include file="Header.jsp" %>
</div>

<!-- Create Screen to Edit Record -->
<div class ="container">
<div class="panel-group">
     <form action="${pageContext.request.contextPath}/main" method="get">
     	<div class="panel-default">
     	<div class="panel-body">
     		<!-- Firm Code  -->
     		<div class ="col-sm-4">
     			<label for="firm">Firm Code:</label>
     			<input class="form-control" id="hsFirm" disabled="true" type="text" value="${hsRec.hsFirm}">
     		</div>	
 			<!-- Customer Code  -->
 			<div class ="col-sm-4">
 				<label for="cust">Customer Code:</label>
     			<input class="form-control" id="custCode" disabled="true" type="text" value="${hsRec.hsCust}">
     		</div>
     		<!-- Part Number -->
     		<div class ="col-sm-4">
     			<label for="partNum">Part Number:</label>
     			<input class="form-control" id="partNum" disabled="true" type="text" value="${hsRec.hsPart}">   
     		</div>  			
     	</div>
  	 	</div>
  	 	<div class="panel-default">
     	<div class="panel-body">
     		<!-- Murata Type Number  -->
     		<div class ="col-sm-4">
     			<label for="mura">Murata Type:</label>
     			<input class="form-control" id="murataType" disabled="true" type="text" value="${hsRec.hsMura}">
     		</div>	
 			<!-- Murata Type without plus  -->
 			<div class ="col-sm-4">
 				<label for="mura2">Murata Type without Plus:</label>
     			<input class="form-control" id="murataWithoutPlus" disabled="true" type="text" value="${hsRec.hsAmur}">
     		</div>
     		<!-- PPT Code -->
     		<div class ="col-sm-4">
     			<label for="pptc">PPT Code:</label>
     			<input class="form-control" id="pptCode" disabled="true" type="text" value="${hsRec.hsPptc}">   
     		</div>  			
     	</div>
  	 	</div>
  	 	<div class="panel-default">
     	<div class="panel-body">
     		<!-- H40 Code  -->
     		<div class ="col-sm-4">
     			<label for="h40c">H40 Code:</label>
     			<input class="form-control" id="h40Code" disabled="true" type="text" value="${hsRec.hsH40c}">
     		</div>	
 			<!-- HS Code  -->
 			<div class ="col-sm-4">
 				<label for="hsCode">HS Code:</label>
     			<input class="form-control" id="hsCode" name="hsCode" type="text" value="${hsRec.hsCode}">
     		</div>
     		<!-- HS Duty -->
     		<div class ="col-sm-4">
     			<label for="duty">Duty:</label>
     			<input class="form-control" name = "duty" id="duty" type="text" value="${hsRec.hsDuty}">   
     		</div>  			
     	</div>
  	 	</div>
  	 	<div class="panel-default">
     	<div class="panel-body">
     		<!-- Tariff Description (English) -->
     		<div class ="col-sm-4">
     			<label for="tariffDescEnglish">Tariff Description (E):</label>
     			<input class="form-control" id="tariffDescEnglish" name="tariffDescEnglish" type="text" value="${hsRec.hsEProdName}">
     		</div>	
 			<!-- Tariff Description (Local) -->
 			<div class ="col-sm-4">
 				<label for="tariffDescLocal">Tariff Description (L):</label>
     			<input class="form-control" id="tariffDescLocal" name="tariffDescLocal" type="text" value="${hsRec.hsLProdName}">
     		</div>
     		<!-- Custom Judgement -->
     		<div class ="col-sm-4">
     			<label for="cusJudge">Custom Judgement:</label>
     			<input class="form-control" name = "cusJudge" id="cusJudge" type="text" value="${hsRec.hsCusJudge}">   
     		</div>  			
     	</div>
  	 	</div>
  	 	<div class="panel-default">
  		<div class="panel-body">	
  			<!-- Submit Button -->
  			<div class ="col-sm-4">  				
  				<button type="submit" class="btn btn-primary"> Update </button>
				<button type="button" class="btn btn-info" name="cancel" onclick="display()">Cancel</button>
				<button type="button" class="btn btn-info" name="back" onclick="window.history.go(-1); return false;">Back to Main Page</button>
  			</div>
 	 	</div>
  		</div>
  	 </form>
</div>
</div> 

<script type="text/javascript">
		function display(){		
			var pageUrl = window.location.protocol + '//' + window.location.host +
				'${pageContext.request.contextPath}/main?action=editRec&hsKey1=${hsRec.hsFirm}' + 
				'&hsKey2=' + encodeURIComponent('${hsRec.hsCust}') +
				'&hsKey3=' + encodeURIComponent('${hsRec.hsPart}') +
				'&hsKey4=' + encodeURIComponent('${hsRec.hsMura}') +
				'&hsKey5=${hsRec.hsPptc}' +
				'&hsKey6=${hsRec.hsH40c}' +
				'&hsKey7=${hsRec.hsCode}';				
			window.location.href = pageUrl;
			alert(pageUrl);
		}
</script>

</body>
</html>