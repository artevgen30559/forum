<?php
session_start();
include('db.php');

$login = $_POST['login'];
$password = $_POST['password'];


$sql = "SELECT * FROM users WHERE login = :login";
$stmt = $pdo->prepare($sql);
$params = ['login' => $login];
$stmt->execute($params);

$result = $stmt->fetch();

if(password_verify($password, $result['password'])) {
    $_SESSION['status'] = null;
    if($result['status'] == 2) $_SESSION['status'] = 'Moderator';
    if($result['status'] == 3) $_SESSION['status'] = 'Administator';
    $_SESSION['login'] = null;
    $_SESSION['login'] = $login;
    echo json_encode('Auth success');
} else {
    echo json_encode('User not found');
}
