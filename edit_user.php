<?php

include_once('header.php');
?>

<?php
//編輯會員資料

$dsn="mysql:host=localhost;dbname=member;charset=utf8";
$pdo=new PDO($dsn,'root','');


$user_id=$_GET['id']; //login 資料表的id .member 資料表login_id
$user_sql="select * from `login`,`member` where `login`.`id` = `member`.`login_id` AND `login`.`id`='$user_id'";
$user=$pdo->query($user_sql)->fetch();


echo "<pre>";
print_r ($user);
echo "</pre>";

?>
<div class="container">

<h2>編輯資料</h2>
<form action="add_user.php" method="post" class="col-md-6">
    <div class="list-group">
        <li class="list-group-item">帳號：<input type="text" name='acc'></li>
        <li class="list-group-item">密碼：<input type="password" name='pw'></li>
        <li class="list-group-item">姓名：<input type="text" name='name'></li>
        <li class="list-group-item">生日：<input type="date" name='birthday'></li>
        <li class="list-group-item">地址：<input type="text" name='addr'></li>
        <li class="list-group-item">email：<input type="text" name='email'></li>
        <li class="list-group-item">學歷：
            <select name="education" id="">
                <option value="國中">國中</option>
                <option value="高中">高中</option>
                <option value="大學/專科">大學/專科</option>
                <option value="碩士">碩士</option>
                <option value="博士">博士</option>
            </select>
        </li>
        <li class="list-group-item">角色：
        <select name="role" id="">
                <option value="會員">會員</option>
                <option value="VIP">VIP</option>
                <option value="管理員">管理員</option>
            </select>
        </li>
    </div>
    <input type="submit" value="確認新增" class="btn btn-primary my-3">
    <input type="reset" value="重置" class="btn btn-warning my-3">
</form>

</div>

<?php
include_once('footer.php');
?>
