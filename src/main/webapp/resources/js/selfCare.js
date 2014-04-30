(function($) {
	$(function() {
		$('#phoneValue').mask("+375 (99) 999-99-99");
	});
	
	$(function() {
		$('input[type=file]').bootstrapFileInput();
	});
})(jQuery);