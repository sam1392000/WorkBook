<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Post</title>
<link
			rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous"
		/>
<style>
	.navbar {
				display: flex;
				flex-direction: row;
				justify-content: space-around;
				background-color: blueviolet;
				align-items: center;
			}
			.navbar > button {
				height: 40px;
				width: 80px;
			}
			.input_form {
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.btn {
				background-color: green;
				color: aliceblue;
			}
			.name-info {
				background-color: lightgreen;
				height: 100px;
			}
			label{
			font-weight: bolder;
			font-style: italic;
			}
	
</style>
</head>
<body>
	<nav class="navbar">
			<h1>Workbook</h1>
			<h3>Requested Job</h3>
			<button>Profile</button>
		</nav>
		<div class="name-info">
			<h1>Hello Name ....</h1>
		</div>
		<div class="input_form">
			<form action="job_post_controller.jsp">
				<h1 class="mb-4">Job Information</h1>
				<div class="form-group">

					<label for="exampleInputEmail1">Job Name</label>
					<input
						type="text"
						class="form-control"
						id="exampleInputEmail1"
						aria-describedby="emailHelp"
						placeholder="Enter job..."
						name="job_name"
					/>
					<br><label>Job Type</label><br>
					<input type="radio" id="male" name="job_type" value="Technical">
					<label for="Technical">Technical</label><br>
					<input type="radio" id="female" name="job_type" value="Non-technical">
					<label for="Non-technical">Non-technical</label><br>
				</div>
				<div class="form-group">
					<label for="exampleFormControlTextarea1"
						>Example textarea</label
					>
					<textarea
						class="form-control"
						id="exampleFormControlTextarea1"
						rows="3"
						placeholder="Job description...."
						name="job_description"
					></textarea>
				</div>
				<hr />
				<h1 class="mb-4">Contact Information</h1>
				<div class="form-row contact">
					<div class="col">
						<label>Email</label>
						<input
							type="text"
							class="form-control"
							placeholder="Email"
							name="email"
						/>
					</div>
					<div class="col">
						<label>Contact Number</label>
						<input
							type="text"
							class="form-control"
							placeholder="Phone Number"
							name="number"
						/>
					</div>
				</div>
				<div class="form-group">
					<label for="inputAddress">Address</label>
					<input
						type="text"
						class="form-control"
						id="inputAddress"
						placeholder="Enter your Address...."
						name="address"
					/>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">City</label>
						<input
							type="text"
							class="form-control"
							id="inputCity"
							name="city"
						/>
					</div>
					<div class="form-group col-md-6">
						<label for="inputCity">State</label>
						<input
							type="text"
							class="form-control"
							id="inputCity"
							name="state"
						/>
					</div>
				</div>
				<hr />
				<h1 class="mb-4">Bidding Information</h1>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputCity">Bid Amount</label>
							<input
								type="number"
								class="form-control"
								id="inputCity"
								name="bid_amount"
							/>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputCity">No of days</label>
							<input
								type="number"
								class="form-control"
								id="inputCity"
								class="days"
								name="days"
							/>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputCity"
								>Number of people</label
							>
							<input
								type="number"
								class="form-control"
								id="inputCity"
								class="people"
								name="people"
							/>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="inputCity">Due Date</label>
							<input
								type="date"
								class="form-control"
								id="inputCity"
								name="date"
							/>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="form-group"></div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<input
								type="submit"
								class="form-control btn"
							/>
						</div>
					</div>
				</div>
			</form>
		</div>
	
</body>
</html>