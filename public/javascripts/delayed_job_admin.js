$(document).ready(function() {
  
  // Toggle
  $('.job .details').hide();
  
  $('.job .details_link').click(function() { 
    $(this).parents('.job').children('.details').slideToggle('fast');
  });
  
  // Filter
  $('.failed_jobs').click(function() {
		$('.job').hide()
		$('.failed').show();
  })
  $('.locked_jobs').click(function() {
		$('.job').hide()
		$('.locked').show();
  })
  $('.total_jobs').click(function() {
  	$('.job').show();
  })

});