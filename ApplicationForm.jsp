<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>
   
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="jquery.min.js.txt"></script>
     
     <script type="text/javascript">
     
     function doonload()
     {
     	$.getJSON("GetComboProduct?&btn=auto",function(records)
     	  {
     		 
     		for(i=0;i<records.length;i++)
     			{
     			
     			$("#sp1").append( "<option value='"+records[i]+"'>"+records[i]+"</option>");
     			$("#sp2").append( "<option value='"+records[i]+"'>"+records[i]+"</option>");
     			$("#sp3").append( "<option value='"+records[i]+"'>"+records[i]+"</option>");
     			}
     	   });
     }
     
     $(document).ready(function()
 			{
 			
 			$(document).ajaxStart(function(){ $("#wait").show();  });
 			$(document).ajaxStop(function(){ $("#wait").hide(); });
 			
 			$("#uid").blur(function()
 					{
 							if(this.value=="")
 							{
 								$("#uid").focus();
 								$("#uid").css("background-color","#FADBD8");	
 								
 							}
 							else
 							{  
 								
 								var letterNumber = /^[0-9a-zA-Z]+$/;  
 								if(document.getElementById("uid").value.match(letterNumber))
 								{	$("#uid").focus();
 									document.getElementById("err").style.display="block";
 									$("#uid").css({'background-color':'#EDBB99','border-radius':'8px'});
 								}
 								else
 								{
 									var data=document.getElementById("uid").value;
 									if(data.length>=8)
 									{
 									document.getElementById("err").style.display="none";
 									$("#uid").css({'background-color':'#FFF6AB','border-radius':'8px'});
 									}
 									else{
 										$("#uid").focus();
 										document.getElementById("err").style.display="block";
 	 									$("#uid").css({'background-color':'#EDBB99','border-radius':'8px'});
 									}
 								}
 							}
 					});
 			
 			$("#name").blur(function()
 					{
 							if(this.value=="")
 							{   
 								$("#name").focus();
 								$("#name").css("background-color","#FADBD8");	
 							}
 							else
 							{
 								$("#name").css({'background-color':'#FFF6AB','border-radius':'8px'});
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
 				
 		
 			$("#eid").blur(function()
 					{
 							if(this.value=="")
 							{
 								$("#eid").focus();
 								$("#eid").css("background-color","#FADBD8");	
 								
 							}
 							else
 							{  
 								var letterNumber ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
 									+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
 								  
 								if(document.getElementById("eid").value.match(letterNumber))
 								{	
 									
 									$("#eid").css({'background-color':'#FFF6AB','border-radius':'8px'});
 								}
 								else
 								{
 									$("#eid").focus();
 									$("#eid").css({'background-color':'#FADBD8','border-radius':'8px'});
 									
 									
 								}
 							}
 					});
 			
 					$("#mob").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{
 		 								$("#mob").focus();	
 		 								$("#mob").css("background-color","#FADBD8");	
 		 								
 		 							}
 		 							else
 		 							{  
 		 								var letterNumber ="^[789]\\d{9}$";;
 		 								if(document.getElementById("mob").value.match(letterNumber))
 		 								{	
 		 									
 		 									$("#mob").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 								}
 		 								else
 		 								{
 		 									$("#mob").focus();	
 		 									$("#mob").css({'background-color':'#FADBD8','border-radius':'8px'});		
 		 								}
 		 							}
 		 					});
 					
 					$("#address").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#address").focus();
 		 								$("#address").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								$("#address").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 							}
 		 					});
 					
 					$("#city").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#city").focus();
 		 								$("#city").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								$("#city").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 							}
 		 					});
 					$("#state").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#state").focus();
 		 								$("#state").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								$("#state").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 							}
 		 					});
 					
 					$("#techq").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#techq").focus();
 		 								$("#techq").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								$("#techq").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 							}
 		 					});
 					$("#exp").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#exp").focus();
 		 								$("#exp").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								if(this.value=="none")
 	 		 							{
 	 		 								$("#exp").focus();
 	 		 								$("#exp").css("background-color","#FADBD8");	
 	 		 							}
 		 								else{
 		 								
 		 								$("#exp").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 								}
 		 							}
 		 					});
 					$("#sp1").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#sp1").focus();
 		 								$("#sp1").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								if(this.value=="none")
 	 		 							{
 	 		 								$("#sp1").focus();
 	 		 								$("#sp1").css("background-color","#FADBD8");	
 	 		 							}
 		 								else{
 		 								
 		 								$("#sp1").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 								}
 		 							}
 		 					});
 					$("#sp2").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#sp2").focus();
 		 								$("#sp2").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								if(this.value=="none")
 	 		 							{
 	 		 								$("#sp2").focus();
 	 		 								$("#sp2").css("background-color","#FADBD8");	
 	 		 							}
 		 								else{
 		 								
 		 								$("#sp2").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 								}
 		 							}
 		 					});
 					$("#sp3").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#sp3").focus();
 		 								$("#sp3").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								if(this.value=="none")
 	 		 							{
 	 		 								$("#sp3").focus();
 	 		 								$("#sp3").css("background-color","#FADBD8");	
 	 		 							}
 		 								else{
 		 								
 		 								$("#sp3").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 								}
 		 							}
 		 					});
 					
 					$("#comb").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{ 
 		 								$("#comb").focus();
 		 								$("#comb").css("background-color","#FADBD8");	
 		 							}
 		 							else
 		 							{
 		 								if(this.value=="none")
 	 		 							{
 	 		 								$("#comb").focus();
 	 		 								$("#comb").css("background-color","#FADBD8");	
 	 		 							}
 		 								else{
 		 								
 		 								$("#comb").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 								}
 		 							}
 		 					});
 					
 			});
    
     function showpreview(file) {

         if (file.files && file.files[0]) {
             var reader = new FileReader();
             reader.onload = function (e) {
                 $('#imag').attr('src', e.target.result);
             }
             reader.readAsDataURL(file.files[0]);
         }

     }
     </script>  
     <style type="text/css">
        .top{
        background-color:buttonface;
        text-align: center;
        color: activecaption;
        padding-top: 1px;
        padding-bottom: 1px;
        font-weight: bold;
        font-style:italic;
        font-family: ;
        }
          #wait
        {
	  width:100px; height: 100px;
	  background-image:url(loading.gif);
	  position: absolute;
	  margin-left:40%;
	  margin-top:20%;
	  display: none;
        }
        
     .ok{color:red; text-decoration: bold; background-color: green;
      position: absolute;}
     </style>
  </head>
  <body onload="doonload();">
  <nav class="navbar navbar-inverse eva" style="height: 100px;  background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');z-index: 500;" id="home">
   
    <div  style="padding: 2% ;margin: auto;" >
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header "  >
           
             <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" style="background-color:white; color: #331616;">
                    <span class="sr-only"  >Toggle navigation</span> Menu <i class="fa fa-bars "></i>
             </button>
              <h1 style="color: white;margin-top: 1px;" >Automation Services</h1>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
                <ul class="nav navbar-nav navbar-right" style="background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');" >
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class=" toptext" href="Homepage.jsp#home" style="font-size: 21px; font-weight: bold;">Home</a>
                    </li>
                    <li>
                        <a class=" toptext" href="Homepage.jsp#service" style="font-size: 21px;  font-weight: bold;">Services</a>
                    </li>
                    <li>
                        <a class=" toptext" href="Homepage.jsp#about" style="font-size: 21px;  font-weight: bold;">Developer</a>
                    </li>
                    <li>
                        <a class=" toptext" href="Homepage.jsp#contact" style="font-size: 21px;  font-weight: bold;">Feedback</a>
                    </li>
                     <li>
                        <a class=" toptext" href="ApplicationForm.jsp" style="font-size: 21px;  font-weight: bold;">Job Apply</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
