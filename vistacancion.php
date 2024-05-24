<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crud_spotify</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

    <?php
    include_once('conexion.php');

    // Consulta para obtener los datos
    $sql = "SELECT * FROM cancion";
    $result = $conexion->query($sql);
    ?>

    <div class="container my-5">
        <table class="table table-striped table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>ID Canción</th>
                    <th>Nombre Canción</th>
                    <th>Artista</th>
                    <th>Fecha</th>
                    <th>Género</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                ?>
                        <tr>
                            <td><?php echo $row["id_can"]; ?></td>
                            <td><?php echo $row["nombre_can"]; ?></td>
                            <td><?php echo $row["artista_can"]; ?></td>
                            <td><?php echo $row["fecha_can"]; ?></td>
                            <td><?php echo $row["genero_can"]; ?></td>
                            <td><a href=""><img src="iconos/floppy-fill.svg"></td>
                            <td><a href=""><img src="iconos/trash-fill.svg"></a></td>
                        </tr>



                <?php
                    }
                } else {
                    echo "<tr><td colspan='5' class='text-center'>No se encontraron resultados</td></tr>";
                }
                ?>
            </tbody>
        </table>
    </div>

</body>

</html>