function formValidation(form) {
    if(form.hasClass('needs-validation')) {

    } else {
        return true;
    }

    let data = form.serializeArray(),
        login,
        password,
        isValidate = true;

    for(item of data) {
        if (item['name'] == 'login') {
            login = item['value'];
        }
        if (item['name'] == 'password') {
            password = item['value'];
        }
    }

    let patternLogin = /\w{6,10}/;
    let patternPassword = /\w{6,10}/;

    if(patternLogin.test(login)) {
        $('.invalid-login').css('display', 'none');
        $('.valid-login').html('Отлично!');
        $('.valid-login').css('display', 'block');
    } else {
        $('.invalid-login').html('Неверный формат логина');
        $('.invalid-login').css('display', 'block');
        isValidate = false;
    }
    if(patternPassword.test(password)) {
        $('.invalid-pass').css('display', 'none');
        $('.valid-pass').html('Отлично!');
        $('.valid-pass').css('display', 'block');
    } else {
        $('.invalid-pass').html('Неверный формат пароля');
        $('.invalid-pass').css('display', 'block');
        isValidate = false;
    }

    return isValidate;

}
