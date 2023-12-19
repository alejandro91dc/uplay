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
    <link rel="stylesheet" type="text/css" href="css/styles.php">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
</head>

<body>


<header>
<div id="headerContainer" class="index"></div>


<div id="carousel-container">
    <div id="image-carousel">
        <!-- Las imágenes se añadirán dinámicamente aquí -->
    </div>
</div>

<button id="prev-btn" style="display:none">&lt;</button>
<button id="next-btn" style="display:none">&gt;</button>

        <div id="slider-fg" class="hoverStyle">
            <h1>TÍTULO DE LA PELÍCULA</h1>
            <h2> DIRECTOR DE LA PELÍCULA</h2>
            <p> Pues aquí va la sinopsis y tal pero para no olvidarme, tenía la idea de sustituir la imagen de la cabecera por un carrousel pero no quiero quitarla por no complicarme la cabeza asi que ykse.</p>
        </div>
    </div>
</header>





    <section style=" width:100vw">
    
    <h2> Películas </h2>

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
            $query='SELECT Ruta, Nombre, Director FROM peliculas';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($query);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
                    echo '</figcaption>';
                    echo '</figure>';
            
                    $contador++;
            
                    // Salir del bucle después de mostrar 4 elementos
                    if ($contador >= 4) {
                        break;
                    }
                }
            }

            ?>
    </div>
    
    <h2> Series </h2>

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
            $query='SELECT Ruta, Nombre, Director FROM peliculas';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($query);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey;  width:490px">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
                    echo '</figcaption>';
                    echo '</figure>';
            
                    $contador++;
            
                    // Salir del bucle después de mostrar 4 elementos
                    if ($contador >= 4) {
                        break;
                    }
                }
            }

            ?>
    </div>
    </section>


</body>
</html>



    </section>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="js/header-loader.js" data-header="header.php"></script> 
    <script src="js/header-slider.js" data-header="header.php"></script> 
</body>

</html>
