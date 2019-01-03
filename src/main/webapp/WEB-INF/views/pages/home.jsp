<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>

  <div class="container">
		
		<div class="col-lg-6 m-auto d-block">
			
			<form action="addform.html" method="post" onsubmit="return validation()" class="bg-light">
				
				<div class="form-group">
					<label for="user" class="font-weight-bold"> Username: </label>
					<input type="text" name="user" class="form-control" id="user" autocomplete="off">
					<span id="username" class="text-danger font-weight-bold"> </span>
				</div>


				<div class="form-group">
					<label class="font-weight-bold"> Mobile Number: </label>
					<input type="text" name="mobile" class="form-control" id="mobileNumber" autocomplete="off">
					<span id="mobileno" class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> Email: </label>
					<input type="text" name="email" class="form-control" id="emails" autocomplete="off">
					<span id="emailids" class="text-danger font-weight-bold"> </span>
				</div>
				
				<div class="form-group">
					<label class="font-weight-bold"> Domain: </label>
					<input type="text" name="domain" class="form-control" id="domain" autocomplete="off">
					<span id="domainname" class="text-danger font-weight-bold"> </span>
				</div>
	
				<input type="submit" name="submit" value="submit" class="btn btn-success" 	autocomplete="off">


			</form><br><br>


		</div>
	</div>
	
	<c:if test="${not empty FORMLIST}">
			<div class="col-lg-12 grid-margin stretch-card" id="myLink">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title" id="target">Display Table</h4>

						<div class="table-responsive">
							<table class="table table-dark">
								<thead>
									<tr>
										<th>ID</th>
										<th>Full Name</th>
										<th>Phone No</th>
										<th>Email ID</th>
										<th>Domain</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="s" items="${FORMLIST}">
										<tr>
											<td><c:out value="${s.id}" /></td>
											<td><c:out value="${s.name}" /></td>
											<td><c:out value="${s.phnno}" /></td>
											<td><c:out value="${s.email}" /></td>
											<td><c:out value="${s.domain}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			</c:if>



	<script type="text/javascript">
		

		function validation(){

			var user = document.getElementById('user').value;
			var mobileNumber = document.getElementById('mobileNumber').value;
			var emails = document.getElementById('emails').value;
			var domain = document.getElementById('domain').value;
	


			if(user == ""){
				document.getElementById('username').innerHTML =" ** Please fill the username field";
				return false;
			}
			if((user.length <= 2) || (user.length > 20)) {
				document.getElementById('username').innerHTML =" ** Username lenght must be between 2 and 20";
				return false;	
			}
			if(!isNaN(user)){
				document.getElementById('username').innerHTML =" ** only characters are allowed";
				return false;
			}


			if(mobileNumber == ""){
				document.getElementById('mobileno').innerHTML =" ** Please fill the mobile NUmber field";
				return false;
			}
			if(isNaN(mobileNumber)){
				document.getElementById('mobileno').innerHTML =" ** user must write digits only not characters";
				return false;
			}
			if(mobileNumber.length!=10){
				document.getElementById('mobileno').innerHTML =" ** Mobile Number must be 10 digits only";
				return false;
			}



			if(emails == ""){
				document.getElementById('emailids').innerHTML =" ** Please fill the email idx` field";
				return false;
			}
			if(emails.indexOf('@') <= 0 ){
				document.getElementById('emailids').innerHTML =" ** @ Invalid Position";
				return false;
			}

			if((emails.charAt(emails.length-4)!='.') && (emails.charAt(emails.length-3)!='.')){
				document.getElementById('emailids').innerHTML =" ** . Invalid Position";
				return false;
			}
			
			
			if(domain == ""){
				document.getElementById('domainname').innerHTML =" ** Please fill the username field";
				return false;
			}
			if((domain.length <= 2) || (domain.length > 20)) {
				document.getElementById('domainname').innerHTML =" ** Username lenght must be between 2 and 20";
				return false;	
			}
			if(!isNaN(domain)){
				document.getElementById('domainname').innerHTML =" ** only characters are allowed";
				return false;
			}
		}

	</script>

</body>
</html>