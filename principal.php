<?php 
//Incluimos el script seguridad.php al inicio. De esta forma,
//comprobaremos si el usuario está identificado. Si está identificado,
//mostraremos la página sin problema. Si no lo está, seguridad.php
//enviará al usuario al index, donde deberá introducir sus datos
include('seguridad.php');
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Página principal</title>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Manuale|Montserrat+Alternates&display=swap" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
</head>

<body>
    <header>
        <h1>Página principal</h1>
    </header>
    <main>
        <p>¡Usuario identificado correctamente!</p>
        <figure>
            <?php
            if($_SESSION['foto']!=null) {
                ?>
                <img src="<?php echo $_SESSION['foto'] ?>" alt="">
                <?php
            } else {
                ?>
                    <img src="img/users.jpg" alt="">
                <?php
            }
            ?>
            <figcaption>
                <?php
                echo '<strong>'.$_SESSION['nombre'].'</strong>';
                ?>
            </figcaption>
        </figure>
    </main>
</body>

</html>
