<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script type="text/javascript">

  function test(str)
  {
   var ob=new XMLHttpRequest();

   ob.onreadystatechange=function ss()
   {
    if(ob.readyState==4)
    {
        document.getElementById("s1").innerHTML=ob.responseText;
    }
   }

   ob.open("GET","AutosearchControler.jsp?msg="+str,true);
   ob.send();
  }

 </script>

</head>
<body>
	<form name="f1"  action="">
    Username :<input type="text" name="msg" onkeyup="test(this.value);" />
              <input type="submit" value="submit" />
  </form>

     <div id="s1">

     </div>
	
</body>
</html>