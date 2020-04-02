<?php
    require('../modules/theme.php');
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Тема <?php echo $title; ?></title>
        <?php include('../layouts/head.php'); ?>
    </head>
    <body>
    <?php require('../layouts/header.php'); ?>
    <section class="theme-content">
        <div class="container">
            <div class="jumbotron">
                <div class="author-theme btn btn-primary">
                    <span class="author-name"><?php echo $nickname; ?></span>
                    <img src="/imgs/avatar.png">
                </div>
                <div class="date-theme btn">
                    <span><i style="margin-right: 5px;" class="fas fa-calendar-alt"></i> <?php echo $date; ?></span>
                </div>
                <h1 class="display-4" style="word-break: break-all;"><?php echo $title; ?></h1>
                <hr class="my-4">
                <p class="lead" style="word-break: break-all;"><?php echo $body; ?></p>
            </div>
        </div>
    </section>





    <?php require('../layouts/footer.php'); ?>
    </body>
</html>
