$(document).on('ajax:success', function(e, data) {
  console.log('Ajax Response data:', data);
});

$('project-row.button').click(function(){
  // sibling is hidden
  $('.hiddenform').show();
  console.log('projects.js is working');
});