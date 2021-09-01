<?php 

// Nos conectamos a la base de datos
try {
	$conexion = new PDO('mysql:host=localhost;dbname=curso_paginacion', 'root', '');
} catch (PDOException $e) {
	echo 'ERROR: '. $e->getMessage();
	die();
}

// Establecemos el numero de pagina en la que el usuario se encuentra.
$pagina = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;

// Establecemos cuantos post por pagina queremos cargar.
$postPorPagina = 5;

// Revisamos desde que articulo vamos a cargar, dependiendo de la pagina en la que se encuentre el usuario.
$inicio = ($pagina > 1) ? ($pagina * $postPorPagina - $postPorPagina) : 0 ;

// Preparamos la consulta SQL.
$articulos = $conexion->prepare("
	SELECT SQL_CALC_FOUND_ROWS * FROM articulos
	LIMIT $inicio, $postPorPagina
");

// Ejecutamos la consulta
$articulos->execute();
$articulos = $articulos->fetchAll();

// Comprobamos que haya articulos, sino entonces redirigimos.
if (!$articulos) {
	header('Location: http://localhost/tutoriales/curso_php/Practicas/paginacion/');
}

// Calculamos el total de articulos, para despues conocer el numero de paginas de la paginacion.
$totalArticulos = $conexion->query('SELECT FOUND_ROWS() as total');
$totalArticulos = $totalArticulos->fetch()['total'];

// Calculamos el numero de paginas que tendra la paginacion.
$numeroPaginas = ceil($totalArticulos / $postPorPagina);

require 'index.view.php';

?>