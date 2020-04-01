<?php
    session_start();
    include('modules/themeList.php');

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>Главная страница</title>
        <?php include('layouts/head.php'); ?>
	</head>
	<body>
    <?php include('layouts/header.php'); ?>
	<section class="main">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<h1 class="display-4">Зарегистрируйтесь, чтобы начать</h1>
					<hr class="my-4">
					<p class="lead">Просматривать, создавать и отвечать на темы могут только зарегистрированные пользователи</p>
				</div>
				<div class="col-5 offset-1">
					<div class="form-content">
						<ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Вход</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Регистрация</a>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
								<!-- Authorizate form -->
								<form action="/modules/auth.php" method="POST" class="authorizate">
									<div class="form-group">
										<label>Введите логин:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-user"></i></div>
        									</div>
											<input value="qqqqqqqqqqq" type="text" name="login" class="form-control" aria-describedby="emailHelp" required>
										</div>
									</div>
									<div class="form-group">
										<label>Введите пароль:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-key"></i></div>
        									</div>
											<input value="qqqqqqqqqqq" type="password" name="password" class="form-control" aria-describedby="emailHelp" required>
										</div>
									</div>
									<div class="mybtn">
										<button style="vertical-align: middle;" type="submit" class="btn btn-outline-primary btn-lg btn-auth">Войти в аккаунт</button>
									</div>
								</form>
							</div>
							<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
								<!-- Register form -->
								<form action="/modules/register.php" method="POST" class="register needs-validation">
									<div class="form-group">
										<label>Введите псевдоним:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-signature"></i></div>
        									</div>
											<input value="asdfasdfsfsdfd" type="text" name="nickname" class="form-control" aria-describedby="emailHelp" required>
										</div>
									</div>
									<div class="form-group">
										<label>Введите логин:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-user"></i></div>
        									</div>
											<input value="asdfasdfsfsdfd" type="text" name="login" class="form-control" aria-describedby="emailHelp">
											<div class="valid-feedback valid-login">
									        	Looks good!
									      	</div>
											<div class="invalid-feedback invalid-login">
									        	Error!!
									      	</div>
										</div>
									</div>
									<div class="form-group">
										<label>Введите пароль:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-key"></i></div>
        									</div>
											<input value="asdfasdfsfsdfd" type="password" name="password" class="form-control" aria-describedby="emailHelp">
                                            <small id="emailHelp" class="form-text text-muted">Если логин УЖЕ существует и пароль верен, то вы авторизуетесь</small>
											<div class="valid-feedback valid-pass">
									        	Looks good!
									      	</div>
											<div class="invalid-feedback invalid-pass">
									        	Error!!
									      	</div>
										</div>
									</div>
									<div class="mybtn">
										<button type="submit" class="btn btn-outline-primary btn-lg btn-register">Зарегистрироваться</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

    <?php if ($_SESSION['login'] == '') { ?>
    <div class="container">
        <h3 style="margin-bottom: 25px;">Видно авторизованным <span class="badge badge-secondary"><i class="fas fa-eye-slash"></i></span></h3>
    </div>
	<section class="content" style="pointer-events: none; opacity: 0.09;">
    <?php } else { ?>
    <section class="content">
    <?php } ?>
		<div class="container">
            <h3 style="margin-bottom: 25px;">Темы форума <span class="badge badge-secondary"><i class="fas fa-star"></i></span></h3>
			<nav class="navbar navbar-expand-lg navbar-light bg-dark" style="margin-bottom: 7px; border-radius: 7px;">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<button class="create-theme btn btn-primary my-2 my-sm-2 mr-auto" type="submit">Создать тему <i style="margin-left: 10px;" class="fas fa-folder-plus"></i></button>
					<form class="form-inline my-lg-0">
						<input class="form-control mr-sm-2" type="search" placeholder="Название темы" aria-label="Search">
						<button class="btn btn-secondary my-2 my-sm-0" type="submit">Поиск</button>
					</form>
				</div>
			</nav>
            <!-- Create theme form -->
            <form class="create-theme-form" action="/modules/createTheme.php" method="GET" style="display: none;">
                <div class="row justify-content-center">
                    <div class="col-10">
                        <div class="form-group">
                            <label>Заголовок темы</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"><i class="fas fa-heading"></i></div>
                                </div>
                                <input type="text" name="title" class="form-control" aria-describedby="emailHelp" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Описание</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"><i class="fas fa-paragraph"></i></div>
                                </div>
                                <textarea type="text" style="min-height: 150px;" class="form-control" name="body" rows="14" required></textarea>
                            </div>
                        </div>
                        <div class="mybtn" style="text-align: center;">
                            <button type="submit" class="btn btn-primary btn btn-create-theme">Создать новую тему</button>
                            <button type="submit" class="btn btn-secondary btn btn-cancel-create-theme">Отмена</button>
                        </div>
                    </div>
                </div>
            </form>


			<table class="table table-bordered table-striped table-borderless table-dark theme-list" style="border-radius: 7px;">
				<thead>
					<tr class="table-head">
						<th scope="col">Название темы</th>
						<th scope="col">Автор</th>
						<th scope="col">Дата создания</th>
					</tr>
				</thead>
				<tbody>
                    <?php foreach($themes as $theme) {?>
					<tr data-href="<?php echo '/themepage.php' . '?title=' . $theme['title'] . '&author=' . $theme['id_author'];?>">
						<td class="theme-title"><?php echo $theme['title'];?></td>
						<td>
                            <div class="profile-info">
                                <span class="user-name"><?php echo $theme['nickname'];?></span>
                                <img style="margin: 0 0 10px 5px;" class="user-avatar" src="/imgs/avatar.png" alt="">
                            </div>
                        </td>
						<td>
                            <div class="date-theme" style="margin: 0; padding: 0;">
                                <span><i style="margin-right: 5px;" class="fas fa-calendar-alt"></i> <?php echo $theme['date'];?></span>
                            </div>
                        </td>
					</tr>
                    <?php }?>
				</tbody>
			</table>
		</div>
	</section>
	</body>

    <?php include('layouts/footer.php'); ?>


</html>
