$(document).ready(function() {
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

/*function addActivity(){
  ele = document.getElementById('add_activity_fields');
  time = new Date().getTime();
  regexp = new RegExp(ele.getAttribute('data-id'), 'g');
  row_string = ele.getAttribute('data-fields').replace(regexp, time);
  row = new DOMParser().parseFromString(row_string, "text/xml").firstChild;
  table = ele.previousElementSibling;
  table.appendChild(row);
  console.log('Adding activity');
}

function removeActivity(){
  console.log('removing activity');
}
*/
;
