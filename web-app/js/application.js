if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}


function startDefaultVal(id,default_text){
	
	if ($('#'+id).val() == default_text){
		$('#'+id).val('');
		$( '#'+id ).css( "color", "#B0B0B0" );}
}

function placeHolder(id,default_text){
	
	elem = document.getElementById(id)
	
	if (elem.value == '') {
		elem.value = default_text;
		$('#'+id).css("color","#B0B0B0");}
}
