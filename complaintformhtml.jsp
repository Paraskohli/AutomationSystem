<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Insert title here</title>
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

function doonload()
{
	$.getJSON("getcombodata?&btn=auto",function(records)
	  {
		
	//	alert(JSON.stringify(records));
		for(i=0;i<records.length;i++)
			{
			$("#comboproduct").append( "<option value='"+records[i].product+"'>"+records[i].product+"</option>");
			}
	   });
	 $.getJSON("Custfetchdata?cusid="+cusid, function(records){
	       //  alert( JSON.stringify(records));
	         
		    document.getElementById("txtcid").value=cusid;
	        document.getElementById("txtcname").value=records.firstn+" "+records.secondn;
			
	});
}
function dochange1()
{
			
			var d=document.getElementById("comboproduct").value;
			
			$.getJSON("getcombodata?&product="+d+"&btn=change",function(records)
			   {
				//alert(d);
				for(i=0;i<records.length;i++)
				{
				$("#combotype").append( "<option value='"+records[i].ptype+"'>"+records[i].ptype+"</option>");
				}
				  
			   });
		
}
function dochange2()
{
			var d=document.getElementById("combotype").value;
			
			$.getJSON("getcombodata?&product="+d+"&btn=chan",function(records)
			   {
				//alert(d);
				for(i=0;i<records.length;i++)
				{
				$("#lstmodal").append("<option value='"+records[i].modal+"'>"+records[i].modal+"</option>");
				}
				  
			   });
		
}


function previewpic(file) {

    if (file.files && file.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#sampleimg').attr('src', e.target.result);
        }
        reader.readAsDataURL(file.files[0]);
    }

}
function previewproof(file) {

    if (file.files && file.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#wimg').attr('src', e.target.result);
          
            $('#ywarranty').attr('checked','true');
        }
        reader.readAsDataURL(file.files[0]);
    }

}
function alertWarranty()
{
  alert("Please add Picture Proof ");	
  $('#nwarranty').attr('checked','true');
}

$(document).ready(function(){
	$(document).ajaxStart(function(){ $("#wait").show();  });
	$(document).ajaxStop(function(){ $("#wait").hide(); });
	$("#txtcid").blur(function()
			{
					if(this.value=="")
					{
						$("#txtcid").focus();
						$("#txtcid").css("background-color","#FADBD8");	
						
					}
					else
					{  
						
						var letterNumber = /^[0-9a-zA-Z]+$/;  
						if(document.getElementById("txtcid").value.match(letterNumber))
						{
							$("#txtcid").focus();
							document.getElementById("err").style.display="block";
							$("#txtcid").css({'background-color':'#EDBB99','border-radius':'8px'});
						}
						else
						{  
							var data=document.getElementById("txtcid").value;
							if(data.length>=8)
							{
							document.getElementById("err").style.display="none";
							$("#txtcid").css({'background-color':'#FFF6AB','border-radius':'8px'});
							}
							else{
								$("#txtcid").focus();
								document.getElementById("err").style.display="block";
									$("#txtcid").css({'background-color':'#EDBB99','border-radius':'8px'});
							}
						}
					}
			});
	$("#txtcname").blur(function()
				{
						if(this.value=="")
						{ 
							$("#txtcname").focus();
							$("#txtcname").css("background-color","#FADBD8");	
						}
						else
						{
							$("#txtcname").css({'background-color':'#FFF6AB','border-radius':'8px'});
						}
				});
	
	
	$("#comboproduct").blur(function()
			{
		if(this.value=="")
			{ 
				$("#comboproduct").focus();
				$("#comboproduct").css("background-color","#FADBD8");	
			}
			else
			{
				if(this.value=="none")
				{
					$("#comboproduct").focus();
					$("#comboproduct").css("background-color","#FADBD8");	
				}
				else{
				
				$("#comboproduct").css({'background-color':'#FFF6AB','border-radius':'8px'});
				}
			}
			});
	
	$("#combotype").blur(function()
			{
		if(this.value=="")
			{ 
				$("#combotype").focus();
				$("#combotype").css("background-color","#FADBD8");	
			}
			else
			{
				if(this.value=="select")
				{
					$("#combotype").focus();
					$("#combotype").css("background-color","#FADBD8");	
				}
				else{
				
				$("#combotype").css({'background-color':'#FFF6AB','border-radius':'8px'});
				}
			}
			});
	$("#combotype").blur(function()
			{
		if(this.value=="")
			{ 
				$("#combotype").focus();
				$("#combotype").css("background-color","#FADBD8");	
			}
			else
			{
				if(this.value=="select")
				{
					$("#combotype").focus();
					$("#combotype").css("background-color","#FADBD8");	
				}
				else{
				
				$("#combotype").css({'background-color':'#FFF6AB','border-radius':'8px'});
				}
			}
			});
			$("#lstmodal").blur(function()
					{
							if(this.value=="")
							{ 
								$("#lstmodal").focus();
								$("#lstmodal").css("background-color","#FADBD8");	
							}
							else
							{
								$("#lstmodal").css({'background-color':'#FFF6AB','border-radius':'8px'});
							}
					});
			
			$("#txtserial").blur(function()
					{
							if(this.value=="")
							{ 
								$("#txtserial").focus();
								$("#txtserial").css("background-color","#FADBD8");	
							}
							else
							{
								$("#txtserial").css({'background-color':'#FFF6AB','border-radius':'8px'});
							}
					});
					$("#txtdes").blur(function()
							{
									if(this.value=="")
									{ 
										$("#txtdes").focus();
										$("#txtdes").css("background-color","#FADBD8");	
									}
									else
									{
										$("#txtdes").css({'background-color':'#FFF6AB','border-radius':'8px'});
									}
							});
					
					$("#txtadd").blur(function()
							{
									if(this.value=="")
									{ 
										$("#txtadd").focus();
										$("#txtadd").css("background-color","#FADBD8");	
									}
									else
									{
										$("#txtadd").css({'background-color':'#FFF6AB','border-radius':'8px'});
									}
							});
					
					$("#txtphone").blur(function()
 		 					{
 		 							if(this.value=="")
 		 							{
 		 								$("#txtphone").focus();	
 		 								$("#txtphone").css("background-color","#FADBD8");	
 		 								
 		 							}
 		 							else
 		 							{  
 		 								var letterNumber ="^[789]\\d{9}$";;
 		 								if(document.getElementById("txtphone").value.match(letterNumber))
 		 								{	
 		 									
 		 									$("#txtphone").css({'background-color':'#FFF6AB','border-radius':'8px'});
 		 								}
 		 								else
 		 								{
 		 									$("#txtphone").focus();	
 		 									$("#txtphone").css({'background-color':'#FADBD8','border-radius':'8px'});		
 		 								}
 		 							}
 		 					});
 		 					$("#txtcity").blur(function()
 									{
 											if(this.value=="")
 											{ 
 												$("#txtcity").focus();
 												$("#txtcity").css("background-color","#FADBD8");	
 											}
 											else
 											{
 												$("#txtcity").css({'background-color':'#FFF6AB','border-radius':'8px'});
 											}
 									});
});
	



