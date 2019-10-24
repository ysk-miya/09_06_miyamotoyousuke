<?php
// 共通で使うものを別ファイルにしておきましょう。

// DB接続関数（PDO）
function connectToDb()
{
  $db = 'mysql:dbname=gsacfd04_06;charset=utf8;port=3306;host=localhost';
  $user = 'root';
  $pwd = '';
  try {
    return new PDO($db, $user, $pwd);
  } catch (PDOException $e) {
    exit('dbError:' . $e->getMessage());
  }
}

// SQL処理エラー
function showSqlErrorMsg($stmt)
{
  $error = $stmt->errorInfo();
  exit('sqlError:' . $error[2]);
}

// SESSIONチェック＆リジェネレイト
function checkSessionId()
{
  // ログイン失敗時の処理（ログイン画面に移動）

  if (!isset($_SESSION['session_id']) || $_SESSION['session_id'] != session_id()) {
    header('Location: login.php');
  } else {
    // ログイン成功時の処理（一覧画面に移動）
    session_regenerate_id(true); // セッションid􏰀再生成
    $_SESSION['session_id'] = session_id(); // セッション変数に格納
  }
}
// menuを決める
function menu1()
{
  $menu1 = '<li class="nav-item"><a class="nav-link" href="index.php">todo登録</a></li><li class="nav-item"><a class="nav-link" href="select.php">todo一覧</a></li>';
  $menu1 .= '<li class="nav-item"><a class="nav-link" href="logout.php">ログアウト</a></li>';
  return $menu1;
}


function menu2() //ログインしていないユーザー用
{
  $menu2 = '<li class="nav-item"><a class="nav-link" href="login.php">ログインページ</a></li><li class="nav-item"><a class="nav-link" href="select_nologin.php">一覧ページ</a></li>';
  // $menu2 .= '<li class="nav-item"><a class="nav-link" href="login.php">ログイン</a></li>';
  return $menu2;
}

function menu3()
{
  $menu3 = '<li class="nav-item"><a class="nav-link" href="index.php">todo登録</a></li><li class="nav-item"><a class="nav-link" href="select.php">todo一覧</a></li>';
  $menu3 .= '<li class="nav-item"><a class="nav-link" href="../06_09_user_php/user_index.php">USER登録</a></li><li class="nav-item"><a class="nav-link" href="../06_09_user_php/user_select.php">USER一覧</a></li>';
  $menu3 .= '<li class="nav-item"><a class="nav-link" href="logout.php">ログアウト</a></li>';
  return $menu3;
}
