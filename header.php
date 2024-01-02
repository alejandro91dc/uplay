
<?php 
session_start();
$color = $_SESSION['color'];


?>
<nav id="menu" class="uplayer userHeader">
<i class="fas fa-bars"></i>
<ul>
    <!-- IMAGEN HEADER ICONO USUARIO -->
    <li><a href="index.php" class="option"><img  data-aos="zoom-right" data-aos-duration="1000" class="logo" src="assets/img/logos/iso-1.svg"></a></li>
    
    <li data-aos="fade-down" data-aos-duration="1600"><a href="categorias.php" class="option">Categorías</a></li>
    <li data-aos="fade-down" data-aos-duration="1800"><a href="series.php" class="option">Series</a></li>
    <li data-aos="fade-down" data-aos-duration="2000"><a href="peliculas.php" class="option">Películas</a></li>
    <!-- <li data-aos="fade-down" data-aos-duration="2200"><a href="#bibliografia" class="option">Guía</a></li> -->

    <li data-aos="fade-down" data-aos-duration="2400" id="user-info"  onmouseenter="showDropdown()" onmouseleave="hideDropdown()">
        <i class="fa-solid fa-user userColor" id="user-icon"></i>
        <div id="user-dropdown" class="userHeader">
            <?php
                echo isset($_SESSION['nombre']) ? '<strong>'.$_SESSION['nombre'].'</strong></br>' : 'Usuario no autenticado';
            ?>
            <?php
                if (isset($_SESSION['usuario']) && $_SESSION['usuario']) {
                    echo '<a href="close_session.php" class="option"><i class="fa fa-sign-out" aria-hidden="true"></i> 
                    </a>';
                }
            ?>
        </div>
    </li>
    <!-- <li data-aos="fade-down" data-aos-duration="2800"><i class="fa-solid fa-user userColor"></i></li>
    <li data-aos="fade-down" data-aos-duration="2800"><i class="fa-solid fa-xmark option" class="cierre"></i></li> -->
</ul>
</nav>
