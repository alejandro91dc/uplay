<?php
// Obtén el ID de la película desde la URL
$idPelicula = $_GET['id'];


// Conecta a tu base de datos (reemplaza los valores según tus credenciales)
$conexion = new mysqli("localhost", "root", "", "uplaydb");

// Verifica la conexión
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Prepara la consulta SQL utilizando una declaración preparada para evitar inyecciones SQL
$sql = "SELECT * FROM peliculas WHERE idPelicula = ?";
$consulta = $conexion->prepare($sql);
$consulta->bind_param("i", $idPelicula);
$consulta->execute();

// Obtiene los resultados de la consulta
$resultado = $consulta->get_result();

// Verifica si se obtuvieron resultados
if ($resultado->num_rows > 0) {
    // Obtiene los datos de la película
    $fila = $resultado->fetch_assoc();
    $titulo = $fila['Nombre'];
    $director = $fila['Director'];
    $sinopsis = $fila['Sinopsis'];
    $categoria = $fila['Categoria'];
    $ruta = $fila['Ruta'];
    $rutabg = $fila['rutabg'];
    // Agrega más campos según sea necesario
} else {
    // Maneja el caso donde no se encontró ninguna película con ese ID
    echo "No se encontró ninguna película con el ID proporcionado.";
}

// Cierra la conexión
$conexion->close();
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
    <img src="<?php echo $rutabg; ?>" alt="">


<div id="individualContainer">
    <div id="individualContent">
        <h1 onclick="alert('Pum! Empieza la peli!!')"><i class="fa-solid fa-circle-play"></i></h1>
        <h1> <?php echo $titulo; ?></h1>
        <p>Director: <?php echo $director; ?></p>
        <p>Categoría:  <a href="peliculas.php?cat=<?php echo $categoria; ?>"><?php echo $categoria; ?></a></p>
        <p>Sinopsis: <?php echo $sinopsis; ?></p>
    </div>
    <div id="individualPoster">
        <img src="<?php echo $ruta; ?>" alt="">
    </div>
</div>

</header>
<!-- Agrega más elementos según sea necesario -->


    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="js/header-loader.js" data-header="header.php"></script> 
    <script src="js/submenu.js" data-header="header.php"></script> 
</body>
</html>
