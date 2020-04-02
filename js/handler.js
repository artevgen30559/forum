$('form').submit(function(e) {
    e.preventDefault();
    if (!formValidation($(this))) return false;

    let method  = $(this).attr('method'),
        action  = $(this).attr('action'),
        data    = $(this).serializeArray();

    if ($(this).hasClass('register')) {
        $.ajax({
            url: action,
            method: method,
            dataType: 'JSON',
            data: {
                nickname: data[0]['value'],
                login: data[1]['value'],
                password: data[2]['value'],
            },
            success: function() {
                $('.btn-register').html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span><span class="sr-only"></span> Регистрирую');
                $('.btn-register').removeClass('btn-outline-primary');
                $('.btn-register').addClass('btn-success');
                $('.btn-register').css('pointer-events', 'none');
                setTimeout(function() {
                    window.location.reload();
                }, 700);
            }
        });
    }
    if ($(this).hasClass('authorizate')) {
        $.ajax({
            url: action,
            method: method,
            dataType: 'JSON',
            data: {
                login: data[0]['value'],
                password: data[1]['value'],
            },
            success: function(data) {
                $('.btn-auth').removeClass('btn-outline-primary');
                $('.btn-auth').removeClass('btn-danger');
                $('.btn-auth').removeClass('btn-success');
                if (data == 'User not found') {
                    $('.btn-auth').html('Пользователь не найден');
                    $('.btn-auth').addClass('btn-danger');
                }
                if (data == 'Auth success') {
                    $('.btn-auth').html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span><span class="sr-only"></span> Авторизую');
                    $('.btn-auth').addClass('btn-success');
                    $('.btn-auth').css('pointer-events', 'none');
                    setTimeout(function() {
                        window.location.reload();
                    }, 700);
                }
            }
        });
    }

    if ($(this).hasClass('create-theme-form')) {
        var body = $('.ql-editor').html();
        $.ajax({
            url: action,
            method: method,
            data: {
                title: data[0]['value'],
                body: body,
            },
            success: function(data) {
                let response = JSON.parse(data);
                if (response.message == 'Theme created') {
                    $('.btn-create-theme').removeClass('btn-secondary');
                    $('.btn-create-theme').html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span><span class="sr-only"></span> Создаю тему');
                    $('.btn-create-theme').addClass('btn-success');
                    $('.btn-create-theme').css('pointer-events', 'none');
                    setTimeout(function() {
                        window.location.href = '/views/themepage.php?title=' + response.title + '&author=' + response.id_author;
                    }, 700);
                }
            }
        });
    }

    if($(this).hasClass('add-comment-form')) {
        var body = $('.add-comment-form .ql-editor').html();
        if (body.length <= 11) return false;
        $.ajax({
            url: action,
            method: method,
            data: {
                body: body
            },
            success: function(data) {
                let response = JSON.parse(data);
                $('section.comments .comment-list').append(`
                    <div class="card comment">
                        <div class="card-body">
                            <h5 class="card-title"><img src="/imgs/avatar.png"> Пользователь: `+ response.nickname +`</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Добавлен: `+ response.date +`</h6>
                            <p class="card-text">` + body + `</p>
                        </div>
                    </div>
                `);
            }
        });
    }

});
