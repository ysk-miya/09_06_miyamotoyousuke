<?php
// セッションのスタート
session_start();

//0.外部ファイル読み込み
include('functions.php');

// ログイン状態のチェック
checkSessionId(); //チェック

if ($_SESSION['kanri_flg'] == 0) {
  $menu = menu1();
} else {

  $menu = menu3();
}


//1.  DB接続します
$pdo = connectToDb();

//２．データ登録SQL作成
$sql = 'SELECT * FROM php02_table';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//３．データ表示
$view = '';
if ($status == false) {
  showSqlErrorMsg($stmt);
} else {
  while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    // var_dump($result['']);
    $view .= '<li class="list-group-item">';
    $view .= '<p>' . $result['deadline'] . '-' . $result['task'] . '</p>';
    $view .= '<a href="detail.php?id=' . $result['id'] . '" class="btn btn-outline-primary">編集</a>';
    $view .= '<a href="delete.php?id=' . $result['id'] . '" class="btn btn-outline-danger">削除</a>';
    $view .= '</li>';
  }
}

?>


<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>todoリスト表示</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <style>
    div {
      padding: 10px;
      font-size: 16px;
    }

    .navbar {
      background-color: lightyellow;
    }
  </style>
</head>

<body>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light">
      <a class="navbar-brand" href="#">todo一覧</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <!-- ここで表示（function.phpよりmenu1引用） -->
          <?= $menu ?>
        </ul>
      </div>
    </nav>
  </header>

  <div>
    <ul class="list-group">
      <?= $view ?>
    </ul>
  </div>

</body>

</html>