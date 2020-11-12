<?php
$title="白金會員中心";
include_once('header.php');
?>
<body>
  <h1 class="d-flex justify-content-between">白金會員中心
  <span>
    <a class="btn btn-light" href="logout.php">登出</a>
  </span>
  </h1>
  
  尊爵的<?php
  session_start();
      if (isset($_SESSION['login'])) {
        echo $_SESSION['login'];
      } ?>你好，歡迎你
</body>

</html>