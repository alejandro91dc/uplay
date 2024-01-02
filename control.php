<?php
//Definimos una serie de errores para mostrarlos después
//Los guardamos como constantes para no tener que acordarnos
//de cuánto va a valer cada uno
define('ERR_CONN',1); //No se puede conectar a la base de datos
define('ERR_USUARIO',2); //Usuario o contraseña incorrectos

//Conexión a la base de datos
//Pasamos como parámetros el servidor en el que está (para nosotros,
//siempre localhost), el usuario ('root') y la contraseña (vacía)
//que tiene XAMPP para MySQL y el nombre de la base de datos.
//En este caso, nos queremos conectar a la base de datos 'usuarios'.
$mysqli=new mysqli('localhost','root','','uplaydb');
//Definimos el charset para las tildes y las eñes
$mysqli->set_charset('utf8');
if ($mysqli->connect_errno) {
    //Si hay error en la conexión (por ejemplo, porque no hemos
    //iniciado MySQL en el XAMPP) mandaremos al usuario al index,
    //pasándole como parámetro a través de GET (porque va en la
    //URL) el campo error=1, que identifica un error de conexión
    header('Location: login.php?error='.ERR_CONN);
}

//Consulta a realizar
//Selecciona el campo clave de la tabla acceso donde el identificado vale
//lo que ha escrito el usuario en el formulario, en el input con name='id'
//También buscamos el nombre del usuario, que nos servirá para mostrárselo
//en las páginas que tengan acceso restringido, en este caso, principal.php
$query='SELECT clave,nombre,foto,color FROM users WHERE identificador="'.$_POST['id'].'"';

//Obtención de resultados. Ejecutamos la consulta en la base de datos
//Los elementos de la tabla acceso que coincidan con la búsqueda, se
//almacenarán en la variable $result
$result=$mysqli->query($query);

//Si hay resultados es porque existe el usuario
//Extraemos de esos resultados el valor del campo clave, que será la
//contraseña del usuario.
//Lo guardamos en la variable $pass para poder comparar la contraseña
//almacenada en la base de datos con lo que ha escrito el usuario
if($result->num_rows!=0){
    //Guardamos el resultado que hemos encontrado en una variable auxiliar
    //Esto es porque cuando hacemos un fetch, no consultamos el valor del
    //resultado, sino que lo extraemos. Como en el resultado tenemos información
    //de dos valores que queremos obtener, la contraseña y el nombre del usuario,
    //debemos utilizar esta objeto auxiliar
    $object=$result->fetch_object();
    $pass=$object->clave;
    $nombre=$object->nombre;
    $foto=$object->foto;
    $color=$object->color;
}
else{
    //Si no hay resultados, es porque el identificador que ha escrito
    //el usuario en el formulario no está registrado en la base de datos
    //y, por tanto, el usuario no existe. Redirigiremos a index indicando
    //un error en la identificación de usuario con error=2
    header('Location: login.php?error='.ERR_USUARIO);
}

//Se comprueba la contraseña que ha escrito el usuario en el formulario, en
//el input con name='pass', con la que hay en la base de datos que ya hemos
//guardado en la variable $pass
if($_POST['pass']==$pass){
    //Si es correcto inicializamos la sesión y guardamos en ella el identificador
    //del usuario
    //Esto nos servirá para poder comprobar en seguridad.php si el usuario se ha
    //identificado, ya que, solo cuando se comprueba que usuario y contraseña
    //son correctos, se almacena información en la sesión
    session_start(); 
    $_SESSION['usuario']=$_POST['id'];
    //Guardamos también en la sesión el nombre del usuario, que lo mostraremos en
    //principal.php
    $_SESSION['nombre']=$nombre;
    //También almacenamos la ruta de la foto para mostrarla en principal.html
    $_SESSION['foto']=$foto;
    $_SESSION['color']=$color;
    //Como el usuario y la contraseña son correctos, después de almacenar los datos
    //en la sesión, redirigimos a principal.php, que es la página que tenemos con
    //acceso restringido
    header('Location: index.php');
}
else{
    //Si la contraseña no coincide con la que hay almacenada en la base de datos,
    //redirigiremos a index indicando un error en la identificación de usuario con error=2
    header('Location: login.php?error='.ERR_USUARIO); 
}
?>

