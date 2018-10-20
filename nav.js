
function display_about(){
		$.ajax({
		url : "pages/about",
		type : 'POST',

		success : function(response) {
		$('.pages').html(response);
		}
	});


}


function display_contact(){
		$.ajax({
		url : "pages/contact",
		type : 'POST',

		success : function(response) {
		$('.pages').html(response);
		}
	});


}


function display_home(){
		$.ajax({
		url : "pages/landing_page_content",
		type : 'POST',
		success : function(response) {
		$('.pages').html(response);
		}
	});


}

function display_category_menu(){
		$.ajax({
		url : "lessons/category_menu",
		type : 'POST',
		success : function(response) {
		$('.pages').html(response);
		}
	});


}


// function display_videos_menu(){
// 		$.ajax({
// 		url : "lessons/videos_menu",
// 		type : 'POST',
// 		success : function(response) {
// 		$('.pages_vid').html(response);
// 		}
// 	});
//
//
// }



function display_subcategory(){
	var id = this.id;

		$.ajax({
		url : "lessons/category/"+id,
		type : 'POST',
		success : function(response) {
		$('.subpages').html(response);
		}
	});


}
