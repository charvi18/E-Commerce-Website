
<style>
    body{
    background-image: url('https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2017/10/website-pattern-1.jpg');
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
    font-family: Arial,sans-serif;
}
    .main-div{
        width: 100%;
        height: 600px;
       
        position: relative;
    }
    .main-div input{
      
        background-color: transparent;
       color:solid black;
        
    }
    .form-div{
        width: 40%;
        height: 80%;
        position: relative;
        left: 30%;
        top:10%;
     
        border-radius: 20px;
        box-shadow: 1px 1px 20px 10px rgb(230, 228, 228);
        text-align: center;
        padding: 20px;
       
    }
    .input-section{
        width: 70%;
        height: 15%;
       
        position: relative;
        left: 15%;
        text-align: left;
        padding-bottom: 10px;
        border-bottom: 1px solid  transparent;
    
    }
    .input-section p{
        margin-left: 10px;
    }
    .img-inp{
        position: relative;
        align-items: center;
        display: flex;
    }
    .img-inp input{
        height: 30px;
        width: 80%;
        border: 0px;
        
    }
    .input-section-forgot{
        text-align: right;
        margin-right: 100px;
    }
    .input-section-btn button{
       
       width: 70%;
       padding: 10px;
       background-color: aqua;
       border: 0px;
       border-radius: 10px;
    }
    
</style>
 

    <div class="main-div">
        <div class="form-div">
            <h2>Register</h2>
            <form action="../product" method="post">
             <div class=" input-section">
                <p>product_name</p>
                <div class="img-inp">
                <img src="./img/icons8-user-90.png" alt="" width="35px" height="35px">
                <input type="text" name="product_name" id="" placeholder="type product_name">
                </div>
     
            </div>
            <div class=" input-section">
                <p>product_rate</p>
                <div class="img-inp">
                <img src="./img/icons8-user-90.png" alt="" width="35px" height="35px">
                <input type="text" name="product_rate" id="" placeholder="type product_rate">
                </div>
    
            </div>
            
            <div class=" input-section">
                <p>product_information</p>
                <div class="img-inp">
                <img src="./img/icons8-phonecall-96" alt="" width="35px" height="35px">
                <input type="text" name="product_information" id="" placeholder="type product_information">
                </div>
    
            </div>
            
        
            <div class=" input-section-forgot">
               
                
                </div>
    
                <div class=" input-section-btn">
                   
                   <button type="submit">Register</button>
        
                </div>
                </form>
                    <div> <a href="index.jsp">Login</a></div>
            </div>
    
    
        </div>
    </div>
    
    