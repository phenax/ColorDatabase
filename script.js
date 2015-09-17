$('#toggle').click(function() {
	$('.toggle').toggle();
});
$('#bgc').click(function() {
	$('.bgc').toggle();
});
$('.bgc form').submit(function() {
	event.preventDefault();

	var bgcol = $('input.bgcol').val();

	$('body').css('background',bgcol);

});