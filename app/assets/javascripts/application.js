// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

/*$(function () {
		$("#post_section_id").change(function () {
			$("#post_category_id").html("");
			var selected_section = $(this).children("option:selected").val();

			 $.ajax({
								url: '/sections/' + selected_section + '/show_categories'
				}).then(function(response) {
					for (var i=0; i<response.length; i++){
						$("#post_category_id").append($('<option></option>').attr('value', response[i].id).text(response[i].name));
						}
				});
		});
}); */

$(document).ready(function() {

		$('#post_section_id').change(function(e){
			  $("#post_category_id").html("");
			  var selected_section = $(this).children("option:selected").val();
				$.ajax({
								url: "/sections/" + selected_section + "/show_categories"
				}).then(function(data) {
						for (var i=0; i< data.length; i++){
						  $("#post_category_id").append($('<option></option>').attr('value', data[i].id).text(data[i].name));
						}
				});

		});


});
