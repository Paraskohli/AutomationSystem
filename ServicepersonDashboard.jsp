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
    	// alert("lol");
    	 $.getJSON("Servicepersonfetchalldata?serid="+serid, function(records)
    			 {
    		        
    		    //    alert( JSON.stringify(records));
    		      
    			    $('#sampleimg').attr('src', "project_temp/"+records.pic);
    			    $("#sename").html("  "+records.Namee+"");
    				
    		     });
     }
    	 $(document).ready(function(){
    			window.onload=diableback();
    		  	   function diableback(){
    		  		   window.history.forward();
    		  		 alldata();
    		  	   }
    		  	   
    		  	   window.onpageshow=function (evt){
    		  		   if(evt.persisted){
    		  			   diableback();
    		  		   }
    		  	   }
    		   
    	    	 $("#profper").click(doprof);
    	    	 function doprof(){
    	    		 $("#profper").attr('href','servicepersonprofile.jsp?serid='+serid);
    	    		
    	    	 }
    	    	 
    	    	 $("#serlog").click(doserlog);
    	    	 function doserlog(){
    	    		 $("#serlog").attr('href','ServicePersonLog.jsp?serid='+serid);
    	    	 }
    	    	 
    	    	 $("#serperbutt").click(serperbutt);
    	    	 function serperbutt(){
    	    		 $("#serperbutt").attr('href','servicePersonbutton.jsp?serid='+serid);
    	    		
    	    	 }
    	    	 $("#smssendkro").click(smssendkro);
    	    	 function smssendkro(){
    	    		
    	    	  $.get("Sms_in_Serviceperson_togetCustmerdetail?serid="+serid+"&btn=fetch",function(data,status){
    	  			alert(data);
    	    		  
    	  		   });
    	    		
    	    	 }
    	     });
    
     
     </script>
</head>
  <body >
  
<nav class="navbar navbar-inverse" style=" background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); ">
   <div class="container-fluid">
    
    <div class="nav" ">
<h1 style="color: white;margin-top: 25px;">Service Person Dashboard</h1>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><form action="Testing"><input type="submit" value="Signout"></form></li>
    </ul>
  </div>
</nav>

<div class="row">
    <div class="col-lg-2" style="background-image: url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg'); height: 650px;wid">
    <br><br> <div style="margin-top: 10px;">
               <img src="img/adminpic.png" alt="adminpic" class="img-thumbnail img-circle" width="75px" height="75px" style="border: solid #B7B7B1;" id="sampleimg">
               <span class="fontcolor"  style=" font-size: 23px;margin-left: 10px;color:#D4D3CF;" id="sename">Name</span>
            </div> 
            <br><br>
         <div id="colp">
          <ol style="list-style: none">
           <li class="fontcolor" ><span class="fontcolor glyphicon glyphicon-user background" style="margin-left: -30px ;font-size: 35px;"></span><span class="fontcolor"  style=" font-size: 28px; margin-left: 14px; "><a href="" target="page" id="profper" style="color: white; ">Your Profile</a> </span></li>
           <br>
           <li class="fontcolor" ><span class="fontcolor glyphicon glyphicon-eye-open background" style="margin-left: -30px;font-size: 30px;"></span><span class="fontcolor"  style=" font-size: 27px;  margin-left: 10px;"><a href="" target="page" id="serlog" style="color: white;">Task Log</a> </span></li>
          <br>
           <li class="fontcolor"><span class="glyphicon glyphicon-eye-close background" style="margin-left:-30px;font-size: 30px;"></span><span class="fontcolor"  style=" font-size: 25px;  margin-left: 5px;"><a  href="" target="page"  id="serperbutt" style="color: white;"> Tasks Pending</a></span></li>
           <br>
           <li class="fontcolor"><span class="glyphicon glyphicon-envelope background" style="margin-left: -30px;font-size: 30px;"></span><span class="fontcolor"  style=" font-size: 25px; margin-left: 5px;"><a  target="page" id="smssendkro" style="color: white;"> SMS Task Detail</a></span></li>
          </ol>
         </div> 
    </div> 
    <div class="col-md-10">
  <iframe name="page" src="" height="650px" width="100%"   overflow-y:hidden; scrolling="yes" ></iframe>
     </div>    
     </div>
 <div class="row">
      <div class="col-md-4 col-md-offset-5 " >
                    <span class=" navbar-brand copyright" style="margin: 1px;">Copyright &copy; Paras Kohli</span>
      </div>
</div>
<!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>