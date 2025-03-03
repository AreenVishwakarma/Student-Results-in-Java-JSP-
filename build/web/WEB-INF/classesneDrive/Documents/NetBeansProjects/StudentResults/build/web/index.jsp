<%-- 
    Document   : index
    Created on : 1 Mar 2025, 5:22:06 pm
    Author     : Areen Vishwakarma 
    Email      : areenwish.mum@gmail.com
    Contact    : 8452817040
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>   
        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
<!--        	<script language="javascript">
	function newwin()
	{
	if (self != top) 
	top.location.href="mbhsc2022.htm";
	}
	</script>

	<script language="JavaScript">

	
	function FrontPage_Form1_Validator(theForm)
	{

	 if (!theForm.mname.value.match(/^[a-zA-Z ]+$/) && theForm.mname.value !="")
			   {
					alert("Please Enter only alphabets in the \"Mother's Name\" field.");
					theForm.mname.focus(); 
					return (false);
			   }


	if (theForm.regno.value == "")
	{
	alert("Please enter a value for the \"Seat No\" field.");
	theForm.regno.focus();
	return (false);
	}

	if (theForm.regno.value.length < 7)
	{
	alert("Please Enter Valid Candidate Seat Number in the \"Seat No\" field.");
	theForm.regno.focus();
	return (false);
	}

	if (theForm.mname.value == "")
	{
	alert("Please enter a value for the \"Mother Name\" field.");
	theForm.mname.focus();
	return (false);
	}

	if (theForm.mname.value.length < 3)
	{
	alert("Please Enter minimum 3 characters in the \"Mother's Name\" field.");
	theForm.mname.focus();
	return (false);
	}


	var checkOK = "PNRMXVSTW";

	var checkStr = theForm.regno.value;
	checkStr=checkStr.toUpperCase();
	var firstChar=checkStr.charAt(0);
	var remaining=checkStr.substring(1,checkStr.length);  


	var allValid = true;
	var decPoints = 0;
	var allNum = "";
	for (i = 0;  i < remaining.length;  i++)
	{
	ch = checkStr.charAt(0);
	for (j = 0;  j < checkOK.length;  j++)
	  if (ch == checkOK.charAt(j))
		break;
	if (j == checkOK.length)
	{
	  allValid = false;
	  break;
	}
	// allNum += ch;
	}
	if (!allValid)
	{
	alert("Please enter valid characters in the \"Seat No.\" field.");
	theForm.regno.focus();
	return (false);
	}
	 
	if( isNaN(remaining)){
	alert("Please Enter Valid Candidate Seat Number"); 
	theForm.regno.focus();
	return false;
	}
	return (true);
	}
	//
	</script>
	<script src="chrome-extension://mooikfkahbdckldjjndioackbalphokd/assets/prompt.js"></script></head>-->

    </head>
    <body>
        <html lang="en"><head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>HSC Examination March- 2022 RESULT :: MAHARASHTRA STATE BOARD OF SECONDARY AND HIGHER SECONDARY EDUCATION, PUNE</title>
	<!-- Bootstrap core CSS -->



	<body onload="newwin()">

	<div class="container">
	  <div class="header">
		<div class="col-sm-2 hidden-xs"><img src="../img/mahastateedu.gif"></div>
		<div class="logo col-lg-10 col-md-10 col-sm-10"><h5>MAHARASHTRA STATE BOARD OF SECONDARY AND HIGHER SECONDARY EDUCATION, PUNE</h5> 
	  <h3>HSC Examination March- 2022 RESULT</h3>
	</div>
		<div class="btb col-sm-12 row"><a href="http://results.gov.in" target="_blank" class="hidden-xs"><img src="../img/icon01.gif"></a> 
		<p>Brought to you by: <a href="http://www.nic.in">NATIONAL INFORMATICS CENTRE</a></p>
		</div>
		
		<nav class="navbar navbar-default" role="navigation">
		  <div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topnavinner">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->

				<div id="topnav" class="col-sm-8 col-md-8">
				  <div class="collapse navbar-collapse" id="topnavinner">
					<ul class="nav navbar-nav" id="topnavul">
					  <li class=""><a href="../default.htm">Home</a></li>
					  <li class="dropdown active">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Results <b class="caret"></b></a>
						<ul class="dropdown-menu">
						 <!-- <li><a href="../sscmarch2022/sscmarch2022.htm">SSC Examination Result March 2022</a></li> -->
						  <li><a href="mbhsc2022.htm">HSC Examination March- 2022 RESULT</a></li>
						</ul>
					  </li>
						
						 <li><a href="../disclaimer.htm">Disclaimer</a></li>
					</ul>
				  </div><!-- /.navbar-collapse -->
				</div>

				
			  </div><!-- /.container-fluid -->
			</nav>
		  </div>
	  <div class="jumbotron">
	   <form class="form-horizontal resultform" role="form" method="POST" action="ViewResult.jsp" name="FrontPage_Form1" onsubmit="return FrontPage_Form1_Validator(this)" autocomplete="off">
		 <div class="form-group">
		 <label for="rollno" class="col-sm-4 control-label">Roll Number:*</label>
		<div class="col-sm-8"> 
		  <input name="regno" size="7" maxlength="7" value="" class="form-control" placeholder="Enter Valid Roll Number" autocomplete="off">
		</div>
	   </div>
               <%-- 
    Document   : index
    Created on : 1 Mar 2025, 5:22:06 pm
    Author     : Areen Vishwakarma 
    Email      : areenwish.mum@gmail.com
    Contact    : 8452817040
