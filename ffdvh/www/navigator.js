$(document).ready(function() {

	$('#nav_site').mouseenter(function() { $('#panel_site').slideDown();});
	$('#nav_membre').mouseenter(function() {$('#panel_membre').slideDown();});
	$('#nav_extras').mouseenter(function() {$('#panel_extras').slideDown();});
	$('#nav_espace').mouseenter(function() {$('#panel_espace').slideDown();});

	$('#panel_site').mouseleave(function() { $('#panel_site').slideUp();});
	$('#panel_membre').mouseleave(function() {$('#panel_membre').slideUp();});
	$('#panel_extras').mouseleave(function() {$('#panel_extras').slideUp();});
	$('#panel_espace').mouseleave(function() {$('#panel_espace').slideUp();});

	//~ $('#nav_site').mouseleave(function() { $('#panel_site').slideUp();});
	//~ $('#nav_membre').mouseleave(function() {$('#panel_membre').slideUp();});
	//~ $('#nav_extras').mouseleave(function() {$('#panel_extras').slideUp();});
	//~ $('#nav_espace').mouseleave(function() {$('#panel_espace').slideUp();});

});
