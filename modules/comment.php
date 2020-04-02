<?php
session_start();
require('db.php');

// Get data of theme
$id_theme = $_GET['id_theme'];

// Get data of comment
$date = date('Y-m-d H:i:s');
$body = $_POST['body'];
$author = $_SESSION['login'];

// Get data of author
$sql = "SELECT * FROM users WHERE login = :login LIMIT 1";
$stmt = $pdo->prepare($sql);
$stmt->execute(['login' => $author]);
$authorData = $stmt->fetch();

// Insert comment
$sql = "INSERT INTO comments (id_theme, id_author, body, date)
        VALUES (:id_theme, :id_author, :body, :date)";
$stmt = $pdo->prepare($sql);
$params = [
    'id_theme' => $id_theme,
    'id_author' => $authorData['id_user'],
    'body' => $body,
    'date' => $date
];
$stmt->execute($params);

echo json_encode([
    'nickname' => $authorData['nickname'],
    'date' => $date,
]);
