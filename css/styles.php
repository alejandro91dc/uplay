<?php
session_start();

// Supongamos que obtienes el color de la base de datos
$color = $_SESSION['color'];
// Valida y sanea la entrada
// Establece el encabezado para indicar que es un archivo CSS
header("Content-type: text/css");
// Imprime los estilos CSS con el color dinámico
?>
.userHeader {
    color: #<?php echo $color;?>;
    border-bottom: 3px solid #<?php echo $color;?> ;
}

.userHeader .fa-user {
color: #<?php echo $color;?>;
}