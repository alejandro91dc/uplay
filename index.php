<?php


// Verifica si el usuario está autenticado
include('seguridad.php');

if (!isset($_SESSION['usuario'])) {
    // El usuario no está autenticado, redirige a la página de registro o inicio de sesión
    header("Location: login.php");
    exit();
}

?>

<!DOCTYPE html>
<html lang="es">

<head>
    <title>Uplay</title>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Manuale|Montserrat+Alternates&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="css/styles.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div id="headerContainer" class="index"></div>
    <section style="height:100vh; width:100vw">
    
    

    <div class="gallery">

            <?php
            //Conexión a la base de datos
            $mysqli=new mysqli('localhost','root','','uplaydb');
            //Definimos el charset para las tildes y las eñes
            $mysqli->set_charset('utf8');
            if ($mysqli->connect_errno) {
                header('Location: index.php?error='.ERR_CONN);
            }
            //Se buscan todos los usuarios en la base de datos
            $query='SELECT * FROM users';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($query);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            if($result->num_rows!=0) {
                    while($object=$result->fetch_object()){
                    $foto=$object->foto;
                    if(strlen($foto) == 0) {
                        //$foto="assets/img/users.jpg";
                        $foto="assets/img/peliculas/pf.jpg";
                        
                        echo '<div style="background: grey; height:700px width:90px"> </div>';
                    }
                    ?>
            <figure style="background: grey; height:700px width:490px">
                <img src="<?php echo $foto ?>" alt="">
                <figcaption>
                    <h3><?php echo $object->nombre ?></h3>
                    <p><strong>Identificador: </strong><?php echo $object->identificador ?></p>
                </figcaption>
            </figure>

            <?php
            }
            }
            ?>
        </div>



    </section>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="js/header-loader.js" data-header="header.php"></script> 
</body>

</html>
