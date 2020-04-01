<?php
include('db.php');

$query = $pdo->query("SELECT * FROM themes INNER JOIN users ON id_author = id_user");
$themes = $query->fetchAll();
