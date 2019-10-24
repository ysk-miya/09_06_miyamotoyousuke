<?php
//1. DB接続
include('user_function.php'); //function.php に置いている関数をこの２行で呼び出す
$pdo = connectToDb();

// ↓ 下の処理はfunction.phpに関数として置いておく

// $dbn = 'mysql:dbname=gsacfd04_06;charset=utf8;port=3306;host=localhost';
// $user = 'root';
// $pwd = '';

// try {
//   $pdo = new PDO($dbn, $user, $pwd);
// } catch (PDOException $e) {
//   exit('dbError:' . $e->getMessage());
// }

$menu = menu();

//データ表示SQL作成
$sql = 'SELECT * FROM user_table';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//データ表示
$view = '';
if ($status == false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit('sqlError:' . $error[2]);
} else {
    //Selectデータの数だけ自動でループしてくれる
    //http://php.net/manual/ja/pdostatement.fetch.php
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $view .= '<li class="list-group-item">';
        $view .= '<p>' . $result['name'] . '-' . $result['lid'] . '-' . $result['lpw'] . '-' . $result['kanri_flg'] . '-' . $result['life_flg'] . '</p>';
        $view .= '<a href="user_detail.php?id=' . $result['id'] . '" class="btn btn-outline-primary">編集</a>';
        $view .= '<a href="user_delete.php?id=' . $result['id'] . '" class="btn btn-outline-danger">削除</a>';
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
    <title>USERリスト表示</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }

        .navbar {
            background-color: pink;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#">USER一覧</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="user_index.php">USER登録</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user_select.php">USER一覧</a>
                    </li>
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