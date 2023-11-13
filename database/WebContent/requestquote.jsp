<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Request a Quote</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: flex-start; 
            height: 100vh;
            margin: 0;
            background-color: #282c36;
            color: #fff;
            font-family: 'Arial', sans-serif;
        }
        
        .form-container {
            text-align: center;
            padding: 20px;
            border: 1px solid #555;
            border-radius: 5px;
            background-color: #444;
            width: 80%;
            margin: 20px auto;
        }

        .input-plus {
            display: flex;
        }

        .inputs-set {
            border: none;
        }

        .input-field {
            border: none;
            border: 1px solid rgb(209, 209, 209);
            padding: 8px;
            margin-right: 4px;
            margin-bottom: 4px;
            display: block;
            background-color: #333;
            color: #fff;
        }

        input[type="submit"],
        input[type="button"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            margin-right: 10px;
        }
        
        a {
            text-decoration: none;
            color: #007BFF;
            display: inline-block;
            margin-top: 10px;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Request a Quote</h1>
        <form action="submitRequest" method="post">
            <input readonly value="Trees: 1" type="text" name="total" id="total" required>
            <fieldset class="inputs-set" id="trees" class="input-field">
                <fieldset class="inputs-set" id="tree" class="input-field">
                    <h4>Tree 1</h4>
                    
                    <input type="number" step="0.01" name="size1" id="size1" placeholder="Size of Tree in Feet" required><br>

                    <input type="number" step="0.01" name="height1" id="height1" placeholder="Height of Tree in Feet" required><br>

                    <input type="number" step="0.01" name="distance1" id="distance1" placeholder="Distance from House in Feet" required><br>
                    
                </fieldset>
           </fieldset>
           <textarea name="note" id="note" required placeholder="Notes"></textarea><br>
           <input type="submit" value="Submit">
           <a href="viewQuotes" target="_self"><input type="button" value="Back"></a>
        </form>
    </div>
    
    <script>
        instance = 1;
        const myForm = document.getElementById("trees");
        
        function addTree() {
            // create an input field to insert
            instance += 1;
            const total = document.getElementById("total");
            total.setAttribute("value", "Trees: " + instance);
            
            const tree = document.createElement("H4");
            const treeText = document.createTextNode("Tree " + instance); 
            tree.name = "tree";
            tree.id = "tree";
            tree.appendChild(treeText); 
            
            const sizeField = document.createElement("input");
            const heightField = document.createElement("input");
            const distanceField = document.createElement("input");
            
            // set input field data type to text
            sizeField.type = "number";
            heightField.type = "number";
            distanceField.type = "number";
                
            // set input field name
            sizeField.name = "size" + instance;
            heightField.name = "height" + instance;
            distanceField.name = "distance" + instance;
            
            // set input field id
            sizeField.id = "size" + instance;
            heightField.id = "height" + instance;
            distanceField.id = "distance" + instance;
            
            // set required
            sizeField.setAttribute("required", "");
            heightField.setAttribute("required", "");
            distanceField.setAttribute("required", "");
            
            // set required
            sizeField.setAttribute("step", "0.01");
            heightField.setAttribute("step", "0.01");
            distanceField.setAttribute("step", "0.01");
            
            // set placeholder
            sizeField.setAttribute("placeholder", "Size of Tree in Feet");
            heightField.setAttribute("placeholder", "Height of Tree in Feet");
            distanceField.setAttribute("placeholder", "Distance from House in Feet");
            
            // insert element
            myForm.appendChild(tree);
            myForm.appendChild(sizeField);
            myForm.appendChild(document.createElement("br"));
            myForm.appendChild(heightField);
            myForm.appendChild(document.createElement("br"));
            myForm.appendChild(distanceField);
            myForm.appendChild(document.createElement("br"));
        }
    </script>
</body>
</html>
