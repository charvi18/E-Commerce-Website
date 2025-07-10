
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Detail Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        padding: 20px;
    }
    .container {
        max-width: 600px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
.containerhead{
    text-align: center;
}
    .form-group {
        margin-bottom: 20px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
    }
    .form-group input[type="text"],
    .form-group select {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .form-group select {
        height: 34px;
    }
    .btn {
        display: inline-block;
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
    }
    .btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h2 class="containerhead">Product Detail Form</h2>
    <form action="../Productinfo" method="POST" enctype="multipart/form-data">
     
            </select>
        </div> 
        <div class="form-group">
            <label>product_name</label>
            <input type="text"  name="product_name" required>
           
        </div>

        <div class="form-group">
            <label>product_category</label>
            <input type="text" name="product_category">
        </div>

        <div class="form-group">
            <label for="addressLine1">mrp_rate </label>
            <input type="text" id="mrp_rate" name="mrp_rate" required placeholder="mrp_rate">
        </div>
        <div class="form-group">
            <label >sell_rate </label>
            <input type="text"  name="sell_rate" placeholder="sell_rate,flat(optional)">
        </div>
        <div class="form-group">
            <label for="city">product_information</label>
            <input type="text" id="product_information" name="product_information" required>
        </div>

        <div class="form-group">
            <label>size</label>
            <select  name="size" required>
                <option>Select size</option>
                <option>
                    s
                </option>
                <option>
                    M
                </option>
                <option>
                    L
                </option>
                <option>
                    XL
                </option>
                <option>
                    XXL
                </option>
                <option>
                    3XL
                </option>
                <option>
                    4XL
                </option>
                <!-- Add more options here -->
            </select>
        </div>
        
        <div class="form-group">
            <label >colour</label>
            <input type="text" name="colour" required>
        </div>

        
        <div class="form-group">
            <label>rating</label>
            <select  name="rating" required>
                <option>Select rating</option>
                <option>
                    1
                </option>
                <option>
                    2
                </option>
                <option>
                    3
                </option>
                <option>
                    4
                </option>
                <option>
                    5
                </option>
                
                <!-- Add more options here -->
            </select>
        </div>

        <div class="form-group">
            <label >rating_information</label>
            <input type="text" name="rating_information" required>
        </div>

        <div class="form-group">
            <label >single_image</label>
            <input type="file" name="image" required>
        </div>

        <div class="form-group">
            <label >multiple_image1</label>
            <input type="text" name="multiple_image1" required>
        </div>

        <div class="form-group">
            <label >multiple_image2</label>
            <input type="text" name="multiple_image2" required>
        </div>

        <div class="form-group">
            <label >multiple_image3</label>
            <input type="text" name="multiple_image3" required>
        </div>

        <div class="form-group">
            <label >multiple_image4</label>
            <input type="text" name="multiple_image4" required>
        </div>
        <div class="form-group">
            <label >product_brand</label>
            <input type="text" name="product_brand" required>
        </div>
        <div class="form-group">
            <label >product_material</label>
            <input type="text" name="product_material" required>
        </div>

        <div class="form-group">
            <label >product_pattern</label>
            <input type="text" name="product_pattern" required>
        </div>

        <div class="form-group">
            <label >chart_size_image</label>
            <input type="text" name="chart_size_image" required>
        </div>
        <button type="submit" class="btn">Submit</button>
    </form>
</div>
</body>
</html>