<?php
//共通で使うものを別ファイルにしておきましょう。

//DB接続する関数（PDO）
function connectToDb()
{
    $dbn = 'mysql:dbname=gsacfd04_06;charset=utf8;port=3306;host=localhost';
    $user = 'root';
    $pwd = '';

    try {
        return new PDO($dbn, $user, $pwd); //ここを変更
    } catch (PDOException $e) {
        exit('dbError:' . $e->getMessage());
    }
}

//メニューバー
function menu()
{
    $menu = '<li class="nav-item"><a class="nav-link" href="../php04_sample/index.php">todo登録</a></li><li class="nav-item"><a class="nav-link" href="../php04_sample/select.php">todo一覧</a></li>';
    $menu .= '<li class="nav-item"><a class="nav-link" href="../php04_sample/logout.php">ログアウト</a></li>';
    return $menu;
}


//SQL処理エラー
function showSqlErrorMsg($stmt)
{
    $error = $stmt->errorInfo();
    exit('sqlError:' . $error[2]);
}

function h($str)
{
    return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}
