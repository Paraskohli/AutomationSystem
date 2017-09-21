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
     var adid="<%=request.getParameter("adid")%>";
     
   	    function fetchdetail()
   	    {
   	    	
   		   
   	     $.getJSON("Adminfetchalldata?adid="+adid, function(records)
       			 {
       		    //    alert( JSON.stringify(records));
       			    $('#sampleimg').attr('src', "Adminpics/"+records.custpic);
       			    document.getElementById("adminid").value=records.cusid;
       			    document.getElementById("firname").value=records.firstn;
       			    document.getElementById("secname").value=records.secondn;
       			    document.getElementById("gmailbo").value=records.gmail;
       			    document.getElementById("mobno").value=records.mobno;
       			    document.getElementById("passw").value=records.passw;
       			    document.getElementById("repassw").value=records.repassw;
       			 
       			 
       		     });
   	    }
 
     
     
     $(document).ready(function(){
			
    	 $(document).ajaxStart(function(){ $("#wait").show();  });
	     $(document).ajaxStop(function(){ $("#wait").hide(); });
	     
	     
	     $("#adminid").blur(function()
					{
							if(this.value=="")
							{
								$("#adminid").focus();
								$("#adminid").css("background-color","#FADBD8");	
								
							}
							else
							{  
								
								var letterNumber = /^[0-9a-zA-Z]+$/;  
								if(document.getElementById("adminid").value.match(letterNumber))
								{	$("#adminid").focus();
									document.getElementById("err").style.display="block";
									$("#adminid").css({'background-color':'#EDBB99','border-radius':'8px'});
								}
								else
								{
									var data=document.getElementById("adminid").value;
									if(data.length>=8)
									{
									document.getElementById("err").style.display="none";
									$("#adminid").css({'background-color':'#FFF6AB','border-radius':'8px'});
									}
									else{
										$("#adminid").focus();
										document.getElementById("err").style.display="block";
	 									$("#adminid").css({'background-color':'#EDBB99','border-radius':'8px'});
									}
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
	 	$("#mobno").blur(function()
				{
						if(this.value=="")
						{
							$("#mobno").focus();	
							$("#mobno").css("background-color","#FADBD8");	
							
						}
						else
						{  
							var letterNumber ="^[789]\\d{9}$";;
							if(document.getElementById("mobno").value.match(letterNumber))
							{	
								
								$("#mobno").css({'background-color':'#FFF6AB','border-radius':'8px'});
							}
							else
							{
								$("#mobno").focus();	
								$("#mobno").css({'background-color':'#FADBD8','border-radius':'8px'});		
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
  	
      	$("#adminupdate").click(doupdateadmin);
      	function  doupdateadmin()
      	{
      	   var url=$("#adminsigninfrm").serialize();
   		   alert(url);	
   		   $.get("adminprofiledetail?"+url+"&btn=updatepro",function(data,status){
   			   var sign=123;
   			   if(data==sign){
   				 $("#gmailbo").append("style='border: solid; border-color: red;'");
   				 alert("Please fill correct gmail id!!!")
   			   }
   			   else{
   			   alert(data);
   			   }
   			   
   		   });
      	} 
     
     
     $("#adminsave").click(dosaveadmin);
   	function  dosaveadmin()
   	{
   	   var url=$("#adminsigninfrm").serialize();
		   alert(url);	
		   $.get("adminprofiledetail?"+url+"&btn=saveprof",function(data,status){
			   var sign=123;
			   if(data==sign){
				 $("#gmailbo").append("style='border: solid; border-color: red;'");
				 alert("Please fill correct gmail id!!!")
			   }
			   else{
			   alert(data);
			   }
			   
		   });
   	} 
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
	  background-image:url(loading.gif);
	  position: absolute;
	  margin-left:40%;
	  margin-top:20%;
	  display: none;
        }
     </style>
  </head>
  <body onload="fetchdetail()">
  <div class="row">
      <div style="background-color:black;">
        
            <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="margin-left: 40px; margin-top: 8px;margin-bottom: 8px;color: white;"></span>
       
      </div>
  </div>
    <div class="row col-md-offset-1">
   <form method="post" action="Adminprofilepic" enctype="multipart/form-data" id="adminsigninfrm">
    <!-- first div -->
  
   <div class="col-md-8 ">
      <div class="form-group">
       <label for="adminid" class="txt2">Admin Id<span style="padding-left: 320px; display: none;margin-top: -20px;font-size: 13px;" id="err">(use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
       <input type="text" class="form-control txtbox2" id="adminid" placeholder="Fill New Admin Id" name="adminid">
      </div>
     <div class="form-group">
      <label for="firname" class="txt2">First Name</label>
      <input type="text" class="form-control txtbox2" id="firname" placeholder="First Name" name="firname">
     </div>
     <div class="form-group">
      <label for="secname" class="txt2">Second Name</label>
      <input type="text" class="form-control txtbox2" id="secname" placeholder="Second Name" name="secname">
     </div>
     <div class="form-group" id="gmdiv">
      <label for="gmailbo" class="txt2">Gmail Id</label>
      <input type="email" class="form-control txtbox2"  placeholder="Gmail Id" name="gmailid" id="gmailbo">
     </div>
     <div class="form-group" >
      <label for="mobno" class="txt2">Mobile No.</label>
      <input type="number" class="form-control txtbox2"  placeholder="Mobile No." name="mobno" id="mobno">
     </div>
     <div class="form-group">
      <label for="passw" class="txt2">Password<span style="padding-left: 420px; display: none;margin-top: -20px;font-size: 11px;" id="err2">(Use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
      <input type="password" class="form-control txtbox2" id="passw" placeholder="Password" name="passw">
     </div>
     <div class="form-group" style="margin-bottom: 30px;">
      <label for="repassw" class="txt2">Re-Password<span style="padding-left: 600px; display: none;margin-top: -20px;font-size: 11px;" id="err3">(Both Password not same Please retry!!!)</span></label>
      <input type="password" class="form-control txtbox2" id="repassw" placeholder="Re-Password" name="repassw">
     </div>

     <button type="button" class="btn btn-success btnup2" style="width: 100%;" id="adminsave">Save</button>
     <button type="button" class="btn btn-success btnup2" style="width: 100%;margin-top: 15px;" id="adminupdate">Update</button>
     
   </div>
  <!-- second -->
   <div class="col-md-2">
  
   <div class="row">
   <center><img src="img/adminpic.png" alt="adminpic"name="sampleimg" id="sampleimg" class="img-thumbnail img-circle" width="170px" height="170px" style="border: solid #B7B7B1;margin-top: 20px;"></center>
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