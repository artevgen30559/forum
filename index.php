<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>Главная страница форума</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
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
								<!-- Register form -->
								<form action="" method="POST" class="authorizate needs-validation">
									<div class="form-group">
										<label>Введите логин:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-user"></i></div>
        									</div>
											<input type="text" name="login" class="form-control" aria-describedby="emailHelp" required>
										</div>
									</div>
									<div class="form-group">
										<label>Введите пароль:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-key"></i></div>
        									</div>
											<input type="password" name="password" class="form-control" aria-describedby="emailHelp" required>
										</div>
									</div>
									<div class="mybtn">
										<button type="submit" class="btn btn-outline-primary btn-lg">Войти в аккаунт</button>
									</div>
								</form>
							</div>
							<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
								<!-- Register form -->
								<form action="" method="POST" class="register needs-validation">
									<div class="form-group">
										<label>Введите псевдоним:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-signature"></i></div>
        									</div>
											<input type="text" name="nickname" class="form-control" aria-describedby="emailHelp" required>
										</div>
									</div>
									<div class="form-group">
										<label>Введите логин:</label>
										<div class="input-group">
											<div class="input-group-prepend">
         								 		<div class="input-group-text"><i class="fas fa-user"></i></div>
        									</div>
											<input type="text" name="login" class="form-control" aria-describedby="emailHelp">
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
											<input type="password" name="password" class="form-control" aria-describedby="emailHelp">
											<div class="valid-feedback valid-pass">
									        	Looks good!
									      	</div>
											<div class="invalid-feedback invalid-pass">
									        	Error!!
									      	</div>
										</div>
									</div>
									<div class="mybtn">
										<button type="submit" class="btn btn-outline-primary btn-lg">Зарегистрироваться</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="content">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-dark" style="margin-bottom: 7px; border-radius: 7px;">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<button class="btn btn-primary my-2 my-sm-2 mr-auto" type="submit">Создать тему <i style="margin-left: 10px;" class="fas fa-folder-plus"></i></button>
					<form class="form-inline my-lg-0">
						<input class="form-control mr-sm-2" type="search" placeholder="Название темы" aria-label="Search">
						<button class="btn btn-secondary my-2 my-sm-0" type="submit">Поиск</button>
					</form>
				</div>
			</nav>
			<table class="table table-bordered table-striped table-borderless table-dark theme-list" style="border-radius: 7px;">
				<thead>
					<tr class="table-head">
						<th scope="col">Название темы</th>
						<th scope="col">Создатель</th>
						<th scope="col">Кол-во ответов</th>
					</tr>
				</thead>
				<tbody>
					<tr data-href="example.com">
						<td>Название темы длинное</td>
						<td>Пользователь: artevgen</td>
						<td>Ответов в теме: 30</td>
					</tr>
					<tr>
						<td>Название темы длинное</td>
						<td>Пользователь: artevgen</td>
						<td>Ответов в теме: 30</td>
					</tr>
					<tr>
						<td>Название темы длинное</td>
						<td>Пользователь: artevgen</td>
						<td>Ответов в теме: 30</td>
					</tr>
					<tr>
						<td>Название темы длинное</td>
						<td>Пользователь: artevgen</td>
						<td>Ответов в теме: 30</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>

	</body>


	<!-- FontAwesome -->
	<script src="https://kit.fontawesome.com/ca76ee2803.js" crossorigin="anonymous"></script>
	<!-- Bootstrap -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<!-- Handler -->
	<script src="js/formValidation.js"></script>
	<script type="text/javascript" src="js/handler.js"></script>


</html>
