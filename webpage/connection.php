<?php
    if($_SERVER['REQUEST_METHOD']=='POST') {
        $db = new PDO('mysql:host=localhost;dbname=blog', 'sherlockholmes', 'kAwgwd3b9uD6KSGQ');
        $register_newUser_stmt = $db->prepare('INSERT INTO Users(username,email,password,fullname)
                                                VALUES (?,?,?,?)');
        $username = $_REQUEST['username'];
        $email = $_REQUEST['email'];
        $password = $_REQUEST['pwd'];
        $fullname = $_REQUEST['fullname'];

        $register_newUser_stmt->execute(array($username,$email,$password,$fullname));

        header('Location: index.php');
    }
    ?>