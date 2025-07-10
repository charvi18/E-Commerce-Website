<%
Cookie ck[]=request.getCookies();  
String name=null;
for (Cookie c : ck) { 
    String tname = c.getName(); 
    if (tname.equals("uname")) { 
                name = c.getValue(); 
    } 
} 
if(name!=null){
%>

<html>

<head>

</head>


<body>
    <style>
        .main-div{
            width: 100%;
            height: auto;
            background-color: rgb(244, 248, 248);
            text-align: center;
        }
        .home-div{
            width: 1000px;
            height: 600px;
            background-color: rgb(255, 255, 255);
            display: inline-block;
        }
        .topbar{
            width: 100%;
            height: 10%;
            position: relative;
            box-shadow: 0px 0px 10px 2px rgb(235, 234, 234);
          
        }
        .topbar-left{
            width:200px;
            height:100%;
            display: block;
            position: relative;
            padding: 15px;
           
        }
        
        .topbar-right{
            width:300px;
            height: 100%;
          
            position: absolute;
            right: 0px;
            top: 0px;
            display: inline-flex;
            align-items: center;
           
        }

        .topbar-right img{
                width: 30px;
                height: 30px;
                
        }
        .topbar-right p{
            margin-left: 10px;
        }
        .profile{
          
            width: 100px;
            position: absolute;
            right: 0px;
            padding: 10px;
        }
        .body-div{
            width: 100%;
            height: 90%;
            background-color: rgb(59, 252, 1);
            display: inline-flex;
            
        }
        .leftbar{
                width: 20%;
                height: 100%;
                background-color: aqua;
                
            
            }
        
        .rightbar{
            height: 100%;
                width:80%;
                background-color: rgb(6, 10, 0);
            }

        .profileedit{
           width: 200px;
           height: 300px;
           background-color: aquamarine;
           position:absolute;
           right: 0px;
           top: 60px;
           display: none;
        }
       
    </style>
  
    <div class="main-div">
        <div class="home-div">
         <div class="topbar">
            <div class="topbar-left">
                <span>Admin</span>
            </div>
            <div class="topbar-right">
                <img src="../img/icon/profile.png" alt="" srcset="">
                <p>User Name</p>
                   <div class="profile">
                    <img src="../img/account.png" alt="" srcset="">
                    <img src="../img/icon/icons8-arrow-down-90.png" onclick="showprofile()" style="width: 20px;height: 20px;" alt="" srcset="">
                   
                    <div class="profileedit" id="profile">
                           
                    </div>

                </div>
            </div>
        </div>
       <div class="body-div">
        <div class="leftbar">
            <jsp:include page="leftnavbar.jsp" />
        </div> 
        <div class="rightbar">

        </div> 

        </div> 
        </div>
    </div>

<script>
function showprofile(){
   var p = document.getElementById('profile') 
 
   if(p.style.display===""){
   p.style.display="block"
   }
   else if(p.style.display==="none"){
    p.style.display="block"
   }
   else{
    p.style.display="none"
   }
}

</script>
  
</body>

</html>



<%
}
else{
    response.sendRedirect("login.jsp");
    %>

  

    <%
}
%>
