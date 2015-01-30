var URL_PROXY = "proxy?st_url="
var URL_BASE = "dictionary?st_query=";
var URL_IMG = "https://ajax.googleapis.com/ajax/services/search/images?v=1.0&q="

$("#cmdSearch").click(function() {
	var st_word = $("#txtWord").val();

	$.ajax({
		url : URL_PROXY + encodeURIComponent(URL_IMG + st_word)
	}).done(function(data) {
		var obj = JSON.parse(data);
		$("#imgs").html("");
		$.each(obj.responseData.results, function() {
			$("#imgs").append('<img class="img-rounded" src="' + this.tbUrl +'" />');
		});		
	});

	$.ajax({
		url : URL_BASE + st_word + "&lang=es"
	}).done(function(data) {
		var obj = JSON.parse(data);
		addMeaning(obj, "es");
	});

	$.ajax({
		url : URL_BASE + st_word + "&lang=fr"
	}).done(function(data) {
		var obj = JSON.parse(data);
		addMeaning(obj, "fr");

	});

	$.ajax({
		url : URL_BASE + st_word + "&lang=pt"
	}).done(function(data) {
		var obj = JSON.parse(data);
		addMeaning(obj, "pt");
	});

	$.ajax({
		url : URL_BASE + st_word + "&lang=en"
	}).done(function(data) {
		var obj = JSON.parse(data);
		addMeaning(obj, "en");
	});
});

function addMeaning(obj, dest) {
	$.each(obj.tuc, function() {
		$.each(this.meanings, function() {
			if (this.language == dest) {
				$("#" + dest).text(this.text);
				return;
			}
		});
	});
	$("#" + dest).text("Not found");
}