--%>
			  <div class="form-group">
				<label for="mname" class="col-sm-4 control-label">Mother's First Name:*</label>
				
		<div class="col-sm-8"> 
		  <input name="mname" size="10" maxlength="20" value="" class="form-control" placeholder="Mothers First Name as given on your admit card/form">
		   <div>Enter XXX if mother's name not mentioned in form</div>
		</div>
			  </div>
			  <div class="form-group">
				<div class="col-sm-12 resultviewbtn">
				  <input type="submit" class="btn btn-large btn-primary" value="View Result">
				</div>
			  </div>
			</form>
	</div>
	  <div class="row marketing">
		<h3>State Level Statistics</h3>
		<div class="col-lg-6 col-md-6 col-sm-6">
		  <h4><a target="_blank" href="HS-OVALL.pdf">Overall Performance</a></h4>
		  <h4><a target="_blank" href="HS-MFP.pdf">Sex-wise Performance</a></h4>
		  <h4><a target="_blank" href="HS-SUBJ.pdf">Subject-wise Performance</a></h4>
		</div>

		<div class="col-lg-6 col-md-6 col-sm-6">
		  <h4><a target="_blank" href="HS-GRADE.pdf">Grade-wise Performance</a></h4>
		  <h4><a target="_blank" href="HS-STRM.pdf">Stream-wise Performance</a></h4>
		</div>
	  </div>
	  
	  <div class="row marketing">
		 <h3>Divisional Board Statistics</h3>
		<div class="col-lg-6 col-md-6 col-sm-6">
		  <h4><a target="_blank" href="pune.htm">Pune</a></h4>
		  <h4><a target="_blank" href="Nagpur.htm">Nagpur</a></h4>
		  <h4><a target="_blank" href="aurangabad.htm">Aurangabad</a></h4>
		  <h4><a target="_blank" href="mumbai.htm">Mumbai</a></h4>
		  <h4><a target="_blank" href="kolhapur.htm">Kolhapur</a></h4>
		</div>

		<div class="col-lg-6 col-md-6 col-sm-6">
		  <h4><a target="_blank" href="amravati.htm">Amravati</a></h4>
		  <h4><a target="_blank" href="nashik.htm">Nashik</a></h4>
		  <h4><a target="_blank" href="latur.htm">Latur</a></h4>
		  <h4><a target="_blank" href="konkan.htm">Konkan</a></h4>
		</div>
                 <%-- 
    Document   : index
    Created on : 1 Mar 2025, 5:22:06 pm
    Author     : Areen Vishwakarma 
    Email      : areenwish.mum@gmail.com
    Contact    : 8452817040
--%>
	  </div>
	  <div class="footer col-xs-12">
	  Designed, Developed and Hosted By National Informatics Centre (NIC)<br>Data Provided By <font face="Times New Roman" size="2"><br>
	  Maharashtra State Board of Secondary and Higher Secondary Education, Pune</font>
	 </div>
	</div> <!-- /container -->
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	
	<iframe frameborder="0" scrolling="no" style="background-color: transparent; border: 0px; display: none;"></iframe><div id="GOOGLE_INPUT_CHEXT_FLAG" style="display: none;" input="" input_stat="{&quot;tlang&quot;:true,&quot;tsbc&quot;:true,&quot;pun&quot;:true,&quot;mk&quot;:true,&quot;ss&quot;:true}"></div></body></html>
    </body>
</html>
