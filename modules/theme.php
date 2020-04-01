<?php
require('db.php');
session_start();

if (!isset($_SESSION['login'])) header('Location: /');

$title = $_GET['title'];
$id_author = $_GET['author'];

// Get data theme
$sql = "SELECT * FROM themes INNER JOIN users ON id_author = id_user WHERE title = :title AND id_author = :id_author LIMIT 1";
$stmt = $pdo->prepare($sql);
$params = [
    'title' => $title,
    'id_author' => $id_author
];
$stmt->execute($params);

$result = $stmt->fetch();
if (empty($result)) header('Location: /');

$body = $result['body'];
$nickname = $result['nickname'];
$date = $result['date'];
