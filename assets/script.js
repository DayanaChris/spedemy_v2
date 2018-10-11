var start_time="";
var end_time="";
var remarks="";
var total_time=0;
var accuracy=0;
var average_speed=0;
var final_score=0;
var temp_attempt=0;
var wrong=0;
var total_wrong=0;

$(document).ready(function() {
	"use strict";

	set_start_time();
	$(".bg").css("background-image", "url('../../assets/images/SPEDEMY/Evaluation/background_jpg.jpg')");
	// $('.modal-body').html("<img src=\"../../assets/images/wrong.png\">");


	var url = $('.base_url').html();
	var loader = 'Loading';
	$('.delete_category').click(function(e){
		e.preventDefault();
		var catid = this.id;
		swal({
		  title: "Delete Category?",
		  text: "Are you sure you want to delete this category?",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
			  	$.ajax({
					url : url+"category/post",
					type : 'POST',
					data : {
						'delete_category': catid
					},
					success : function() {
						$('.delete-'+catid).fadeOut();
						swal("Poof! Category successfully deleted!", {
							icon: "success",
						});
					}
				});

		  }
		});
	});
	$('.success_category_add').click(function(e){
		swal({
			title: "Successfull!",
			text: "You have successfully added the Category!",
			icon: "success",

		})

	});
	$('.success_quiz_add').click(function(e){
		swal({
			title: "Successfull!",
			text: "You have successfully added the Quiz!",
			icon: "success",

		})
	});
	$('.success_lesson_add').click(function(e){
		swal({
			title: "Successfull!",
			text: "You have successfully added the Lesson!",
			icon: "success",

		})

	});


	$('.delete_question').click(function(e){
		e.preventDefault();
		var id_quiz = this.id;
		swal({
		  title: "Delete Question?",
		  text: "Are you sure you want to delete this question?",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
			  	$.ajax({
					url : url+"quiz/post",
					type : 'POST',
					data : {
						'delete_question': id_quiz
					},
					success : function() {
						$('.delete-'+id_quiz).fadeOut();
						swal("Poof! Question successfully deleted!", {
							icon: "success",
						});
					}
				});

		  }
		});
	});

	$('.sample').click(function(e){
		e.preventDefault();
		var id_quiz = this.id;
		console.log(id_quiz);

	});




	$('.delete_lesson').click(function(e){
		e.preventDefault();
		var id_lesson = this.id;

		swal({
			title: "Delete Lesson?",
			text: "Are you sure you want to delete this Lesson?",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		})
		.then((willDelete) => {
			if (willDelete) {
					$.ajax({
					url : url+"lessons/post",
					type : 'POST',
					data : {
						'delete_lesson': id_lesson
					},
					success : function() {
						$('.delete-'+id_lesson).fadeOut();
						swal("Poof! Lesson successfully deleted!", {
							icon: "success",
						});
					}
				});

			}
		});
	});



	$('.select_img').click(function(){
		var id = this.id;
		$('.modal-title').html('Select Files');
		$('.modal-body').html(loader);

		$('.modal-body').load(url+"quiz/gallery/"+id, function(){
			uploader();
			load_gallery();
			$('.gallery').click(function(e){
				e.preventDefault();
				load_gallery();
			});
		});
	});


	function load_gallery(){
		$('.imglist').html(loader);
		$('.imglist').load(url+"quiz/img_list/", function(){
			$('.thsimsge').click(function(e){
				e.preventDefault();
				$('.useimg').removeClass('hide');
				var name = $(this).attr('data-name');
				var id = $(this).attr('data-id');
				$('.iomgselct').html('<img src="'+url+'/assets/uploads/'+name+'" style="width:100%" />');
				$('.image_name').val(name);
				$('.image_id').val(id);
			});
			$('.useimg').click(function(){
				var input_put = $('.click_input').val();
				$('.img'+input_put).val($('.image_name').val());
				$('.imgEx'+input_put).val($('.image_name').val());

				$('.imgId'+input_put).val($('.image_id').val());
				$('.imgIdEx'+input_put).val($('.image_id').val());

				$('.modal').modal('hide');
			});
		});
	}

	 var next = 0;
    $("#add-more").click(function(e){
        e.preventDefault();
        var addto = "#field" + next;
        var addRemove = "#field" + (next);
        next = next + 1;
        var newIn = '<div id="field'+ next +'" name="field'+ next +'">'+
					'		<div class="form-group">'+
                    '                <div class="mt-radio-list col-md-1">'+
                    '                    <label class="mt-radio"> A'+
                    '                        <input type="radio" value="1" name="answer['+ next +']" />'+
                    '                        <span></span>'+
                    '                    </label>'+
                    '                </div>'+
                    '                <div class="col-md-9">'+
                    '                    <input type="text" class="form-control input-inline input-medium" name="img[]">'+
                    '                    <span class="help-inline">Upload or select image.</span>'+
                    '                </div>'+
                    '            </div>'+
                    '            <div class="form-group">'+
                    '               <div class="mt-radio-list col-md-1">'+
                    '                    <label class="mt-radio"> B'+
                    '                        <input type="radio" value="1" name="answer['+ next +']" />'+
                    '                        <span></span>'+
                    '                    </label>'+
                    '                </div>'+
                    '                <div class="col-md-9">'+
                    '                    <input type="text" class="form-control input-inline input-medium" name="img[]">'+
                    '                    <span class="help-inline">Upload or select image.</span>'+
                    '                </div>'+
                    '            </div>'+
                    '            <div class="form-group">'+
                    '                <div class="mt-radio-list col-md-1">'+
                    '                    <label class="mt-radio"> C'+
                    '                        <input type="radio" value="1" name="answer['+ next +']" />'+
                    '                        <span></span>'+
                    '                    </label>'+
                    '                </div>'+
                    '                <div class="col-md-9">'+
                    '                    <input type="text" class="form-control input-inline input-medium" name="img[]">'+
                    '                    <span class="help-inline">Upload or select image.</span>'+
                    '                </div>'+
                    '            </div>';
        var newInput = $(newIn);


        var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me"  style="margin-bottom: 28px;" >Remove</button></div></div><div id="field">';
        var removeButton = $(removeBtn);
        $(addto).after(newInput);
        $(addRemove).after(removeButton);
        $("#field" + next).attr('data-source',$(addto).attr('data-source'));
        $("#count").val(next);

            $('.remove-me').click(function(e){
                e.preventDefault();
                var fieldNum = this.id.charAt(this.id.length-1);
                var fieldID = "#field" + fieldNum;
                $(this).remove();
                $(fieldID).remove();
            });
    });

	function uploader(){
		$("#uploader").plupload({
			// General settings
			runtimes : 'html5,flash,silverlight,html4',
			url : url+'quiz/upload',
			max_file_count: 20,
			chunk_size: '10mb',
			rename : true,
			dragdrop: true,
			sortable: true,
			filters : {
				// Maximum file size
				max_file_size : '1000mb',
				// Specify what files to browse for
				mime_types: [
					{title : "Image files", extensions : "jpg,gif,png,jpeg"},
					{title : "Zip files", extensions : "zip"},
					{title : "Video files", extensions : "mp4, mkv, mov, avi, 3gp, flv, m4v"},
					{title : "Audio files", extensions : "wav, mp3, wma, vgm, pls, m3u"}



				]
			},
			init: {
				FileUploaded: function(up, file, info) {
					//console.log(info);
					//some magic go here
				},

			},
			// Views to activate
			views: {
				list: true,
				thumbs: true, // Show thumbs
				active: 'thumbs'
			},
			// Flash settings
			flash_swf_url : url+'assets/uploader/js/Moxie.swf',

			// Silverlight settings
			silverlight_xap_url : url+'assets/uploader/js/Moxie.xap'
		});

	}




	$('.clickimage').click(function(){
		var answer = $(this).attr('data-answer');
		var question = $(this).attr('data-id');
		// console.log(question);
		var question_number=$(this).attr('question-number');
		// var question=$(this).attr('question');
		//
		// console.log(question);

		//
		// var lesson=$(this).attr('lesson');
		//
		//
		// console.log("LESSON"+lesson);
		$.ajax({
			url : url+"quiz/c_answer",
			type : 'POST',
			data : {
				'check_question': answer
			},
			success : function(response) {
				console.log(response);
				var score=parseInt($('#score').val(),10);
				var attempts=parseInt($('#attempts').val(),10);

						if(score==""){
							score=0;
						}
						if(attempts==""){
							attempts=0;
						}

						if(parseInt(question_number)==4){
							set_end_time();
							get_total_time();
							console.log("total time"+total_time);

							// display class
							$('.result_div').css('display','block');

						}

						// if(attemp==0){
						//
						// }

						// IF CORRECT ANSWER display correct modal
							if(response.includes("great")){
								var current='#'+question_number;
								var next='#'+(parseInt(question_number,10)+1);
									// $(id).css('display:none;');
									$(current).css('display:none;');
									$(next).css('display:block;');
									$(current).hide();
									$(next).show();
									// DISPLAY MODAL
									$('.modal-body').html(response);
									score++;
									console.log("SCORE "+score);
									$('#score').val(score);
									wrong=0;
									attempts=0;


						}else if(!response.includes("great") ){
							$('.modal-body').html("<img src=\"../../assets/images/wrong1.png\">");
							attempts++;

							if(wrong==0){
								temp_attempt++;
								wrong++;
								total_wrong++;

								console.log(total_wrong);
								$('#total_wrong').val(total_wrong);

							}else{

							}



							console.log("ATTEMPT",attempts);
							$('#attempts').val(attempts);

						}

						average_speed= (total_time/5);
						$('#average_speed').val(average_speed+" /pq");

						final_score= score-total_wrong;
						$('#final_score').val(final_score);


						// change 5 to 15
						accuracy= (final_score/5) *100;
						$('#accuracy').val(accuracy);

						if(final_score<=1){
							$('#remarks').val("D");
						}if(final_score<=2){
							$('#remarks').val("C");
						}else if(final_score<=3 ){
							$('#remarks').val("B");

						}else if(final_score<=15 ){
							$('#remarks').val("A");
						}
				},

		}); //END  AJAX

	});//END CLICK IMAGE


	$('.clickLevel').click(function(){
		var level_number=$(this).attr('level-number');


			if(parseInt(level_number)==1){
				// display class
				$('.result_div').css('display','block');
				$('.mod_div').css('display','none');
				$('.dif_div').css('display','none');

			}
			else if(parseInt(level_number)==2){
				// display class
				$('.result_div').css('display','none');
				$('.mod_div').css('display','block');
				$('.dif_div').css('display','none');


			}
		else 	if(parseInt(level_number)==3){
				// display class
				$('.result_div').css('display','none');
				$('.mod_div').css('display','none');

				$('.dif_div').css('display','block');

			}

	});//END CLICK IMAGE

