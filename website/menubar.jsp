<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body style="background-color: white;">
<nav class=" navbar navbar-expand-lg bg-body-tertiary" >
    <div class="container-fluid" style="background-color: white;">
        <a class="navbar-brand" href="#"><img src="https://happigo.co/cdn/shop/files/Screenshot_2024-03-07_112617.png?v=1709791171&width=90"/></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cartview.jsp">cart</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Menu
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Banggles</a></li>
                        <li><a class="dropdown-item" href="#">Footwear</a></li>
                        <li><a class="dropdown-item" href="#">Cloths</a></li>
                        <li><a class="dropdown-item" href="#">jackets</a></li>
                        <li><a class="dropdown-item" href="#">accessaries</a></li>
                        <li><a class="dropdown-item" href="#">lockets</a></li>
                        <li><a class="dropdown-item" href="#">Nacklace</a></li>
                        <li><a class="dropdown-item" href="#">Earings</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
            
                 <div style=" position: relative;margin-right: 30px; "> 
                     <a class="nav-link" href="cartview.jsp" style="display:flex;"><img src="../img/icon/icons8-cart-30.png"> 
                  cart</a></div>
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>    
    </nav>

