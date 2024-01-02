<!DOCTYPE html>
<html lang="es">

<head>
    <title>Categorías - Uplay</title>
    <meta charset="utf-8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="css/styles.php">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="headerContainer" class="index"></div>
<div id="filter-menu">
    <a href="#acción"><button>Acción</button></a>
    <a href="#comedia"><button>Comedia</button></a>
    <a href="#drama"><button>Drama</button></a>
    <a href="#historia"><button>Historia</button></a>
    <a href="#misterio"><button>Misterio</button></a>
    <a href="#musical"><button>Musical</button></a>
    <a href="#romance"><button>Romance</button></a>
    <a href="#terror"><button>Terror</button></a>

</div>

   <!-- BOTÓN GO-UP -->
<button id="go-up" onclick="goUp()" type="button"><i class="fa-solid fa-arrow-up"></i></button>



   <!-- SECCIÓN CATEGORÍAS -->
<section id="accion" style=" width:100vw">
    
    <h2> Acción </h2>

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
            $accion='SELECT * FROM peliculas WHERE categoria = "accion" UNION SELECT * FROM series WHERE categoria = "accion" ';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($accion);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
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
    
    <!-- SECCIÓN CATEGORÍAS -->
<section id="comedia" style=" width:100vw">
    
    <h2> Comedia </h2>

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
            $accion='SELECT * FROM peliculas WHERE categoria = "comedia" UNION SELECT * FROM series WHERE categoria = "comedia" ';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($accion);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
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

    <!-- SECCIÓN CATEGORÍAS -->
<section id="drama" style=" width:100vw">
    
    <h2> Drama </h2>

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
            $accion='SELECT * FROM peliculas WHERE categoria = "drama" UNION SELECT * FROM series WHERE categoria = "drama" ';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($accion);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
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

    <!-- SECCIÓN CATEGORÍAS -->
<section id="historia" style=" width:100vw">
    
    <h2> Historia </h2>

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
            $accion='SELECT * FROM peliculas WHERE categoria = "historia" UNION SELECT * FROM series WHERE categoria = "historia" ';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($accion);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
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

    <!-- SECCIÓN CATEGORÍAS -->
<section id="misterio" style=" width:100vw">
    
    <h2> Misterio </h2>

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
            $accion='SELECT * FROM peliculas WHERE categoria = "misterio" UNION SELECT * FROM series WHERE categoria = "misterio" ';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($accion);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
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

    <!-- SECCIÓN CATEGORÍAS -->
<section id="musical" style=" width:100vw">
    
    <h2> Musical </h2>

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
            $accion='SELECT * FROM peliculas WHERE categoria = "musical" UNION SELECT * FROM series WHERE categoria = "musical" ';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($accion);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
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

    <!-- SECCIÓN CATEGORÍAS -->
<section id="romance" style=" width:100vw">
    
    <h2> Romance </h2>

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
            $accion='SELECT * FROM peliculas WHERE categoria = "romance" UNION SELECT * FROM series WHERE categoria = "romance" ';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($accion);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
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

    <!-- SECCIÓN CATEGORÍAS -->
<section id="terror" style=" width:100vw">
    
    <h2> Terror </h2>

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
            $accion='SELECT * FROM peliculas WHERE categoria = "terror" UNION SELECT * FROM series WHERE categoria = "terror" ';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($accion);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            $contador = 0;

            if ($result->num_rows != 0) {
                while ($object = $result->fetch_object()) {
                    $foto = $object->Ruta;
            
                    if (strlen($foto) == 0) {
                        $foto = "assets/img/peliculas/pf.jpg";
                    }
            
                    echo '<figure style="background: grey; width:490px" data-id="'.$object->idPelicula.'" onclick="showMovieDetails(this)">';
                    echo '<img src="' . $foto . '" alt="">';
                    echo '<figcaption class="hoverStyle">';
                    echo '<h3>' . $object->Nombre . '</h3>';
                    echo '<p><strong>Director: </strong>' . $object->Director . '</p>';
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


<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="js/header-loader.js" data-header="header.php"></script> 
<script src="js/details.js" data-header="header.php"></script> 
<script src="js/submenu.js" data-header="header.php"></script> 
<script src="js/goup.js"></script> 



</body>

</html>