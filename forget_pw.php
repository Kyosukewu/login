<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>忘記密碼</title>
</head>
<body>

<?php
if(isset($_POST['email'])){
    $dsn="mysql:host=localhost;dbname=member;charset=utf8";
    $pdo=new PDO($dsn,'root','');
    $sql="select * from login where email='{$_POST['email']}'";
    $chk=$pdo->query($sql)->fetch();
    if(!empty($chk)){
        $res=$chk['pw'];
    }else{
        $res="查詢不到你的密碼喔?";
    }
}

?>


    <form action="" method="post">
    <input type="text" name="email">
    <input type="submit" value="查詢">
    </form>
    <span><?php
    if(isset($res)){
        echo "<br>您的密碼是：".$res; 
    }
    ?></span>
</body>
</html>