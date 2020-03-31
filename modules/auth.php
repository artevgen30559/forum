<?php
include('db.php');

$login = $_POST['login'];
$password = $_POST['password'];


$sql = "SELECT users.password FROM users WHERE login = :login";
$stmt = $pdo->prepare($sql);
$params = ['login' => $login];
$stmt->execute($params);

$hashPassword = $stmt->fetchColumn();

if(password_verify($password, $hashPassword)) {
    echo json_encode('Auth success');
} else {
    echo json_encode('User not found');
}
