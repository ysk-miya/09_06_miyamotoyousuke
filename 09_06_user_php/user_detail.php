<?php
// 関数ファイルの読み込み
include('user_function.php'); //function.php に置いている関数を呼び出す

// getで送信されたidを取得
$id = $_GET['id']; //送られてきたid番号

//DB接続します
$pdo = connectToDb(); //関数

//データ登録SQL作成，指定したidのみ表示する
$sql = 'SELECT*FROM user_table WHERE id=:id'; //追加、ここスペルミス注意！！
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//メニューバー
$menu = menu();

//データ表示
if ($status == false) {
    // エラーのとき
    showSqlErrorMsg($stmt);
} else {
    // エラーでないとき
    $rs = $stmt->fetch(); // fetch()で1レコードを取得して$rsに入れる
    // $rsは配列で返ってくる．$rs["id"], $rs["task"]などで値をとれる
    // var_dump()で見てみよう
    // var_dump($rs);

    //データを取れたらinputタグの中にvalueで入れる。入れるのはすでにDBに入っている内容。
}


switch ($rs['kanri_flg']) {
    case 0:
        $checked0 = 'checked';
        $checked1 = '';
        break;
    case 1:
        $checked0 = '';
        $checked1 = 'checked';
}


switch ($rs['life_flg']) {
    case 0:
        $checked00 = 'checked';
        $checked11 = '';
        break;
    case 1:
        $checked00 = '';
        $checked11 = 'checked';
}

?>


        <!DOCTYPE html>
        <html lang="ja">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>ユーザー更新ページ</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
            <style>
                div {
                    padding: 10px;
                    font-size: 16px;
                }

                .radio {
                    margin: 8px;
                }
            </style>
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">USER更新</a>
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

            <form method="post" action="user_update.php">
                <div class="form-group">
                    <label for="name">ユーザー名</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="ユーザー名" value="<?= $rs['name'] ?>">
                </div>
                <div class=" form-group">
                    <label for="lid">ログインID</label>
                    <input type="text" class="form-control" id="lid" name="lid" placeholder="ログインID" value="<?= $rs['lid'] ?>">
                </div>
                <div class=" form-group">
                    <label for="lpw">パスワード</label>
                    <input type="password" class="form-control" id="lpw" name="lpw" placeholder="パスワード" value="<?= $rs['lpw'] ?>">
                </div>
                <div class=" form-group">
                    <label for="kanri_flg">管理フラグ</label>
                    <!-- <input type="hidden" name="cur_kanri_flg" value="<?= $rs['kanri_flg'] ?>"> -->
                    <input class="radio" type="radio" name="kanri_flg" value=0 <?= $checked0 ?> />一般
                    <input class="radio" type="radio" name="kanri_flg" value=1 <?= $checked1 ?> />管理者
                </div>
                <div class="form-group">
                    <label for="life_flg">アクティブフラグ</label>
                    <!-- <input type="hidden" name="cur_shift" value="<?= $rs['life_flg'] ?>"> -->
                    <input class="radio" type="radio" name="life_flg" value=0 <?= $checked00 ?> />アクセス
                    <input class="radio" type="radio" name="life_flg" value=1 <?= $checked11 ?> />非アクティブ
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
                <!-- idは変えたくない = ユーザーから見えないようにする-->
                <!-- 実は一番下に出ているがユーザーに見えないようにhidden.-->
                <input type="hidden" name="id" value="<?= $rs['id'] ?>">
            </form>

        </body>

        </html>