// <?php echo base_url(); ?><?php echo $id?>?ids=<?php echo $value->lesson_id; ?>
// http://localhost/quiz/lesson/1?id=2
//
// http://localhost/quiz/?id=2
$('.clickLessonImage').click(function(){
		// 		var id_lesson = this.id;
		var lesson=$(this).attr('lesson');
		// alert(lesson);
		var lesson = $(this).data('lesson');
		// console.log(lesson);
		// var question=$(this).attr('question');
		//
		// console.log(question);
		// $('.aa').html(lesson);

	});//END CLICK IMAGE




});

function get_image_id(id,lesson_name){
	$.ajax({
 	 url : "../lessons/lesson_example/"+id+"/"+lesson_name,
 	 type : 'POST',

 	 success : function(response) {
		 // console.log(response);

 	 			$('.modal-body').html(response);

 		 },

  }); //END  AJAX

}
//
// function get_carousel(id){
// 	$.ajax({
//  	 url : "../lessons/lesson_example/"+id+"/"+lesson_name,
//  	 type : 'POST',
//  	 data : {
//
//  	 },
//  	 success : function(response) {
// 		 console.log(response);
//
//  	 			$('.modal-body').html(response);
//
//  		 },
//
//   }); //END  AJAX
//
// }

function set_start_time(){
	start_time= new Date();
	console.log(start_time);


}

function set_end_time(){
	end_time= new Date();

	console.log(end_time);


}

function get_total_time(){
	  total_time = new Date(end_time - start_time);
	  total_time= total_time/1000;
	  console.log("total time"+total_time);
	  $("#total_time").val(total_time);

}





// END OF SCRIPT
