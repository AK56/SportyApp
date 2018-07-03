$(document).ready(function() {
  alert('helo');
  $("form").on('click', '#add_activity_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $(this).before($(this).data('fields').replace(regexp, time));
    event.preventDefault();
  });
  $("form").on('click', '#remove_activity_field', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr').hide();
    event.preventDefault();
  });
});
