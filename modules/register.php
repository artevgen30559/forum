<?php
session_start();
include('db.php');

$nickname = $_POST['nickname'];
$login = $_POST['login'];
$password = $_POST['password'];
$hash = password_hash($password, PASSWORD_DEFAULT);

$sql = "
    INSERT IGNORE INTO users (nickname, login, password) VALUES (:nickname, :login, :password)
";

$stmt = $pdo->prepare($sql);
$params = [
    'nickname' => $nickname,
    'login' => $login,
    'password' => $hash
];

if ($stmt->execute($params)) {
    $_SESSION['login'] = null;
    $_SESSION['login'] = $login;
    echo json_encode('Register success');
}
