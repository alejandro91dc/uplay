<!DOCTYPE html>
<html lang="es">

<head>
    <title>PHP - Ejemplo 6</title>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Manuale|Montserrat+Alternates&display=swap" rel="stylesheet">
    <link href="css/registro.css" rel="stylesheet" type="text/css">
</head>

<body>
    <!-- En action definimos la página php que va a recoger los datos del formulario
             y a comprobar que son corretos.
             En method pondremos siempre post en los formularios -->
    <header>
        <h1>PHP. Ejemplo 6</h1>
    </header>
    <main>
        <p class="instrucciones">En este ejemplo, además del registro de usuarios del caso anterior, el usuario puede añadir una imagen de perfil. Esta foto de perfil se mostrará en la página principal cuando se identifique.</p>
        <form action="control.php" method="post">
            <label for="id">Identificador</label>
            <input type="text" id="id" name="id" placeholder="Identificador">
            <label for="pass">Contraseña</label>
            <input type="password" id="pass" name="pass" placeholder="Contraseña" required>
            <input type="submit" value="Acceder al portal">
        </form>

        <!-- Añadimos el vínculo para el registro de un nuevo usuario -->
        <p><a href="registro.html">Registrar nuevo usuario</a></p>

        <?php
        //Definimos los errores que podemos recibir
        define('ERR_CONN',1); //No se puede conectar a la base de datos
        define('ERR_USUARIO',2); //Usuario o contraseña incorrectos
        define('ERR_NO_IDENTIF',3); //El usuario no se ha identificado

        //Presentamos el error
        //Comprobamos que existe el parámetro error a través del método GET, porque lo
        //enviamos a través de la URL. Si existe, cogemos su valor. Según el valor,
        //el error será de conexión en la base de datos (error=1), usuario o contraseña
        //incorrectos (error=2) o usuario no identificado (error=3)
        if(isset($_GET['error'])){
            $error=(int)$_GET['error'];
            switch($error){
                case ERR_CONN:
                    echo '<p class="error">Error: No se ha podido conectar con la base de datos</p>';
                    break;
                case ERR_USUARIO:
                    echo '<p class="error">Error: Identificador o contraseña incorrectos</p>';
                    break;
                case ERR_NO_IDENTIF:
                    echo '<p class="error">Error: Debe identificarse para acceder al portal</p>';
                    break;
                default:
                    echo '<p class="error">Error desconocido</p>';
                    break;
            }
        }
        ?>
    </main>
</body>

</html>
