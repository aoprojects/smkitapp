$(document).ready(function() {
	$("#click-this").click(function() {
		$("#drop-this").toggle("fast");
	});

	$(".category_name").click(function() {
		$(this).find(".down-arrow").toggle();
		$(this).find(".up-arrow").toggle();
		$(this).next("ul").slideToggle();
	});
});