<nav class="header navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#"><i class="fab fa-github-alt"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Главная страница</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Admin-панель</a>
                </li>
            </ul>
            <?php if (isset($_SESSION['login'])) {?>
            <div class="dropdown">
                <div class="profile-info dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="user-name"><?php echo $_SESSION['login']; ?></span>
                    <img class="user-avatar" src="imgs/avatar.png" alt="">
                </div>
                <div style="margin-top: 25px; left: -30px;" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="modules/logout.php">Выйти из аккаунта</a>
                </div>
            </div>
            <?php }?>
        </div>
    </div>
</nav>
