<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
  <html lang="en">
   <head>
   
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     
     <script type="text/javascript" src="jquery.min.js.txt"></script>
     
     <script type="text/javascript">
     $(document).ready(function()
  			{
  			
  			$(document).ajaxStart(function(){ $("#wait").show();  });
  			$(document).ajaxStop(function(){ $("#wait").hide(); });
  	  
  			 $('input:radio').click(onopen);
  			function onopen()
  			{
  						
  			if($("#agree").prop("checked")==true)
  				{
  				
  				  $("#desribe").prop('disabled','true');
  				}
  			else{
  				
  				 $("#desribe").prop('disabled','');
  			  }
  			}
  			
     $("#cid").blur(function()
				{
						if(this.value=="")
						{
							$("#cid").focus();
							$("#cid").css("background-color","#FADBD8");	
							
						}
						else
						{  
							
							var letterNumber = /^[0-9a-zA-Z]+$/;  
							if(document.getElementById("cid").value.match(letterNumber))
							{	$("#cid").focus();
								document.getElementById("err").style.display="block";
								$("#cid").css({'background-color':'#EDBB99','border-radius':'8px'});
							}
							else
							{
								var data=document.getElementById("cid").value;
								if(data.length>=8)
								{
								document.getElementById("err").style.display="none";
								$("#cid").css({'background-color':'#FFF6AB','border-radius':'8px'});
								}
								else{
									$("#cid").focus();
									document.getElementById("err").style.display="block";
									$("#cid").css({'background-color':'#EDBB99','border-radius':'8px'});
								}
							}
						}
				});
     
     $("#code").blur(function()
				{
						if(this.value=="")
						{
							$("#code").focus();
							$("#code").css("background-color","#FADBD8");	
							
						}
						else
						{  
							$("#code").css({'background-color':'#FFF6AB','border-radius':'8px'});	
						}
				});
  			});
      </script>
</head>
  <body style="background-color: #F7F6ED;" >
  
   <div class="row col-md-8 col-md-offset-2" style="background-color: white;">
      <form action="save_customer_feedback" method="post" >
       <h1 style="font-weight: bold;">Feedback Form</h1>
       <h4 style="margin-top: 10px;font-weight: bold;">We would love to hear your thoughts, concerns or problems with anything so we can improve!</h4>
       <br>
       <hr style="background-color: #C0BFB8;width: 100%;"></hr>
       <br>
       <h4 style="margin-top: 10px;font-weight: bold;">Feedback Type</h4>
       <div class="row" style="margin-left: 3px;">
         <input type="radio" value="agree" name="rad" checked="true" id="agree">Satisfy with Mail
         <input type="radio" value="noagree" name="rad"  id="noagree">Bug Report in Mail
       </div>
       <br>
       <div class="row col-md-10 col-md-offset-1">
         <h5 style="margin-top: 10px;font-weight: bold;">Describe Feedback: </h5>
         <textarea placeholder="you can write freely in any bug report in Automation system you feel " style="width: 100%;height:300px; " id="desribe" name="desribe" disabled="disabled"></textarea>
       </div>  
       <br> 
        
        <div class="row col-md-10 col-md-offset-1" style="margin-top: 20px;">
          
             <div class="col-md-4 col-md-offset-1">
                <label >Complaint Code*</label>
                <input type="text" style="width: 100%; height: 40px;" placeholder="Employee ID" id="code" name="code" autofocus="autofocus">
             </div> 
             <div class="col-md-4 col-md-offset-1">
                <label >Customer ID*<span style="padding-left: 100px; display: none;margin-top: -20px;font-size: 13px;" id="err">(use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
                <input type="text" style="width: 100%; height: 40px;" placeholder="Customer ID"  id="cid" name="cid">
              </div>
        </div>
       
            <br><br><br>
            <center> <input type="submit" style="width: 200px;font-size: 35px;margin-bottom: 40px;margin-top: 50px;" value="Submit"></center>
   
      </form>
    </div>
  
  
  <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
   
  </body>
</html>