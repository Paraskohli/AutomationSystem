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
       
        $(document).ready(function(){
			
        	$(document).ajaxStart(function(){ $("#wait").css("display","block");  });
			$(document).ajaxStop(function(){ $("#wait").css("display","none"); });
        	
		   $("#fogetpass").click(domsg);
		   function domsg(){
			   var v=prompt("Enter Your valid User Id:");
			   $.get("sms_to_customer_password?cusid="+v+"&btn=msg",function(data,status){
     			   var sign=123;
     			   if(data==sign){
     				 alert("Please fill the data correctly!!!")
     			   }
     			   else{
     			   alert(data);
     			   }
     			   
     		   });
		   }
		   
        	$("#custsignsubmit").click(dosignin);
        	function  dosignin()
        	{
        	   var url=$("#custsigninfrm").serialize();
     		 //  alert(url);	
     		   $.get("customerlogin_signin?"+url+"&btn=signin",function(data,status){
     			   var sign=123;
     			   if(data==sign){
     				 $("#gmailbo").css("style='border: solid; border-color: red;'");
     				 alert("Please fill data correctly!!!")
     			   }
     			   else{
     			   alert(data);
     			   }
     			   
     		   });
        	} 
        	$("#submitcustlogin").click(dologin);
        	function dologin()
        	{
        		var url=$("#custlogin").serialize();
        	
        		var custid=document.getElementById("custid").value;
        		 $.get("customerlogin_signin?"+url+"&btn=login",function(data,status){
        			 var check=1;
        			 if(data==check)
        				 {
        				 window.location="CustomerMainDashboard.jsp?cuid="+custid;
        				 }
        			 else
        				 {
        				 alert(data)
        				 $("#passwo").css("background-color","#FADBD8");				 
        				 }
        		 });
        		 
        	}
        	
        	var pass;
        	$("#passw").blur(function()
    				{
    						if(this.value=="")
    						{
    							$("#passw").focus();
    							$("#passw").css("background-color","#FADBD8");	
    							
    						}
    						else
    						{  
    							
    							var letterNumber = /^[0-9a-zA-Z]+$/;  
    							if(document.getElementById("passw").value.match(letterNumber))
    							{
    								$("#passw").focus();
    								document.getElementById("err2").style.display="block";
    								$("#passw").css({'background-color':'#EDBB99','border-radius':'8px'});
    							}
    							else
    							{  
    								var data=document.getElementById("passw").value;
    								if(data.length>=8)
    								{
    									pass=document.getElementById("passw").value;
    								document.getElementById("err2").style.display="none";
    								$("#passw").css({'background-color':'#FFF6AB','border-radius':'8px'});
    								
    								}
    								else{
    									$("#passw").focus();
    									document.getElementById("err2").style.display="block";
     									$("#passw").css({'background-color':'#EDBB99','border-radius':'8px'});
    								}
    							}
    						}
    				});

        	$("#repassw").blur(function()
    				{
    						if(this.value==pass)
    						{
    								
    							document.getElementById("err3").style.display="none";
    							$("#repassw").css({'background-color':'#FFF6AB','border-radius':'8px'});
    							
    						}
    						else
    						{  
    							$("#repassw").focus();
    							$("#repassw").css("background-color","#FADBD8");
    							document.getElementById("err3").style.display="block";
    						}
    				});
        	$("#custid2").blur(function()
					{
							if(this.value=="")
							{
								$("#custid2").focus();
								$("#custid2").css("background-color","#FADBD8");	
								
							}
							else
							{  
								
								var letterNumber = /^[0-9a-zA-Z]+$/;  
								if(document.getElementById("custid2").value.match(letterNumber))
								{
									
									$("#custid2").focus();
									document.getElementById("err").style.display="block";
									$("#custid2").css({'background-color':'#EDBB99','border-radius':'8px'});
								}
								else
								{ 
									var data=document.getElementById("custid2").value;
									if(data.length>=8)
									{
									document.getElementById("err").style.display="none";
									$("#custid2").css({'background-color':'#FFF6AB','border-radius':'8px'});
									}
									else{
										$("#custid2").focus();
										document.getElementById("err").style.display="block";
	 									$("#custid2").css({'background-color':'#EDBB99','border-radius':'8px'});
									}
								}
							}
					});
        	$("#gmailbo").blur(function()
					{
							if(this.value=="")
							{
								$("#gmailbo").focus();
								$("#gmailbo").css("background-color","#FADBD8");	
								
							}
							else
							{  
								var letterNumber ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
									+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
								  
								if(document.getElementById("gmailbo").value.match(letterNumber))
								{	
									
									$("#gmailbo").css({'background-color':'#FFF6AB','border-radius':'8px'});
								}
								else
								{
									$("#gmailbo").focus();
									$("#gmailbo").css({'background-color':'#FADBD8','border-radius':'8px'});
									
									
								}
							}
					});
        	$("#firname").blur(function()
 					{
 							if(this.value=="")
 							{
 								$("#firname").focus();
 								$("#firname").css("background-color","#FADBD8");	
 							}
 							else
 							{
 								$("#firname").css({'background-color':'#FFF6AB','border-radius':'8px'});
 							}
 					});
        	$("#secname").blur(function()
 					{
 							if(this.value=="")
 							{
 								$("#secname").focus();
 								$("#secname").css("background-color","#FADBD8");	
 							}
 							else
 							{
 								$("#secname").css({'background-color':'#FFF6AB','border-radius':'8px'});
 							}
 					});
 				
    	
        	
        });
        
     
     </script>
     
     <style type="text/css">
     
      #wait
        {
	  width:100px; height: 100px;
	  background-image:url('Pictures/loading.gif');
	  position: absolute;
	  margin-left:40%;
	  margin-top:20%;
	  display: none;
        }
     
     .txt{
     font-size: 25px;
     font-family:sans-serif;
     color: #5B5D5B;
     margin-left: -10px;
     
     }
      .txt2{
     font-size: 20px;
     font-family:sans-serif;
     color: #5B5D5B;
     margin-left: -10px;
     
     }
     .txtbox{
     width: 100%;
     height: 65px;
     margin-left: -10px;
     }
      .txtbox2{
     width: 100%;
     height: 45px;
     margin-left: -10px;
     }
     .btnse{
     color: red;
     font-size: 18px;
     }
     .btnup{
     width: 100%;
     height:65px;
     margin-left: -10px;
     background-image: url("Pictures/butt.jpg");
     color: white;
     font-size: 21px;
     }
      .btnup2{
    
     width: 42%;
     height:65px;
     background-image: url("Pictures/butt.jpg");
       color: white;
       font-size: 21px;
     }
     .maindi{
     background-color:white;
     margin-top: 60px ;
     padding: 40px;
     margin-bottom: 25px;
     }
     </style>
  </head>
  <body style="background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');" >
  
  <div class="col-md-4 col-md-offset-4 maindi">

  <!-- Nav tabs -->
  <div>
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#login" aria-controls="home" role="tab" data-toggle="tab"  style="padding: 20px;padding-left: 30px;font-size: 22px;color: #331616">LOGIN</a></li>
    <li role="presentation"><a href="#signup" aria-controls="profile" role="tab" data-toggle="tab" style="padding: 20px;padding-left: 30px;font-size: 22px;color: #331616">SIGN UP</a></li>
    
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active col-md-10 col-md-offset-1" id="login" style="background-color: white;">
    
    <form style="margin-top: 50px;" id="custlogin">
    <div class="form-group">
     <label for="custid" class="txt">Customer Id</label>
     <input type="text" class="form-control txtbox" id="custid" placeholder="Customer Id" name="custid">
    </div>
    <div class="form-group" style="margin-bottom: 30px;">
     <label for="passwo" class="txt">Password</label>
     <input type="password" class="form-control txtbox" id="passwo" placeholder="Password" name="passwo">
    </div>

   
     <div style="float: right; margin-bottom: 40px;" ><a class="btnse" id="fogetpass">Forgot your Password?</a></div>
   </form>
     <button type="submit" class="btn btnup" id="submitcustlogin" >Submit</button>
   </div>
 
    <!-- second -->
     <div role="tabpanel" class="tab-pane col-md-10 col-md-offset-1" id="signup" style="background-color: white; ">
    
     <form style="margin-top: 20px;" id="custsigninfrm">
     <div class="form-group">
      <label for="firname" class="txt2">First Name</label>
      <input type="text" class="form-control txtbox2" id="firname" placeholder="First Name" name="firname" autofocus="autofocus">
     </div>
     <div class="form-group">
      <label for="secname" class="txt2">Second Name</label>
      <input type="text" class="form-control txtbox2" id="secname" placeholder="Second Name" name="secname">
     </div>
     <div class="form-group" id="gmdiv">
      <label for="gmailbo" class="txt2">Gmail Id</label>
      <input type="email" class="form-control txtbox2"  placeholder="Gmail Id" name="gmailid" id="gmailbo">
     </div>
     <div class="form-group">
      <label for="custid2" class="txt2">Customer Id<span style="padding-left: 170px; display: none;margin-top: -20px;font-size: 11px;" id="err">(Use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
      <input type="text" class="form-control txtbox2" id="custid2" placeholder="Fill New Customer Id" name="custid2">
     </div>
     <div class="form-group">
      <label for="passw" class="txt2">Password<span style="padding-left: 170px; display: none;margin-top: -20px;font-size: 11px;" id="err2">(Use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
      <input type="password" class="form-control txtbox2" id="passw" placeholder="Password" name="passw">
     </div>
     <div class="form-group" style="margin-bottom: 30px;">
      <label for="repassw" class="txt2">Re-Password<span style="padding-left: 200px; display: none;margin-top: -20px;font-size: 11px;" id="err3">(Both Password not same Please retry!!!)</span></label>
      <input type="password" class="form-control txtbox2" id="repassw" placeholder="Re-Password" name="repassw">
     </div>

     <button type="submit" class="btn btnup2" >cancel</button>
     <button type="button" class="btn btnup2" style="margin-left: 35px;" id="custsignsubmit">Submit</button>
     </form>
     </div>
    </div>
</div>
</div>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>
