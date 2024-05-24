<?php
$servidor   = 'localhost';
$usuario    = 'root';
$contrasena = '';
$bd = 'prueba_spotify';

// se crea la conexión
$conexion = new mysqli($servidor, $usuario, $contrasena, $bd);

// se valida la conexión
if ($conexion->connect_error) {
    die('Hubo un fallo en la conexión ' . $conexion->connect_error);
}

// Consulta de prueba
$sql = "SELECT * FROM cancion LIMIT 1";
$result = $conexion->query($sql);

if ($result->num_rows > 0) {
    // Mostrar datos de la consulta
    while ($row = $result->fetch_assoc()) {
        echo "id_can: " . $row["id_can"] . " - Nombre: " . $row["nombre_can"] . "<br>";
    }
} else {
    echo "No se encontraron resultados";
}

// Cerrar conexión
$conexion->close();
