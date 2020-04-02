<?php
    require('../modules/db.php');
    $query = $pdo->query("SELECT * FROM comments INNER JOIN users ON id_user = id_author WHERE id_theme = $id_theme");
    $comments = $query->fetchAll();
?>
<section class="comments">
    <div class="container">
        <div class="row">
            <div class="col-12 comment-list">
                <?php
                    if (!empty($comments)) {
                        foreach($comments as $comment) {
                ?>
                <div class="card comment">
                    <div class="card-body">
                        <h5 class="card-title"><img src="/imgs/avatar.png"> Пользователь: <?php echo $comment['nickname'];?></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Добавлен: <?php echo $comment['date'];?></h6>
                        <p class="card-text"><?php echo $comment['body'];?></p>
                    </div>
                </div>
                <?php
                        }
                    }
                 ?>
            </div>
            <div class="col-12">
                <form class="add-comment-form" action="/modules/comment.php?id_theme=<?php echo $id_theme;?>" method="POST">
                    <!-- Quil editor start -->
                    <div id="body"></div>
                    <script>
                      var quill = new Quill('#body', {
                        theme: 'snow'
                      });
                    </script>
                    <!-- Quil editor end -->
                    <div class="mybtns">
                        <button style="margin-top: 10px;" type="submit" class="add-comment-btn btn btn-primary"><i class="fas fa-comments"></i> Добавить комментарий</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