</nav>
  

  
  

 <form method="post" id="frm" action="AppliController" enctype="multipart/form-data" >
 <div class="row" >
 <div class="col-md-8 col-md-offset-2" >

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" id="personal" class="active"><a href="#pers" aria-controls="pers" role="tab" data-toggle="tab">Personal Detail</a></li>
    <li role="presentation" id="address"><a href="#addr" aria-controls="addr" role="tab" data-toggle="tab">Contact Detail</a></li>
    <li role="presentation" id="tech"><a href="#tec" aria-controls="tec" role="tab" data-toggle="tab">Technical Qualification</a></li>
    <li role="presentation" id="idproof"><a href="#idpro" aria-controls="idpro" role="tab" data-toggle="tab">ID Proof</a></li>
  </ul>
  
  
   <!-- Tab panes -->
  
   <!--first tab -->
  
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="pers">
       <div class="col-md-8 ">  
  
    <div class="form-group">
    <label for="uid" style="margin-top: 10px;">User Id*<span style="padding-left: 222px; display: none;margin-top: -20px;font-size: 13px;" id="err">(use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></label>
    <input type="text" class="form-control "  id="uid" name="uid" placeholder="create your new uid"  autofocus="autofocus">
    </div>
    <div class="form-group">
    <label for="name">Name*</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
    </div>
    <div class="form-group">
    <label for="age">Age*</label>
    <input type="number" class="form-control" id="age" name="age" placeholder="Age">
    </div>
 
  <a href="#addr" onClick="$('#personal').removeClass('active');$('#address').addClass('active');" aria-controls="settings" role="tab" data-toggle="tab">
   <button type="button" class="btn btn-default" style="width: 130px;height: 50px; float: right; " >Next</button>
   </a>
 
   </div>

  <div class="col-md-4">
  <br>
  <img src="" width=130px height="140px" id="imag" name="imag" style="border: 1px  solid; " >
  <div class="form-group">
    <label for="pic">File input</label>
    <input type="file" id="pic" name="pic" accept="image/*" onchange="showpreview(this);" >
    <p class="help-block">Example block-level help text here.</p>
  </div>
  
  
  
    </div>
    </div>
    <!--second tab -->
    
    <div role="tabpanel" class="tab-pane" id="addr">
   
    <div class="form-group">
    <label for="eid">Email Id*</label>
    <input type="email" class="form-control "  id="eid" name="eid" placeholder="Email Id">
    </div>
    <div class="form-group">
    <label for="mob">Mobile No*</label>
    <input type="text" class="form-control" id="mob" name="mob" placeholder="Mobile No">
    </div>
    <div class="form-group">
    <label for="address">Address*</label>
    <input type="text" class="form-control" id="address" name="address" placeholder="Address">
    </div>
    
    <div class="form-group">
    <label for="city">City*</label>
    <input type="text" class="form-control" id="city" name="city" placeholder="City">
    </div>
    
     <div class="form-group">
    <label for="state">State*</label>
    <input type="text" class="form-control" id="state" name="state" placeholder="State">
    </div>
    
    <a href="#tec" onClick="$('#address').removeClass('active');$('#tech').addClass('active');" aria-controls="settings" role="tab" data-toggle="tab">
    <button type="button" class="btn btn-default" style="float: right; width: 150px ;height: 50px;">Next</button>
    </a>
    
    </div>
  
     <!--third tab -->
 
    <div role="tabpanel" class="tab-pane" id="tec">
    
    <div class="form-group">
    <label for="techq">Qualification</label>
    <input type="text" class="form-control "  id="techq" name="techq" placeholder="Qualification">
    </div>
    
    <div class="form-group">
      <label for="exp" >Experience*</label>
      <select  class="form-control" id="exp" name="exp" >
      <option value="none">Select</option>
      <option value="0">0</option>
      <option value="0<2">0<2</option>
      <option value="2<4">2<4</option>
      <option value="4<6">4<6</option>
      <option value="more then 6">more then 6</option>
      </select>
    </div>
    
    <div class="form-group">
    <label for="sp1">Specialization 1*</label>
    <select  class="form-control" id="sp1" name="sp1"   >
    <option value="none">Select</option>
    </select>
    </div>
    
    <div class="form-group">
    <label for="sp2">Specialization 2</label>
    <select  class="form-control" id="sp2" name="sp2"   >
    <option value="none">Select</option>
    </select>
    </div>
    
    <div class="form-group">
    <label for="sp3">Specialization 3</label>
    <select  class="form-control" id="sp3" name="sp3"  >
    <option value="none">Select</option>
    </select>
    </div>
    
     
    
    <a href="#idpro" onClick="$('#tech').removeClass('active');$('#idproof').addClass('active');" aria-controls="settings" role="tab" data-toggle="tab">
    <button type="button" class="btn btn-default" style="float: right; width: 150px ;height: 50px;">Next</button>
    </a>
    </div>
    
     <!--Fourth tab -->
    <div role="tabpanel" class="tab-pane" id="idpro" >
    <center>
    <br> <br>
    <div class=" form-inline form-group">
    <label for="comb">ID Proof*</label>
    <select name="comb" id="comb">
    <option value="none">Select</option>
    <option value="Residential Certificate" id="rcert">Residential Certificate</option>
    <option value="Voter Card" id="vcard">Voter Card</option>
    <option value="Adhar Card" id="acard">Adhar Card</option>
   </select>
    </div>
    <div class="form-group">
    <label for="InputFile">File Attech </label>
    <input type="file" id="InputFile" name="InputFile" >
    <p class="help-block">Click on <i>Choose file </i>for atteching file</p>
    </div>
     <button type="submit" class="btn btn-default" style=" width: 150px ;height: 50px;" id="btn" name="btn" value="Save">Submit</button>
    </center>
    </div>
  </div>

</div> 
</div>
</form>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
