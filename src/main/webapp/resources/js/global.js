function generateNoty(type, layout, message) {
	var n = noty({
		text : message,
		type : type,
		dismissQueue : true,
		layout : layout,
		theme : 'defaultTheme',
		maxVisible : 3,
		timeout: 1500
	});
	console.log('html: ' + n.options.id);
}