<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Age Calculator</title>
<link rel="stylesheet" type="text/css" href="css/AgeCalculator.css">
</head>
<body>
 <h1>Age Calculator</h1>
 <div class="main"><br>
   <input type="date" style="width:280px; height:35px; font-size:20px;" id="date">
 </div><br><br>
  <button class="btn" onclick="calculateAge()"><b>Calculator</b></button><br>
  
  <p id="result"></p>

    <center><div class="print">
       <center><p><b>Your Age is</b></p></center>

       <div class="m1">
      <div class="col-sm-4">
        <div class="m"><center><p id="result1"></p></center></div>
      </div>

      <div class="col-sm-4">
        <div class="m"><center><p id="result2"></p></center></div>
      </div>

      <div class="col-sm-4">
        <div class="m"><center><p id="result3"></p></center></div>
      </div>
      </div>
    </div>
    </center>
  <script>
    
  let userInput = document.getElementById("date");
  userInput.max = new Date().toISOString().split("T")[0];
  let result = document.getElementById("result");

  let result1 = document.getElementById("result1");
  let result2 = document.getElementById("result2");
  let result3 = document.getElementById("result3");
  
  function calculateAge()
  {
	  let birthDate=new Date(userInput.value);
	  
	  let d1=birthDate.getDate();
	  let m1=birthDate.getMonth()+1;
	  let y1=birthDate.getFullYear();
	  
	  let today=new Date();
	  
	  let d2=today.getDate();
	  let m2=today.getMonth()+1;
	  let y2=today.getFullYear();
	  
	  let d3,m3,y3;
	  
	  y3=y2-y1;
	  
	  if(m2 >=m1)
	  {
		  m3=m2-m1;
	  }
	  else
		  {
		    y3--;
		    m3=12+m2-m1;
		  }
	  if(d2 >=d1)
		  {
		   d3=d2-d1;
		  }
	  else
		  {
		    m3--;
		    d3 = getDaysInMonth(y1, m1)+ d2-d1;
		  }
	  if(m3 < 0)
		  {
		   m3 = 11;
		   y3--;
		  }
	  
	  result.innerHTML ="You are"+" "+y3+" "+"years,"+" "+m3+" "+"months and"+" "+d3+" "+"days old";

    result1.innerHTML ="Years"+y3;
    result2.innerHTML ="Months"+m3;
    result3.innerHTML ="Days"+d3;
	  
  }
  
  function getDaysInMonth(year, month)
  {
	  return new Date(year, month, 0).getDate();
  }
  </script>
  
</body>
</html>