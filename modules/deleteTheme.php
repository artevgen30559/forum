<?php
require('db.php');

$id_theme = $_GET['id_theme'];

$sql = "DELETE FROM themes WHERE id_theme = $id_theme";
$result = $pdo->exec($sql);
header('Location: /');
