(function($) {
	$(function() {
		$('#contact_form').submit(
				function(e) {
                    $.post('api/contact', $(this).serialize(), function(response) {
						generateNoty('success', 'topCenter', messages['carWash.contact.success']);
					}).error(function() {
						generateNoty('error', 'topCenter', messages['carWash.contact.error']);
					})

					$(':input', '#contact_form').not(':submit').val('');
					e.preventDefault();
				});
	});
})(jQuery);