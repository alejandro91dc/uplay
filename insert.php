<!DOCTYPE html>
<html>

<head>
    <title>Insert Page page</title>
</head>

<body>
 
        <?php

        // servername => localhost
        // username => root
        // password => empty
        // database name => staff
        $conn = mysqli_connect("localhost", "root", "", "uplaydb");

        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. "
                . mysqli_connect_error());
        }

        // Taking all 5 values from the form data(input)
        $id = $_REQUEST['id'];
        $pass = $_REQUEST['pass'];
        $email = $_REQUEST['email'];
        $color = $_REQUEST['color'];
        $foto = 'foto';

      
        
        // We are going to insert the data into our sampleDB table
        $sql = "INSERT INTO users VALUES ('$id',
            '$clave','$identificador','$email','$foto','$color')";

$sql = "INSERT INTO `users` (`idAcceso`,`identificador`,`clave`,`nombre`,`foto`,`color`) VALUES (NULL,'$id','$pass','email','foto','$color');";


        // Check if the query is successful
        if(mysqli_query($conn, $sql)){
            echo "<h3>data stored in a database successfully."
                . " Please browse your localhost php my admin"
                . " to view the updated data</h3>";

            echo nl2br("\n$first_name\n $last_name\n "
                . "$gender\n $address\n $email");
        } else{
            echo "ERROR: Hush! Sorry $sql. "
                . mysqli_error($conn);
        }

        // Close connection
        mysqli_close($conn);
        ?>
  
</body>

</html>