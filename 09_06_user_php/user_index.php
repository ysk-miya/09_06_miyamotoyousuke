<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>USER登録</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }

        .flg {
            margin: 8px;
        }

        .navbar {
            background-color: pink;
        }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#">USER登録</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <!-- ここのリンク先を編集忘れずに -->
                    <li class="nav-item">
                        <a class="nav-link" href="../php04_sample/index.php">todo登録</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../php04_sample/select.php">todo一覧</a>
                    </li>
                    <!-- この上の２つ -->
                    <li class="nav-item">
                        <a class="nav-link" href="user_index.php">USER登録</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user_select.php">USER一覧</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <form method="post" action="user_insert.php">
        <div class="form-group">
            <label for="name">ユーザー名</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="your name">
        </div>
        <div class="form-group">
            <label for="lid">ログインID</label>
            <input type="text" class="form-control" id="lid" name="lid">
        </div>
        <div class="form-group">
            <label for="lpw">パスワード</label>
            <input type="password" class="form-control" id="lpw" name="lpw">
        </div>
        <div class="form-group">
            <input class="flg" type="radio" name="kanri_flg" value="0">一般
            <input class="flg" type="radio" name="kanri_flg" value="1">管理者
        </div>
        <div class="form-group">
            <input class="flg" type="radio" name="life_flg" value="0">アクティブ
            <input class="flg" type="radio" name="life_flg" value="1">非アクティブ
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>

</body>

</html>