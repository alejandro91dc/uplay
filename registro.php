<!DOCTYPE html>
<html lang="es">

<head>
    <title>Regístro Uplay</title>
    <meta charset="utf-8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="css/registro.css" rel="stylesheet" type="text/css">
</head>

<body>
<header>
        <h1>¡Regístrate hoy!</h1>
    </header>
    <main>
        <p class="instrucciones">Disfruta de grandes éxitos y de los mejores contenidos exclusivos.</p>
        <form action="insert.php" method="post">
            <label for="id">Usuario</label>
            <input type="text" id="id" name="id" placeholder="Usuario">
            <label for="pass">Contraseña</label>
            <input type="password" id="pass" name="pass" placeholder="Contraseña" required>
            <label for="pass">Elige tu color de perfil:</label></br>        
            <input type="radio" id="rosa" name="color" value="rosa"><input type="color" id="favcolor" name="favcolor" value="#FF9CE3">
            <input type="radio" id="verde" name="color" value="verde"><input type="color" id="favcolor" name="favcolor" value="#9CFFAC">
            <input type="radio" id="azul" name="color" value="azul"><input type="color" id="favcolor" name="favcolor" value="#9CF9FF">
            <input type="radio" id="violeta" name="color" value="violeta"><input type="color" id="favcolor" name="favcolor" value="#D99CFF">
      




            <input type="submit" value="Acceder al portal">
        </form>

</body>
</html>