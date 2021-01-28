<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<link
			rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous"
		/>
<meta charset="ISO-8859-1">
<style>
	.navbar{
		display:flex;
		flex-direction: row;
		justify-content: space-between;
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
	.dis {
            display: flex;
            flex-direction: column;
            justify-content: space-between;

            height: 800px;
            margin-top: 30px;
        }

        input {
            height: 40px;

        }

        .left {
            background-color: #3F51B5;
        }

        .text {
            padding-left: 150px;
        }

        span {
            font-style: italic;
            font-weight: bolder;
        }
</style>
<title>Insert title here</title>
</head>
<body>
 <form action="Manual_Signup_controller.jsp" method="post">
   <div class="row">
        <div class="col-md-5 left">

        </div>
        <div class="col-md-7 dis">
            <h1 style="color: #0288D1;" class="text">REGISTER FORM</h1>
            
            <span>Name</span><input type="text" placeholder="Name" name="name" />
            <span>Email</span> <input type="email" placeholder="Email" name="email"  />
            <span>Mobile Number</span> <input type="text" placeholder="Mobile number" name="number" />
             <span>Date of birth</span><input type="text" name="date" />
            <span>Company Name</span><input type="text" placeholder="Company Name" name="Company_Name" />
            <span>Company description</span> <textarea rows="3" placeholder="Company_Description" name="Company_Description"></textarea>
            <span>Company links</span><input type="text" placeholder="Enter your company links" name="company_link" />
            <div class="form-group">
                <label for="inputAddress">Address</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="Enter your Address...." name="address"/>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">City</label>
                    <input type="text" class="form-control" id="inputCity" name="city"/>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCity">State</label>
                    <input type="text" class="form-control" id="inputCity" name="state"/>
                </div>
            </div>
            <input type="submit" value="Submit" style="background-color:#3F51B5 ; color: white;" />
            
        </div>
    </div>
    </form>
</body>
</html>