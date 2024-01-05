<?php
//ini_set('display_errors', 1);
//error_reporting(E_ALL);

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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Manuale|Montserrat+Alternates&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="css/styles.php">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/x-icon" href="assets/img/logos/iso-1.svg">

</head>

<body>


<header>
    <div id="headerContainer" class="index"></div>

    <?php
    $mysqli = new mysqli('localhost', 'root', '', 'uplaydb');

    if ($mysqli->connect_error) {
        die("Conexión fallida: " . $mysqli->connect_error);
    }

    $sql = "SELECT Nombre, Director, Sinopsis, Ruta, rutabg, Categoria FROM peliculas";
    $result = $mysqli->query($sql);

    if ($result->num_rows > 0) {
        $background = array();
        while ($row = $result->fetch_assoc()) {
            // Reemplazar barras invertidas escapadas en la ruta
            $row['Nombre'] = str_replace('\\\\/', '/', $row['Nombre']);
            $row['Director'] = str_replace('\\\\/', '/', $row['Director']);
            $row['Sinopsis'] = str_replace('\\\\/', '/', $row['Sinopsis']);
            $row['Ruta'] = str_replace('\\\\/', '/', $row['Ruta']);
            $row['rutabg'] = str_replace('\\\\/', '/', $row['rutabg']);
            $row['Categoria'] = str_replace('\\\\/', '/', $row['Categoria']);
    
            // Obtener la extensión del archivo de la ruta
            $extension = pathinfo($row['rutabg'], PATHINFO_EXTENSION);
            $row['Nombre'] = $row['Nombre'];
            $row['Director'] = $row['Director'];
            $row['Sinopsis'] = $row['Sinopsis'];
            $row['Categoria'] = $row['Categoria'];
            $row['rutabg'] = $row['rutabg'];
            $row['Ruta'] = $row['Ruta'];
    
            $background[] = $row;
        }
    
        // Convertir el array a formato JSON
        $background = json_encode($background, JSON_UNESCAPED_UNICODE);
    
        // Guardar los datos en un archivo JSON
        file_put_contents('datos.json', $background);
    
        /* echo "Archivo JSON generado exitosamente."; */
            $directory_path = "js/";
            
            chmod($directory_path, 0755);
        } else {
        }
    


    $mysqli->close();
    ?>
    <div id="carousel-container" class="hoverStyle">
         <div id="slider-fg" class="hoverStyle"></div>
         <div id="banner">
            <img src="assets/img/logos/logo.svg" alt="uplay" >
            <h4>Tu plataforma de streaming para universitarios</h4>
        </div>
         <div id="image-carousel" class=hoverStyle>
            <!-- Las imágenes se añadirán dinámicamente aquí -->
        </div>
    </div>

    <button id="prev-btn" style="display:none">&lt;</button>
    <button id="next-btn" style="display:none">&gt;</button>
</header>




   <!-- BOTÓN GO-UP -->
   <button id="go-up" onclick="goUp()" type="button"><i class="fa-solid fa-arrow-up"></i></button>

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
            $query='SELECT Ruta, rutabg, Nombre, Director, idPelicula FROM peliculas';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($query);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = strlen($object->Ruta) > 0 ? $object->Ruta : "assets/img/peliculas/pf.jpg";
                    $bg = $object->rutabg;
            
                    echo '<figure data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img data-mobile-src="'.$bg.'" data-desktop-src="'.$foto.'" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
                    echo '</figcaption>';
                    echo '</figure>';
            
                    $contador++;
            
                    // Salir del bucle después de mostrar 8 elementos
                    if ($contador >= 8) {
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
            $query='SELECT Ruta, Nombre, Temporadas, idSerie FROM series';
            
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
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idSerie.'" onclick="showSerieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Temporadas: </strong>' . $object->Temporadas . '</p>';
                    echo '</figcaption>';
                    echo '</figure>';
            
                    $contador++;
            
                    // Salir del bucle después de mostrar 4 elementos
                    if ($contador >= 8) {
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
    <script src="js/submenu.js" data-header="header.php"></script> 
    <script src="js/details.js" data-header="header.php"></script> 
    <script src="js/submenu.js" data-header="header.php"></script> 
    <script src="js/goup.js"></script> 
    <script>

    function updateImageSources() {
        var windowWidth = window.innerWidth;
        var images = document.querySelectorAll('img[data-desktop-src]');

        images.forEach(function (image) {
            var desktopSrc = image.getAttribute('data-desktop-src');
            var mobileSrc = image.getAttribute('data-mobile-src');

            if (windowWidth <= 767 && mobileSrc) {
                // Cambiar a la versión móvil si está definida y el ancho de la ventana es menor o igual a 767 píxeles
                image.src = mobileSrc;
            } else {
                // Cambiar a la versión de escritorio
                image.src = desktopSrc;
            }
        });
    }

    window.addEventListener('resize', updateImageSources);
    window.addEventListener('DOMContentLoaded', updateImageSources);

    // Disparar el evento resize al cargar la página para cargar la imagen correcta
    window.dispatchEvent(new Event('resize'));

</script>

   

    

</body>

</html>
