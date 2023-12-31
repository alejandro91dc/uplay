<!DOCTYPE html>
<html lang="es">

<head>
    <title>Películas - Uplay</title>
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
    <button><a href="peliculas.php?cat=Todas">Todas</a></button>
    <button><a href="peliculas.php?cat=Ciencia Ficción">Ciencia Ficción</a></button>
    <button><a href="peliculas.php?cat=Terror">Terror</a></button>
    <button><a href="peliculas.php?cat=Misterio">Misterio</a></button>
    <button><a href="peliculas.php?cat=Drama">Drama</a></button>
    <button><a href="peliculas.php?cat=Musical">Musical</a></button>
    <button><a href="peliculas.php?cat=Comedia">Comedia</a></button>
</div>
    <div class="gallery">

<?php
//Conexión a la base de datos
$mysqli=new mysqli('localhost','root','','uplaydb');
//Definimos el charset para las tildes y las eñes
$mysqli->set_charset('utf8');
if ($mysqli->connect_errno) {
    header('Location: index.php?error='.ERR_CONN);
}

$cat = isset($_GET['cat']) ? $_GET['cat'] : 'Todas';

if ($cat === 'Todas') {
    // Si la categoría seleccionada es 'Todas', no aplicamos ningún filtro
    $sql = "SELECT * FROM peliculas";
} else {
    // Si se selecciona una categoría específica, aplicamos el filtro
    $sql = "SELECT * FROM peliculas WHERE Categoria = '$cat'";
}


//Se buscan todos los usuarios en la base de datos
$query='SELECT Ruta, Nombre, Director, idPelicula FROM peliculas';

//Obtención de resultados. Ejecutamos la consulta en la base de datos
//Los elementos de la tabla acceso que coincidan con la búsqueda, se
//almacenarán en la variable $result
$result=$mysqli->query($sql);
//Se hay resultados, se extraen nombre y foto de cada uno y se presentan
if($result->num_rows!=0) {
        while($object=$result->fetch_object()){
        $foto=$object->Ruta;
        if(strlen($foto) == 0) {
            //$foto="assets/img/users.jpg";
            $foto="assets/img/peliculas/pf.jpg";
            
            echo '<div style="background: grey; height:700px width:90px"> </div>';
        }
        ?>
<figure style="background: grey; height:700px width:490px" data-id="<?php echo $object->idPelicula ?>" onclick="showMovieDetails(this)">
    <img src="<?php echo $foto ?>" alt="">
    <figcaption class="hoverStyle">
        <h3><?php echo $object->Nombre ?></h3>
        <p><strong>Director: </strong><?php echo $object->Director ?></p>
    </figcaption>
</figure>

<?php
}
}
?>
</div>


<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="js/header-loader.js" data-header="header.php"></script> 
<script src="js/details.js" data-header="header.php"></script> 





</body>

</html>