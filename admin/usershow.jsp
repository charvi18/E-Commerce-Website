<html>
<head>
    <title>home page</title>

</head>

<body >
   <style>
    .main-div{
        width: 100%;
        height: 600px;
        background-color: aqua;

    }
    .main-div-top{

        width: 100%;
        height: 20%;
        background-color: rgb(60, 255, 0);
    }
    .main-div-last{
        width: 100%;
        height: 80%;
        background-color: rgb(255, 0, 234);
        display: inline-flex;
    }
    .main-div-last-left{
        width: 20%;
        height: 100%;
        background-color: rgb(0, 255, 255);
    }
    .main-div-last-right{
        width: 80%;
        height: 100%;
        background-color: rgb(216, 216, 216);
    }
   </style>
    <div class="main-div">
        
        <div class="main-div-top">
        </div>
        <div class="main-div-last">
            <div class="main-div-last-left">
                <jsp:include page="menubar.jsp"/>
            </div>
            <div class="main-div-last-right">
                <h1>usershow</h1>
            </div>
        </div>
    </div>
</body>

</html>