(function($) {
	$(function() {
		$('#contact_form').submit(
				function(e) {
                    //TODO: relative path
					$.post('api/contact', $(this).serialize(), function(response) {
						generateNoty('success', 'topCenter', 'Success');
					}).error(function() {
						generateNoty('error', 'topCenter', 'Error');
					})

					$(':input', '#contact_form').not(':submit').val('');
					e.preventDefault();
				});
	});
})(jQuery);