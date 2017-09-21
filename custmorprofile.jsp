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
     var cusid="<%=request.getParameter("cuid")%>";
     var pict;
     function alldata()
     {
    	 $.getJSON("Custfetchdata?cusid="+cusid, function(records){
    		        
    		       
    			    document.getElementById("firname").value=records.firstn;
    			    document.getElementById("secname").value=records.secondn;
    			    document.getElementById("gmailbo").value=records.gmail;
    			    document.getElementById("custid").value=records.cusid;
    			    document.getElementById("passw").value=records.passw;
    			    document.getElementById("repassw").value=records.passw;
    			    $('#sampleimg').attr('src', "customerpics/"+records.custpic);
    			    pict="customerpics/"+records.custpic;
    			   
    				
    		});
    
     }
     $(document).ready(function(){
    	 $(document).ajaxStart(function(){ $("#wait").show();  });
 		$(document).ajaxStop(function(){ $("#wait").hide(); });
 		
 		
     	$("#custsignsubmit").click(dosignin);
     	function  dosignin()
     	{
     	   var url=$("#custsigninfrm").serialize();
  		   alert(url);	
  		   $.get("customerlogin_signin?"+url+"&btn=updatepro",function(data,status){
  			   var sign=123;
  			   if(data==sign){
  				 $("#gmailbo").css("background-color","#FADBD8");
  				
  			   }
  			   else{
  			   alert(data);
  			   }
  			   
  		   });
     	} 
    	$("#custid").blur(function()
					{
							if(this.value=="")
							{
								$("#custid").focus();
								$("#custid").css("background-color","#FADBD8");	
								
							}
							else
							{  
								
								var letterNumber = /^[0-9a-zA-Z]+$/;  
								if(document.getElementById("custid").value.match(letterNumber))
								{
									$("#custid").focus();
									document.getElementById("err").style.display="block";
									$("#custid").css({'background-color':'#EDBB99','border-radius':'8px'});
								}
								else
								{  
									var data=document.getElementById("custid").value;
									if(data.length>=8)
									{
									document.getElementById("err").style.display="none";
									$("#custid").css({'background-color':'#FFF6AB','border-radius':'8px'});
									}
									else{
										$("#custid").focus();
										document.getElementById("err").style.display="block";
	 									$("#custid").css({'background-color':'#EDBB99','border-radius':'8px'});
									}
								}
							}
					});
    	
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
    	
     });
     
     
     function previewpic(file) {

    	    if (file.files && file.files[0]) {
    	        var reader = new FileReader();
    	        reader.onload = function (e) {
    	            $('#sampleimg').attr('src', e.target.result);
    	        }
    	        reader.readAsDataURL(file.files[0]);
    	    }

    	}
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
     </style>
  </head>
  <body onload="alldata()">
   <!-- navbar -->
<nav class="navbar navbar-inverse" style=" background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); ">
   <div class="container-fluid">
      
      <div  class="nav "style="margin-left: 500px;">
         <h1 style="color: white;margin-top: 20px;" >Your Profile</h1>
      </div>
     
   </div>
</nav>
  <div class="row col-md-offset-3">
 
  <br>
   <form method="post" action="Customerprofilepic" enctype="multipart/form-data" id="custsigninfrm">
   <div class="col-md-6 ">
    
     <div class="form-group">
      <label for="firname" class="txt2">First Name</label>
      <input type="text" class="form-control txtbox2" id="firname" placeholder="First Name" name="firname" disabled="disabled" >
     </div>
     <div class="form-group">
      <label for="secname" class="txt2">Last Name</label>
      <input type="text" class="form-control txtbox2" id="secname" placeholder="last Name" name="secname" disabled="disabled">
     </div>
     <div class="form-group" id="gmdiv">
      <label for="gmailbo" class="txt2">Gmail Id</label>
      <input type="email" class="form-control txtbox2"  placeholder="Gmail Id" name="gmailid" id="gmailbo">
     </div>
     <div class="form-group">
      <label for="custid" class="txt2">Customer Id<span style="padding-left: 170px; display: none;margin-top: -20px;font-size: 11px;" id="err">(Use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
      <input type="text" class="form-control txtbox2" id="custid" placeholder="Fill New Customer Id" name="custid">
     </div>
     <div class="form-group">
      <label for="passw" class="txt2">Password<span style="padding-left: 170px; display: none;margin-top: -20px;font-size: 11px;" id="err2">(Use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
      <input type="password" class="form-control txtbox2" id="passw" placeholder="Password" name="passw">
     </div>
     <div class="form-group" style="margin-bottom: 30px;">
      <label for="repassw" class="txt2">Re-Password <span style="padding-left: 290px; display: none;margin-top: -20px;font-size: 11px;" id="err3">(Both Password not same Please retry!!!)</span></label>
      <input type="password" class="form-control txtbox2" id="repassw" placeholder="Re-Password" name="repassw">
     </div>

    
     <button type="button" class="btn btn-success btnup2" style="width: 100%;" id="custsignsubmit">Update</button>
     
   </div>
   <!-- second div -->
   <div class="col-md-2">
  
   <div class="row">
   <center><img src="img/adminpic.png" alt="adminpic" name="sampleimg" id="sampleimg" class="img-thumbnail img-circle" width="170px" height="170px" style="border: solid #B7B7B1;margin-top: 30px;"></center>
   </div>
   <div class="row">
    <input type="file" accept="image/*" name="samplefile" id="samplefile" class="form-control"  onchange="previewpic(this);" style="margin-top: 15px;"/>
    <center><button type="submit" class="btn btn-success btnup2" style=" margin-top: 25px;" id="edpic" name="edpic">Lock Picture</button> </center>
   </div>
   </div>
   </form>
   </div>
   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>