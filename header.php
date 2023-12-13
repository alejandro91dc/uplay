<?php 
session_start(); 


?>

<header>
    <nav id="menu" class="uplayer <?php echo $_SESSION['color']; ?>">

        <i class="fas fa-bars"></i>
        <ul>
            <li><a href="index.html" class="option"><img  data-aos="zoom-right" data-aos-duration="1000" class="logo" src="/img/logo.svg"></a></li>
            <li data-aos="fade-down" data-aos-duration="1600"><a href="#enunciado" class="option">Acerca</a></li>
            <li data-aos="fade-down" data-aos-duration="1800"><a href="lugares.html" class="option">Lugares</a></li>
            <li data-aos="fade-down" data-aos-duration="2000"><a href="peliculas.html" class="option">Películas</a></li>
            <li data-aos="fade-down" data-aos-duration="2200"><a href="#bibliografia" class="option">Guía</a></li>
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
            <li data-aos="fade-down" data-aos-duration="2800"><i class="fa-solid fa-xmark option" class = "cierre"></i></li>
        </ul>
    </nav>
</header>