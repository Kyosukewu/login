<?php

//$_SESSION['login']=null; //將值變空值
session_start();
unset($_SESSION['login']);
header("location:index.php");

?>