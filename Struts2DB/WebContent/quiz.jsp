
<html>  
<body>  
<form  accept-charset="UTF-8" method="post" name="search-theme-form" id="search-theme-form">
<h2 style="color:green">Create a checkbox and get its value</h2>  
<h3> Are you a web developer? </h3>  
Yes: <input type="checkbox" id="myCheck1" value="Yes, I'm a web developer">  
No: <input type="checkbox" id="myCheck2" value="No, I'm not a web developer">  
<br> <br>  
<button onclick="checkCheckbox()">Submit</button> <br>  
  
<h4 style="color:green" id="result"></h3>   
<h4 style="color:red" id="error"></h3>   
  
<script>  
function checkCheckbox() {  
  var yes = document.getElementById("myCheck1");  
  var no = document.getElementById("myCheck2");  
  if (yes.checked == true && no.checked == true){  
    return document.getElementById("error").innerHTML = "Please mark only one checkbox either Yes or No";  
  }  
  else if (yes.checked == true){  
   
    request.getRequestDispatcher("signupSuccess.jsp").forward(request, response); // Submitting form
  else if (no.checked == true){  
    var n = document.getElementById("myCheck2").value;  
    return document.getElementById("result").innerHTML = n;  
  }  
  else {  
    return document.getElementById("error").innerHTML = "*Please mark any of checkbox";  
  }  
}  
</script>  
</form>
  
</body>  
</html> 
</script> 