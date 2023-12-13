<?php
//Este fragmento de código lo utilizaremos para comprobar si el usuario
//se ha identificado. Lo añadiremos importando el archivo (como en
//principal.php) en todas las páginas en las que el usuario tenga
//que estar identificado para poder acceder

//Constante con el error que puede ocurrir
define('ERR_NO_IDENTIF',3); //El usuario no se ha identificado

//Acceso a la sesión 
session_start(); 

//Accedemos a la variable de sesión para comprobar si existe
//un identificador de usuario almacenado. Si existe no hacemos
//nada y se le mostraría la página en la que el acceso está
//restringido. Si no existe, es porque no se ha identificado,
//por lo que le volvemos a mandar al index indicando que el
//error es 3, es decir, que el usuario no se ha identificado
if(!isset($_SESSION['usuario'])){
    //Vamos a la página inicial mostrando el error y salimos
    //del script
   	header('Location: login.php?error='.ERR_NO_IDENTIF); 
} 
?>



