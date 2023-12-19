<?php 
session_start();
$color = $_SESSION['color'];


?>

<header>
    <nav id="menu" class="uplayer userHeader">

        <i class="fas fa-bars"></i>
        <ul>
            <!-- IMAGEN HEADER ICONO USUARIO -->
            <!-- <li><a href="index.html" class="option"><img  data-aos="zoom-right" data-aos-duration="1000" class="logo" src="assets/img/users.jpg"></a></li> -->
            
            <li data-aos="fade-down" data-aos-duration="1600"><a href="#enunciado" class="option">Categorías</a></li>
            <li data-aos="fade-down" data-aos-duration="1800"><a href="lugares.html" class="option">Series</a></li>
            <li data-aos="fade-down" data-aos-duration="2000"><a href="peliculas.html" class="option">Películas</a></li>
            <!-- <li data-aos="fade-down" data-aos-duration="2200"><a href="#bibliografia" class="option">Guía</a></li> -->
            <li data-aos="fade-down" data-aos-duration="2400"><a href="gallery.html" class="option"> 
                <?php
                // Verifica si $_SESSION['nombre'] está definida antes de usarla
                echo isset($_SESSION['nombre']) ? '<strong>'.$_SESSION['nombre'].'</strong>' : 'Usuario no autenticado';
            ?>
                </a></li>
                <li data-aos="fade-down" data-aos-duration="3000">
                <?php
                    // Verifica si el usuario está autenticado antes de mostrar la opción de cerrar sesión
                    if (isset($_SESSION['usuario']) && $_SESSION['usuario']) {
                        echo '<a href="close_session.php" class="option">Cerrar Sesión</a>';
                    }
                ?>
            </li>
                <li data-aos="fade-down" data-aos-duration="3000">
                <?php
                    // Verifica si el usuario está autenticado antes de mostrar la opción de cerrar sesión
                    

                ?>
            </li>
            <li data-aos="fade-down" data-aos-duration="2800"><i class="fa-solid fa-user userColor"></i></li>
            <li data-aos="fade-down" data-aos-duration="2800"><i class="fa-solid fa-xmark option" class = "cierre"></i></li>
        </ul>
    </nav>
    <div id="main-slider">
        <img src="assets/img/fondoheader.jpg">
        <div id="slider-bg"></div>
        <div id="slider-fg"></div>
    </div>
</header>