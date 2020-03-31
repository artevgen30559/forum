
// Row table like link behavior
$('tr[data-href]').on('click', function() {
    document.location = $(this).data('href');
});


$('form').submit(function(e) {
    e.preventDefault();
    if (!formValidation($(this))) return false;
});
