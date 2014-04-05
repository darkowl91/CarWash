(function($) {
	$(function() {
		$('#contact_form').submit(
				function(e) {
					$.post('/carwash/api/contact', $(this).serialize(), function(response) {
						generateNoty('success', 'topCenter', 'Success');
					}).error(function() {
						generateNoty('error', 'topCenter', 'Error');
					})

					$(':input', '#contact_form').not(':submit').val('');
					e.preventDefault();
				});
	});
})(jQuery);