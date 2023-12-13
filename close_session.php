<?php
session_start();

// Destruye todas las variables de sesión
$_SESSION = array();

// Si se desea destruir la sesión, también es posible utilizar session_destroy()
// session_destroy();

// Redirige al usuario al inicio de sesión
header("Location: login.php");
exit();
?>