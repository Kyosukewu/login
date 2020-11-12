<?php
$title="一般會員中心";
include_once('header.php');
?>

<body>
<h1 class="d-flex justify-content-between">一般會員中心
  <span>
    <a class="btn btn-light" href="logout.php">登出</a>
  </span>
  </h1>
  親愛的<?php
      if (isset($_COOKIE['login'])) {
        echo $_COOKIE['login'];
      }
      ?> 你好，歡迎你
</body>

</html>