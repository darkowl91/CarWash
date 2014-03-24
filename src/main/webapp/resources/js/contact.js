(function($) {
	$(function() {
		$('#contact_form').submit(
				function(e) {
					$.post('/carwash/api/contact', $(this).serialize(), function(response) {
						alert(response);
					});

					$(':input', '#contact_form').not(':submit').val('');
					e.preventDefault();
				});
	});
})(jQuery);