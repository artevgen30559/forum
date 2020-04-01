// Row table like link behavior
$('tr[data-href]').on('click', function() {
    document.location = $(this).data('href');
});

// Create theme button
$('button.create-theme').on('click', function(e) {
    e.preventDefault();
    $('table.theme-list').hide();
    $('.create-theme-form').fadeIn();
});

// Cancel create theme
$('button.btn-cancel-create-theme').on('click', function(e) {
    e.preventDefault();
    $('table.theme-list').fadeIn();
    $('.create-theme-form').hide();
});
