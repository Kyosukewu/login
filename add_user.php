<?php
//處理新增使用者的功能
$dsn="mysql:host=localhost;dbname=member;charset=utf8";
$pdo=new PDO($dsn,'root','');

$acc=$_POST['acc'];
$pw=$_POST['pw'];
$name=$_POST['name'];
$birthday=$_POST['birthday'];
$addr=$_POST['addr'];
$email=$_POST['email'];
$education=$_POST['education'];

//寫入登入資料表
$insert_to_login="insert into `login`(`acc`,`pw`,`email`) values('$acc','$pw','$email')";
echo $insert_to_login;

//$pdo->query($insert_to_login); 回傳資料集(可能為陣列)
$pdo->exec($insert_to_login); //回傳成功/失敗/影響筆數
$select_login_user="select * from `login` where `acc`='$acc' && `pw`='$pw'";
$login_user=$pdo->query($select_login_user)->fetch();
$login_id=$login_user['id'];
echo "<br>註冊使用者ID";
echo $login_id;


//寫入使用者資料表

$insert_to_member="insert into `member`(`name`,`birthday`,`role`,`addr`,`education`,`login_id`) values('$name','$birthday','會員','$addr','$education','$login_id')";

$result=$pdo->exec($insert_to_member);

if($result){
    header("location:index.php?meg'新增成功'");
}else{
    header("location:index.php?meg'新增失敗'");
}

?>