</script>
<style type="text/css">
    .top
    {
      background-color: black;
        padding-top: 1px;
        padding-bottom: 1px;
        font-weight: bold;
       
        color: white;
        
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
</style>
</head>
<body onload="doonload();">
<!-- navbar -->
<nav class="navbar navbar-inverse" style=" background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); ">
   <div class="container-fluid">
      
      <div  class="nav "style="margin-left: 470px;">
         <h1 style="color: white;margin-top: 20px;" >Complaint Form</h1>
      </div>
     
   </div>
</nav>
<br>

<form  method="post" id="frm" action="ComlaintController" enctype="multipart/form-data">
<div class="container col-md-10 col-md-offset-1 form-group">
<table class="table">

<tr>
   <td><lable>Customer ID*<span style="padding-left: 170px; display: none;margin-top: -20px;font-size: 11px;" id="err">(Use At least 8 character contain 0-9,a-z,A-Z and At least one special character)</span></lable>
   <td><input type="text" class="form-control" id="txtcid" name="txtcid" >
</tr>
<tr>
   <td>Customer Name*
   <td><input type="text" class="form-control" id="txtcname" name="txtcname" >
</tr>


<tr>
   <td>Product*
   <td><select  class="form-control" id="comboproduct" name="comboproduct" onchange="dochange1();"  >
       <option value="none">Select</option>
       </select>
</tr>


<tr>
<td>Type of Product* 
<td><select class="form-control" id="combotype" name="combotype" onchange="dochange2();">
    <option value="select">Select</option>
    </select>
</tr>


<tr>
<td>Modal no.*
<td><select id="lstmodal" class="form-control"name="lstmodal"  value="Modal no."multiple="multiple">

</select>


<tr>
<td>Serial No.*
<td><input type="text" class="form-control" name="txtserial" id="txtserial">
</tr>


<tr>
<td>Problem Description*
<td><input type="text" class="form-control" name="txtdes" id="txtdes">
</tr>


<tr>
<td>Picture
<td><input type="file" accept="image/*" name="samplefile" id="samplefile" class="form-control"  onchange="previewpic(this);" style="width:575px; float: left;"/>
 <img src="" name="sampleimg" id="sampleimg" width="100" height="100" style="margin-left: 8px">
</tr>

<tr>
<td>Address*
<td><input type="text" class="form-control" name="txtadd" id="txtadd">
</tr>


<tr>
<td>Phone no.*
<td><input type="number" class="form-control" name="txtphone" id="txtphone">
</tr>

<tr>
<td>City*
<td><input type="text" class="form-control" name="txtcity" id="txtcity">
</tr>

<tr>
<td>Warranty Proof
<td><input type="file" accept="image/*" name="wproof" id="wproof" class="form-control"  onchange="previewproof(this);" style="width:575px; float: left;"/>
 <img src="" name="wimg" id="wimg" width="100" height="100" style="margin-left: 8px">
</tr>


<tr>
<td>IN Warranty
 <td><input type="radio" id="ywarranty" name="warranty" value="Yes" onclick="alertWarranty();">Yes
     <input type="radio" id="nwarranty" name="warranty" value="No" checked="true">No
</tr>

<tr>
  <td colspan="2"><input type="submit" class="form-control btn-primary" value="Submit" name="btnsub" id="btnsub" />
</tr>

</table>
   
</div>
</form>

 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>