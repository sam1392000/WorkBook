<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
 	<script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="794853829820-88a6t0vvn6eacm1j3v9f82g9ko384l9q.apps.googleusercontent.com">
	 <style>
        .signup__page {
            display: flex;
            flex-direction: row;
            background-color: #eaf0f0;
        }

        .Signup__img {
            width: 60%;
        }

        .Signup__form {
            display: flex;
            flex-direction: column;
            padding-top: 150px;
            margin-right: 50px;
            width: 30%;

        }

        .input_box {
            height: 50px;
            margin-bottom: 30px;
            border-radius: 15px;
            background-color: #F5F5F5;
            border: none
        }

        p {
            padding-left: 30%;
            margin-top: -20px;
        }

        .btn {
            height: 50px;
        }

        .signin_btn {
            height: 50px;
            margin-bottom: 30px;
            background-color: #512DA8;
            border-radius: 15px;
            color: aliceblue;
            z-index: 100px;

        }
    </style>

</head>
<body>
<form action="Signin_controller.jsp" method="post">

	<div class="signup__page">
        <div class="Signup__img">

        </div>
        <div class="Signup__form">
            Email: <input type="email" name="email" placeholder="       Enter your Email..." class="input_box" />
            Password: <input type="password" name="password" placeholder="      Enter your password..."
                class="input_box" />
            <input type="submit" value="Signin" class="signin_btn" />
            
            <p>New User? <a href="http://localhost:8080/Boothaton2/Manual_Signup.jsp">Sign up</a></p>
            <button><div class="g-signin2 btn" data-onsuccess="onSignIn" id="myP"></div></button>
        </div>
    </div>
    </form>
     <script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var name=profile.getName();
      var email=profile.getEmail();
      var id = profile.getId();
      //document.getElementById("name").innerHTML = name;
      //document.getElementById("email").innerHTML = email;
      //document.getElementById("id").innerHTML = id;
      window.location.href = "http://localhost:8080/Boothaton2/afterlogin.jsp?email="+email+"&name="+name+"&id="+id;
   }
  </script>
</body>
</html>













