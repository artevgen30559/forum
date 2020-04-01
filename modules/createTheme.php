<?php
session_start();
include('db.php');

// Find user who try create theme
$sql = "SELECT id_user FROM users WHERE login = :login";
$stmt = $pdo->prepare($sql);
$stmt->execute(['login' => $_SESSION['login']]);
$id_author = $stmt->fetchColumn();

$title = $_POST['title'];
$body = $_POST['body'];
$date = date('Y-m-d H:i:s'); // Format 2020-04-01 09:34:29

// Create theme
$sql = "INSERT INTO themes (id_author, title, body, date) VALUES (:id_author, :title, :body, :date)";
$stmt = $pdo->prepare($sql);
$params = [
    'id_author' => $id_author,
    'title' => $title,
    'body' => $body,
    'date' => $date
];

// Response
if ($stmt->execute($params)) {
    echo json_encode([
        'title' => $title,
        'id_author' => $id_author,
        'message' => 'Theme created'
    ]);
}
