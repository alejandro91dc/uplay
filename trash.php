<!-- Esto es basurilla que puede servir-->

<section>
        <h2>Películas</h2>
        <div class="gallery">

            <?php
            //Conexión a la base de datos
            $mysqli=new mysqli('localhost','root','','uplaydb');
            //Definimos el charset para las tildes y las eñes
            $mysqli->set_charset('utf8');
            if ($mysqli->connect_errno) {
                header('Location: index.php?error='.ERR_CONN);
            }
            //Se buscan todos los usuarios en la base de datos
            $query='SELECT * FROM users';
            
            //Obtención de resultados. Ejecutamos la consulta en la base de datos
            //Los elementos de la tabla acceso que coincidan con la búsqueda, se
            //almacenarán en la variable $result
            $result=$mysqli->query($query);
            //Se hay resultados, se extraen nombre y foto de cada uno y se presentan
            if($result->num_rows!=0) {
                    while($object=$result->fetch_object()){
                    $foto=$object->foto;
                    if(strlen($foto) == 0) {
                        //$foto="assets/img/users.jpg";
                        echo '<div style="background: grey; height:700px width:90px"> </div>'
                    }
                    ?>
            <figure>
                <img src="<?php echo $foto ?>" alt="">
                <figcaption>
                    <h3><?php echo $object->nombre ?></h3>
                    <p><strong>Identificador: </strong><?php echo $object->identificador ?></p>
                </figcaption>
            </figure>

            <?php
            }
            }
            ?>
        </div>
        -->
        <?php
        //Presentamos el error
        if(isset($_GET['error'])){
            $error=(int)$_GET['error'];
            switch($error){
                case ERR_CONN:
                    echo '<p class="error">Error: No se ha podido conectar con la base de datos</p>';
                    break;
                default:
                    echo '<p class="error">Error desconocido</p>';
                    break;
            }
        }
        ?>
    </section>