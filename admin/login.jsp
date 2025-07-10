<%
Cookie ck[]=request.getCookies();  
String name=null;
for (Cookie c : ck) { 
    String tname = c.getName(); 
    if (tname.equals("uname")) { 
                name = c.getValue(); 
    } 
} 
if(name==null){
%>

<html>

    <head>
        <title>home page</title>

    </head>

    <body>
        <style>
            .main-div {
                width: 100%;
                height: 600px;

            }

            .logo {
                width: 100px;
                height: 100px;
                background-color: aqua;
                display: inline-flex;
                margin-bottom: 20px;
                border-radius: 50px;
            }

            .main-div-last-right {
                width: 100%;
                height: 100%;
                position: relative;
            }

            .form-div {
                position: relative;
                width: 30%;
                left: 40%;
                top: 10%;
            }

            .formproduct {

                height: 80%;
                background-color: rgb(255, 255, 255);
                position: relative;
                border-radius: 20px;
                text-align: center;
                padding-left: 5%;
                padding-right: 5%;
                padding-top: 10px;
                box-shadow: 1px 1px 10px 1px rgb(233, 231, 231);


            }

            .inputform {
                width: 100%;
                height: 50px;
                background-color: rgb(255, 255, 255);
                display: inline-flex;
                border-radius: 10px;
                border: 1px solid rgb(224, 223, 223);
                align-items: center;

                margin-bottom: 10px;

            }

            .inputform img {
                width: 30px;
                height: 30px;
                margin-left: 10px;
            }

            input {
                height: 40px;
                margin-left: 10px;
                width: 80%;
                border: 0px;
                background-color: #fff;
            }

            .button {
                font-size: large;
                color: #b9b8b8;
            }

            .button:hover {
                font-size: large;
                color: #797878;          
            }
        </style>
        <div class="main-div">

            <div class="main-div-last-right">
                <div class="form-div">
                    <form action="../Login" method="post">
                        <div class="formproduct">
                            <h1 style="color:#b3adad">Login</h1>
                            <div class="logo">
                                <img src="../img/icon/profile.png" alt="">
                            </div>
                            <div class="inputform">
                                <img src="../img/icon/icons8-user-100.png" alt="">
                                <input type="text" name="email" id="" placeholder="type email..">


                            </div>
                            <div class="inputform">
                                <img src="../img/icon/icons8-password-100.png" alt="">
                                <input type="password" name="password" id="" placeholder="type password...">


                            </div>
                            <div class="inputform">
                                <input type="submit" value="Login" class="button">


                            </div>
                            <div>
                                <a href="register.jsp">user not login ? SignUp</a>
                            </div>

                        </div>
                       
                    </form> 

                </div>
            </div>
            

        </div>
    </body>
 </html>



    <% } else
    {
         response.sendRedirect("admin.jsp"); %>



        <%
     } 
     %>