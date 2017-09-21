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
     var serid="<%=request.getParameter("serid")%>";
     function alldata()
     {
    	 $.getJSON("Servicepersonfetchalldata?serid="+serid, function(records){
    		        // alert( JSON.stringify(records));
    			    document.getElementById("serid").value=records.eid;
    			    document.getElementById("firname").value=records.Namee;
    			    document.getElementById("gmailbo").value=records.email;
    			    document.getElementById("mobil").value=records.mob;
    			    document.getElementById("addr").value=records.addr;
    			    document.getElementById("cit").value=records.city;
    			    document.getElementById("stat").value=records.state;
    			    document.getElementById("age").value=records.age;
    			    $('#sampleimg').attr('src', "project_temp/"+records.pic);
    				
    		});
    
     }
     $(document).ready(function(){
			
    	 $(document).ajaxStart(function(){ $("#wait").show();  });
	     $(document).ajaxStop(function(){ $("#wait").hide(); });
			
     	$("#servicepersonsignsubmit").click(dosignin);
     	function  dosignin()
     	{
     	   var url=$("#servicepersonsigninfrm").serialize();
  		   alert(url);	
  		   $.get("ServicePersonupdateprofile?"+url+"&btn=updatepro&serid="+serid+"",function(data,status){
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
     	$("#serid").blur(function()
					{
							if(this.value=="")
							{
								$("#serid").focus();
								$("#serid").css("background-color","#FADBD8");	
								
							}
							else
							{  
								
								var letterNumber = /^[0-9a-zA-Z]+$/;  
								if(document.getElementById("serid").value.match(letterNumber))
								{	$("#serid").focus();
									document.getElementById("err").style.display="block";
									$("#serid").css({'background-color':'#EDBB99','border-radius':'8px'});
								}
								else
								{
									var data=document.getElementById("serid").value;
									if(data.length>=8)
									{
									document.getElementById("err").style.display="none";
									$("#serid").css({'background-color':'#FFF6AB','border-radius':'8px'});
									}
									else{
										$("#serid").focus();
										document.getElementById("err").style.display="block";
	 									$("#serid").css({'background-color':'#EDBB99','border-radius':'8px'});
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
     	
    	$("#mobil").blur(function()
					{
							if(this.value=="")
							{
								$("#mobil").focus();	
								$("#mobil").css("background-color","#FADBD8");	
								
							}
							else
							{  
								var letterNumber ="^[789]\\d{9}$";;
								if(document.getElementById("mobil").value.match(letterNumber))
								{	
									
									$("#mobil").css({'background-color':'#FFF6AB','border-radius':'8px'});
								}
								else
								{
									$("#mobil").focus();	
									$("#mobil").css({'background-color':'#FADBD8','border-radius':'8px'});		
								}
							}
					});
     	
     	$("#addr").blur(function()
				{
						if(this.value=="")
						{ 
							$("#addr").focus();
							$("#addr").css("background-color","#FADBD8");	
						}
						else
						{
							$("#addr").css({'background-color':'#FFF6AB','border-radius':'8px'});
						}
				});
     	
     	$("#cit").blur(function()
				{
						if(this.value=="")
						{ 
							$("#cit").focus();
							$("#cit").css("background-color","#FADBD8");	
						}
						else
						{
							$("#cit").css({'background-color':'#FFF6AB','border-radius':'8px'});
						}
				});
     	
     	$("#stat").blur(function()
				{
						if(this.value=="")
						{ 
							$("#stat").focus();
							$("#stat").css("background-color","#FADBD8");	
						}
						else
						{
							$("#stat").css({'background-color':'#FFF6AB','border-radius':'8px'});
						}
				});
    	$("#age").blur(function()
				{
						if(this.value=="")
						{ 
							$("#age").focus();
							$("#age").css("background-color","#FADBD8");	
						}
						else
						{
							$("#age").css({'background-color':'#FFF6AB','border-radius':'8px'});
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
	  background-image:url(loading.gif);
	  position: absolute;
	  margin-left:40%;
	  margin-top:20%;
	  display: none;
        }
     </style>
  </head>
  <body onload="alldata()">
 <nav class="navbar navbar-inverse" style=" background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); ">
   <div class="container-fluid">
      
      <div  class="nav "style="margin-left: 500px;">
         <h1 style="color: white;margin-top: 20px;" >Your Profile</h1>
      </div>
     
   </div>
</nav>

  <div class="row col-md-offset-3">
   <form method="post" action="ServicePersonprofilepic" enctype="multipart/form-data" id="servicepersonsigninfrm">
   <div class="col-md-6 ">
    
     <div class="form-group">
      <label for="serid" class="txt2">Service Person ID<span style="padding-left: 222px; display: none;margin-top: -20px;font-size: 13px;" id="err">(use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
      <input type="text" class="form-control txtbox2" id="serid" placeholder=" Service Person ID" name="serid"  >
     </div>
     <div class="form-group">
      <label for="firname" class="txt2">Name</label>
      <input type="text" class="form-control txtbox2" id="firname" placeholder=" Name" name="firname" disabled="disabled" >
     </div>
     <div class="form-group" id="gmdiv">
      <label for="gmailbo" class="txt2">Gmail Id</label>
      <input type="email" class="form-control txtbox2"  placeholder="Gmail Id" name="gmailid" id="gmailbo">
     </div>
      <div class="form-group">
      <label for="mobil" class="txt2">Mobile No.</label>
      <input type="number" class="form-control txtbox2"  placeholder="Mobile No." name="mobil" id="mobil">
     </div>
     <div class="form-group">
      <label for="addr" class="txt2">Address</label>
      <input type="text" class="form-control txtbox2" id="addr" placeholder="Address" name="addr">
     </div>
     <div class="form-group">
      <label for="cit" class="txt2">City</label>
      <input type="text" class="form-control txtbox2" id="cit" placeholder="City" name="cit">
     </div>
     <div class="form-group">
      <label for="stat" class="txt2">State</label>
      <input type="text" class="form-control txtbox2" id="stat" placeholder="State" name="stat">
     </div>
     <div class="form-group">
      <label for="age" class="txt2">Age</label>
      <input type="number" class="form-control txtbox2" id="age" placeholder="Age" name="age">
     </div>
    
     <button type="button" class="btn btn-success btnup2" style="width: 100%;" id="servicepersonsignsubmit">Update</button>
     
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