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
        // $sql = "INSERT INTO users VALUES ('$id',
        //     '$clave','$identificador','$email','$foto','$color')";

$sql = "INSERT INTO `users` (`idAcceso`,`identificador`,`clave`,`nombre`,`foto`,`color`) VALUES (NULL,'$id','$pass','email','foto','$color');";
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Uplay</title>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Manuale|Montserrat+Alternates&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="css/styles.php">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/x-icon" href="assets/img/logos/iso-1.svg">

</head>

<body>


<header style="justify-content:center; align-items:center">
<img src="assets/img/logos/logo.svg" alt="uplay" style="width:20%">
    <?php 
    if(mysqli_query($conn, $sql)){
            echo "<h2 style='margin:0em; margin-top: 2em; margin-bottom: 0; text-align:center' >Bienvenido </h2> </br>  <h1 class='userHeader' style='margin:0; text-align:center'> $id </h1>  </br> <h4 style='margin:0;'> Prepara las palomitas </h4>
            <a href='index.php'><button id='input-button' >Entrar</button></a>";

        } else{
            echo "ERROR: Hush! Sorry $sql. "
                . mysqli_error($conn);
        }

        // Close connection
        mysqli_close($conn);
        ?>

        
</header>
</body>
</html>



</section>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="js/header-loader.js" data-header="header.php"></script> 
    <script src="js/header-slider.js" data-header="header.php"></script> 
    <script src="js/submenu.js" data-header="header.php"></script> 
    <script src="js/details.js" data-header="header.php"></script> 
    <script src="js/submenu.js" data-header="header.php"></script> 
    <script src="js/goup.js"></script> 

</body>

</html> 

       
        
  
</body>

</html>