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
     
     $(document).ajaxStart(function(){ $("#wait").show();  });
	 $(document).ajaxStop(function(){ $("#wait").hide(); });
 	
     
       $(document).ready(function(){
    	 
    	   $("#sslogin").click(dosubitlogs);
    	   function dosubitlogs(){
    		   var url=$("#logfs").serialize();
    		   var serid=document.getElementById("ser_id").value;
    		  // alert(url);
    		   $.get("ServicePersonPasswordcheck?"+url+"&btn=check",function(data,status){
    			   var checker=1;
    			   //alert("hiiiiii");
    			   if(data==checker)
    				   {
    				   window.location="ServicepersonDashboard.jsp?serid="+serid;
    				   }
    			   else{
    			   alert(data);
    			     $("#ser_pass").css({'background-color':'#EDBB99','border-radius':'8px'});//<-----not working 	
    			   }
    		   });
    	   }
    	   var sidd;
    	   $("#sschanepass").click(dochangepass);
    	   function dochangepass(){
    		   var url=$("#changes").serialize();
    		   alert(url);
    		   sidd=document.getElementById("servid").value;
    		   alert(sidd);
    		   $.get("ServicePersonPasswordcheck?"+url+"&btn=check",function(data,status){
    			   var checker=1;
    			   if(data==checker)
    				   {
    				  // $("#sschanepass").click("data-toggle='modal' data-target=''#newpassword'");
    				   $('#newpassword').modal('show'); 
    				  
    				   }
    			   else{
    			   alert(data);
    			     // $('#changepassword').modal('show');
    			    $("#newpass2").css({'background-color':'#EDBB99','border-radius':'8px'});//<-----not working 
    			   }
    		   });
    	   }
    	  
    	   $("#ssubmit").click(doupdatepass);
    	   function doupdatepass(){
    		   var url=$("#sudate").serialize();
    		 //  alert(url);
    		   $.get("ServicePersonPasswordcheck?"+url+"&btn=updatepass&sid="+sidd+"",function(data,status){
    			   alert(data);
    		   });
    	   }
    	   $("#adminsub").click(doadminsubm);
    	   function doadminsubm(){
    		   var url=$("#admfrm").serialize();
    		  // alert(url);
    		  
    		   $.get("adminprofiledetail?"+url+"&btn=admincheck",function(data,status){
    			   var i=1;
    			   if(i==data)
    				   {  
    				     var adid=document.getElementById("adid").value;
    				    
    				     window.location="AdminDashboard.jsp?adid="+adid;
    				   }
    			   else{
    				   alert(data);
    				   $("#add_pass").css({'background-color':'#EDBB99','border-radius':'8px'});//<-----not working 
    			   }
    		   });
    	   }
    	   $("#btnsend").click(domailsend);
    	   function domailsend(){
    		   var url=$("#contactForm").serialize();
    	  
    		   $.get("HomepageEmailServlet?"+url+"",function(data,status){
    			   
    			   alert(data);
    			   
    		   });
    		   
    	   }
    	   
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
     
       .font{
           font-size: 24px;
           margin-top: 8px;
           }
          .fonttext{
             height: 56px;
             margin-top: 1px;
             
             }
            .box:hover{
             border:7px  solid #D2CEBF  ;
             border-radius:10px 10px 10px 10px;
             transition: all 0s ease;
            }
            .box{
            margin-top: 50px;
            margin-bottom: 40px;
            }
            .hov{
            color: #331616;
            }
            .hov:hover{
            text-decoration: none;
            font-weight: bold;
             color: #331616;
            }
            .abou{
              margin-top: 60px;
              background-color: #EFEFEB;
            }
            .cli{
            margin-top: 40px;
            margin-bottom: 40px;
            }
            .cont{
            background-color:black;
            background-image:  url('Pictures/7f6be3d2743ad84cac47652ad19bc4e9.jpg');
          
            }
            .txtC{
              font-size:70px;
              color: white;
              font-weight: bold;
              margin-top: 130px
              
            }
            .passw{
            color: red;
            }
            .passw:hover{
            text-transform: none;
            }
            .eva{
           
            }
            .carousel-content {
  position: absolute;
  bottom: 60%;
  left: 25%;
  color: white;
  font-size: 60px;'
  z-index:30;
  text-shadow: 0 1px 2px rgba(0,0,0,.6);
}
.toTop {
    position: fixed;
    bottom: 10px;
    right: 10px;
    cursor: pointer;
}
      </style>
     
  </head>
  <body>
  
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
                        <a class=" toptext" href="#home" style="font-size: 21px; font-weight: bold;">Home</a>
                    </li>
                    <li>
                        <a class=" toptext" href="#service" style="font-size: 21px;  font-weight: bold;">Services</a>
                    </li>
                    <li>
                        <a class=" toptext" href="#about" style="font-size: 21px;  font-weight: bold;">Developer</a>
                    </li>
                    <li>
                        <a class=" toptext" href="#contact" style="font-size: 21px;  font-weight: bold;">Feedback</a>
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

<!-- HOME -->
<div class="row" >
<div class="col-md-12"  style=" margin-left: 0px;margin-right: 0px; " >
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
       <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>  
   
       <!-- Wrapper for slides -->
   
    <div class="carousel-inner" role="listbox">
      <div class="item active" > 
       <img src="Pictures/bnnr-commercial-automation-1.jpg" alt="Avoid Pizza" width="100%" height="700px"  >
         <div class="carousel-content">
              <p>Welcome To Automation System!</p>
         </div>
         <div class="carousel-caption">
            Pic-1
         </div>
      </div>
      
      
       <div class="item " > 
       <img src="Pictures/o.jpg" alt="Avoid Pizza" width="100%" height="700px"  >
         <div class="carousel-content">
              <p>Welcome To Automation System!</p>
         </div>
         <div class="carousel-caption">
            Pic-1
         </div>
      </div>
      
      
      <div class="item " > 
       <img src="Pictures/n.jpg" alt="Avoid Pizza" width="100%" height="700px"  >
         <div class="carousel-content">
              <p>Our Aim is to provide services to our customers conviniently!</p>
         </div>
         <div class="carousel-caption">
            Pic-1
         </div>
      </div>
      
     
      
    </div>
    
    
   
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
 </div>
   
</div>      
</div>     
<br>



<!-- service -->
<div class="row" id="service"> 
      <div class="row" >
           <div class="col-lg-12 text-center" style="margin-top: 90px;">
                 <h1 class="section-heading" style="font-weight: bold; font-size: 44px;color: #331616">Services</h1>
                 <h2 class="section-subheading text-muted">What We Do</h2>
                 <h5 class="text-muted">Our mission is to provide you quality and Effected service </h5>
           </div>
      
      </div>    
     <div class="row col-md-offset-2"  style="margin-bottom: 110px">
          <div class="text-center">
        
                <div class="col-md-3 box" >
                 <img src="img/custo.gif" alt="Customer" width="80px" height="80px" style="margin-top: 20px">
                    <h3 style="color: blue"><a href="" class="hov">Customer</a></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    <a href="CustomerLogin.jsp" class="btn " role="button" style="background-image: url('Pictures/butt.jpg');color:white;width: 100%;margin-bottom: 30px;">Customer SignIn</a>    
                </div>
                
                <div class="col-md-3 box">
                    <img src="img/serv.jpg" alt="Admin" width="80px" height="80px" style="margin-top: 20px">
                    <h3  style="color: blue"><a href="" class="hov">Service Person</a></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                     <a  class="btn " role="button" style="background-image: url('Pictures/butt.jpg');color:white;width: 100%;margin-bottom: 30px;"data-toggle="modal" data-target="#servicePersonlogin">Service Person SignIn</a> 
                </div>
               
                <div class="col-md-3 box">
                     <img src="img/admi.png" alt="Admin" width="80px" height="80px" style="margin-top: 20px">
                    <h3  style="color: blue"><a href="" class="hov">Admin</a></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                     <a href="#" class="btn " role="button" style="background-image: url('Pictures/butt.jpg');color:white;width: 100%;margin-bottom: 30px;" data-toggle="modal" data-target="#adminPersonlogin">Admin SignIn</a> 
                </div>
          
          </div>
      </div>
   </div>



 <!-- ABOUT -->
   <div class="row abou" id="about">
          <div class="col-lg-12 text-center" style="margin-top: 60px;">
                    <h1 class="section-heading" style="font-weight: bold; font-size: 48px;color: #331616">Developer</h1>
                    <h2 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h2>
          </div>
          <div class="row col-md-offset-2 col-md-8 col-sm-offset-7" >
              <div class="col-md-4" style="margin-top: 40px;margin-left: 10px;">
                <div>
                <h3 align="right">2009-2011</h3>
                <h4 class="subheading" align="right">Our Humble Beginnings</h4>
                </div>
                <div class="timeline-body " >
                <p class="text-muted " align="right">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                </div> 
              </div>
              <div class="col-md-3" style="margin-top: 60px;margin-left: 40px;">
               <img src="img/adminpic.png" alt="adminpic" class="img-thumbnail img-circle" width="200px" height="200px" style="border: solid #B7B7B1;">
              </div>
           </div>
           
            <div class="row col-xs-offset-5 col-md-10 col-sm-offset-5" style="margin-bottom: 80px;margin-top: -60px;" >
           
              <div class="col-md-2 " style="margin-top: 100px;">
               <img src="img/adminpic.png" alt="adminpic" class="img-thumbnail img-circle" width="200px" height="200px" style="border: solid #B7B7B1;">
              </div>
                 <div class="col-md-5" style="margin-top: 100px">
                <div>
                <h3 align="left">2009-2011</h3>
                <h4 class="subheading" align="left">Our Humble Beginnings</h4>
                </div>
                <div class="timeline-body " >
                <p class="text-muted ">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                </div> 
              </div>
           </div>
           
    </div>
   
    
    <!--contect  -->
    <div class="cont" id="contact" >
     <div class="container" >
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="section-heading txtC">Feedback</h1>
                    <h3 class="section-subheading text-muted" >Your Suggestion and Advice is important for us.</h3>
                </div>
            </div>
            <div class="row" style="margin-top: 20px">
                <div class="col-md-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6" >
                               
                                <div class="form-group" >
                                    <input type="text" class="form-control" placeholder="Your Name *" name="name" required data-validation-required-message="Please enter your name."  style="height: 60px" > 
                                </div>
                                
                                <div class="form-group" style="margin-top: 35px" >
                                    <input type="email" class="form-control" placeholder="Your Email *" name="email" required data-validation-required-message="Please enter your email address."  style="height: 60px">     
                                </div>
                                
                                <div class="form-group" style="margin-top: 35px" >
                                    <input type="tel" class="form-control" placeholder="Your Phone *" name="phone" required data-validation-required-message="Please enter your phone number."  style="height: 60px">
                                </div>
                                
                            </div>
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" name="message" required data-validation-required-message="Please enter a message." style="height: 250px" ></textarea>
                                </div>
                            </div>
                            
                            <div class="col-md-12 text-center" style="margin-top: 40px;margin-bottom: 80px;">
                                <button type="button" style="width: 240px;height: 70px;font-size: 25px;font-weight: bold;" id="btnsend">Send Message</button>
                            </div>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--  -->


<a  href="#home" class="toTop">
<img src="Pictures/uparrow.jpg" width="40px" height="40px" class=" img-circle">
</a>

    <!-- nav-bottom -->
    <nav class="navbar navbar-default navbar-bottom" role="navigation" style="height: 80px; background-color: white;">
     <div class="container">
            <div class="row"> 
                
                <div class=" navbar-brand col-md-3 col-md-offset-2">
                    <ul class="list-inline social-buttons">
                        <li><a href="https://twitter.com/signup/"><img src="img/bott/twit.png" width="50px" height="50px"></img></a>
                        </li>
                        <li><a href="http://www.facebook.com"><img src="img/bott/face.png" width="50px" height="50px"></a>
                        </li>
                        <li><a href="https://www.linkedin.com/"><img src="img/bott/link.png" width="50px" height="50px"></a>
                        </li>
                    </ul>
                </div>
                
                <div class="col-md-3 col-md-offset-2 " >
                    <span class=" navbar-brand copyright" style="margin: 15px">Copyright &copy; Paras Kohli</span>
                </div>
            </div>
        </div>
        </nav>
                
          <!--Admin login Modal -->
        
<div class="modal" id="adminPersonlogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      <div class="modal-header ">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title text-success" id="myModalLabel">Admin Login</h4>
      </div>
      <div class="modal-body">
         <!-- form -->
       <form id="admfrm">
       <div class="form-group">
          <label for="adid" class="font text-success">Admin Id</label>
          <input type="text" class="form-control fonttext" id="adid" placeholder="Admin Id" name="adid">
       </div>
       <div class="form-group" style="margin-bottom: 8px;">
          <label for="add_pass" class="font text-success">Password</label>
          <input type="password" class="form-control fonttext" id="add_pass" placeholder="Password" name="adpass">
       </div>
       <div class="form-group"  >
         <label for="exampleInputFile" style="float: right; font-size: 16px;"><a data-toggle="modal"  data-target="#mailcheck"><span  data-dismiss="modal" style="color: red;">Change Password</span></a></label>
       </div>
       </form>
      </div>
      <div class="modal-footer"style="margin-top: 18px;">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" id="adminsub">Submit</button>
      </div>
    </div>
  </div>
</div>
  <!-- mailcheck -->
  
 <div class="modal fade" id="mailcheck" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <p>Please Check Your Registered Mail-Id For Re-set The New Password   </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  
    
<!--Service login Modal -->


<div class="modal  " id="servicePersonlogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      <div class="modal-header ">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title text-success" id="myModalLabel">Service Person Login</h4>
      </div>
      <div class="modal-body">
         <!-- form -->
       <form id="logfs">
       <div class="form-group">
          <label for="ser_id" class="font text-success">Service Person Id</label>
          <input type="text" class="form-control fonttext" id="ser_id" placeholder="Service Person Id" name="ser_id">
       </div>
       <div class="form-group" style="margin-bottom: 8px;">
          <label for="ser_pass" class="font text-success">Password</label>
          <input type="password" class="form-control fonttext" id="ser_pass" placeholder="Password" name="ser_pass">
       </div>
       <div class="form-group"  >
         <label for="exampleInputFile" style="float: right; font-size: 16px;"><a data-toggle="modal"  data-target="#changepassword"><span  data-dismiss="modal" style="color: red;">Change Password</span></a></label>
       </div>
       </form>
      </div>
      <div class="modal-footer"style="margin-top: 18px;">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" id="sslogin">Submit</button>
      </div>
    </div>
  </div>
</div>




<!-- change Password Modal -->

<div class="modal fade" id="changepassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title text-success" id="myModalLabel">Change Password</h4>
      </div>
      <div class="modal-body">
            <!-- form -->
       <form id="changes">
         <div class="form-group">
          <label for="servid" class="font text-success">Service Person Id</label>
          <input type="email" class="form-control fonttext" id="servid" placeholder="Service Person Id" name="ser_id" >
        </div>
        <div class="form-group" style="margin-bottom: 8px;">
          <label for="newpass2" class="font text-success">Password</label>
          <input type="password" class="form-control fonttext" id="newpass2" placeholder="Password"  name="ser_pass">
        </div>
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-success"  id="sschanepass" data-dismiss="modal" >Submit</button>
      </div>
    </div>
  </div>
</div>

<!-- New Password Modal -->

<div class="modal fade" id="newpassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title text-success" id="myModalLabel">Set New Password</h4>
      </div>
      <div class="modal-body">
            <!-- form -->
       <form id="sudate">
        
        <div class="form-group" style="margin-bottom: 8px;">
          <label for="exampleInputPassword1" class="font text-success">New Password</label>
          <input type="password" class="form-control fonttext" id="exampleInputPassword1" placeholder="New Password" name="npass">
        </div>
        <div class="form-group" style="margin-bottom: 8px;">
          <label for="newpass22" class="font text-success">Re-Password</label>
          <input type="password" class="form-control fonttext" id="newpass22" placeholder="Re-Password" name="repass">
        </div>
        
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-success" id="ssubmit">Submit</button>
      </div>
    </div>
  </div>
</div>

      <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>
</html>