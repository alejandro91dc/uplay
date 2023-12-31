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


.userHeader:hover::before {
  border-top-color: #60daaa;
  border-right-color: #60daaa;
  -webkit-transition: width 0.25s ease-out, height 0.25s ease-out 0.25s;
  transition: width 0.25s ease-out, height 0.25s ease-out 0.25s;
}
.userHeader:hover::after {
  border-bottom-color: #60daaa;
  border-left-color: #60daaa;
  -webkit-transition: border-color 0s ease-out 0.5s, width 0.25s ease-out 0.5s, height 0.25s ease-out 0.75s;
  transition: border-color 0s ease-out 0.5s, width 0.25s ease-out 0.5s, height 0.25s ease-out 0.75s;
}


li a:hover, .fa:hover, .fa-solid:hover {
  color: #<?php echo $color;?>;
}

.userHeader .fa-user {
color: #<?php echo $color;?>;
}
.hoverStyle {
    background: #fff0;
    border-bottom: none;
    transition: 4s;

}

.hoverStyle:hover {
    background: linear-gradient(180deg, rgba(22, 26, 34, 0) 0%, #<?php echo $color;?> 100%)!important;
    border-bottom: 3px solid #<?php echo $color;?>;

}

button:hover {
  box-shadow: 0px 10px 64px -4px #<?php echo $color;?>;
}
button:active {
  border-bottom: 3px solid #<?php echo $color;?>;
}


