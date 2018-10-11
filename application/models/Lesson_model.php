<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Lesson_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

		public function lesson_table(){
			$query = $this->db->select('*, lesson.id as lessonID')
												 ->from('lesson_image')
												 ->join('images', 'lesson_image.img_id = images.id')
												 ->join('lesson', 'lesson.id = lesson_image.id')
												 ->join('category', 'category.id = lesson.cat_id')
												 ->get();
				return $query;
		}

		public function lesson_names($id){
			$query = $this->db->select()
												 ->from('lesson_image')
												 ->join('lesson', 'lesson.id = lesson_image.id')
												 ->where('lesson.id',$id)
												 ->get();
				return $query;
			}

		// select * from lesson_image
		// join lesson on lesson.id = lesson_image.id
		// where lesson.id=8

		public function lessons($id){
			$query = $this->db->select('*, lesson_image.lesson_name as l_name, lesson.id as lessonid')
												 ->from('lesson')
												 ->join('lesson_example', 'lesson.id = lesson_example.lesson_id' )
												 ->join('lesson_image', 'lesson.id= lesson_image.lesson_id' )


												 // ->join('lesson_example.id = lesson_manager.lesson_example_id' )
												 ->join('category', 'lesson.cat_id= category.id')

												 ->where('lesson.id',$id)
												 ->get();
				return $query;
		}


			// SELECT * FROM lesson join lesson_example
			// on lesson.id = lesson_example.lesson_id
			// join lesson_image on lesson.id= lesson_image.lesson_id
			// join category
			// on lesson.cat_id= category.id where lesson.id = 8



		public function edit_lesson( $id){
			$qury = $this->db->select('*, template_num,category.category_image_title ,lesson.id as lessonID')
											 ->from('lesson')
											 ->join('lesson_image', 'lesson.id = lesson_image.lesson_id')
											 ->join('lesson_example', 'lesson.id = lesson_example.lesson_id' )


											 ->join('lesson_example.id = lesson_manager.lesson_example_id' )

											 // ->join('lesson_manager', 'lesson_image.id = lesson_manager.lesson_image_id' ,
											 // 'AND', 'lesson_example.id = lesson_manager.lesson_example_id')

											 // ->join('lesson_manager', 'lesson_example.id = lesson_manager.lesson_example_id')
											 ->join('category', 'category.id = lesson.cat_id')
											 ->where('lesson.cat_id', $catId)
											 ->get();
											 return $qury;
		}



















		// select * from lesson where id =1

		public function delete_lesson($id){
			$this->db->delete('lesson', array('id' => $id));
			$this->db->delete('lesson_image', array('lesson_id' => $id));
			$this->db->delete('lesson_example', array('lesson_id' => $id));
			$this->db->delete('lesson_manager', array('lesson_image_id' => $id));
		}


		public function lessons_display( $catId){
			$qury = $this->db->select('*, template_num,category.category_image_title ,lesson.id as lessonID')
											 ->from('lesson')
											 ->join('lesson_image', 'lesson.id = lesson_image.lesson_id')
											 ->join('lesson_example', 'lesson.id = lesson_example.lesson_id' )


											 ->join('lesson_example.id = lesson_manager.lesson_example_id' )

											 // ->join('lesson_manager', 'lesson_image.id = lesson_manager.lesson_image_id' ,
											 // 'AND', 'lesson_example.id = lesson_manager.lesson_example_id')

											 // ->join('lesson_manager', 'lesson_example.id = lesson_manager.lesson_example_id')
											 ->join('category', 'category.id = lesson.cat_id')
											 ->where('lesson.cat_id', $catId)
											 ->get();
											 return $qury;
		}



		public function display_lesson_image($id){
			$query = $this->db->select('')
												 ->from('lesson_image')
												 ->join('images', 'lesson_image.img_id = images.id')
												 ->join('lesson', 'lesson.id = lesson_image.id')

												 ->join('category', 'category.id = lesson.cat_id')

												 ->where('lesson.cat_id', $id)
												 ->get();
				return $query;
		}


		public function display_lesson_example_image(){
			$query = $this->db->select()
										 		 ->from('lesson_example')
												 ->join('images', 'lesson_example.img_id = images.id')
												 // ->join('lesson', 'lesson.id = lesson_example.id')
												 // ->join('category', 'category.id = lesson.cat_id')

												 // ->where('lesson_example.lesson_id', $id)
												 // ->limit(2)
												 ->get();
				return $query;
		}


		public function display_lesson_example_images($id){
			$query = $this->db->select('lesson_image.id')
												 ->from('lesson_example')
												 ->join('images', 'lesson_example.img_id = images.id')
												 // ->join('lesson', 'lesson.id = lesson_example.id')
												 ->join('lesson_image', 'lesson_example.lesson_id = lesson_image.lesson_id')

												 ->where('lesson_image.lesson_id', $id)
												 // ->limit(2)
												 ->get();
				return $query;
		}


		public function display_lesson_example_images_all($id){
			$query = $this->db->select('*,lesson_image.lesson_name')
												 ->from('lesson_example')
												 ->join('images', 'lesson_example.img_id = images.id')
												 // ->join('lesson', 'lesson.id = lesson_example.id')
												 ->join('lesson_image', 'lesson_example.lesson_id = lesson_image.lesson_id')

												 ->where('lesson_image.lesson_id', $id)
												 // ->limit(2)
												 ->get();
				return $query;
		}

// //query for display lesson example images
		// SELECT * FROM lesson_example
		// join images
		// on lesson_example.img_id = images.id
		// join lesson_image
		// on lesson_example.lesson_id = lesson_image.lesson_id
		// WHERE lesson_image.lesson_id=2
		public function display_lesson_example_imageCOPY($lesson_id){
			$query = $this->db->select()
												 ->from('lesson_example')
												 ->join('images', 'lesson_example.img_id = images.id')
												 ->join('lesson_image', 'lesson_example.lesson_id = lesson_image.lesson_id')
												 ->where('lesson_image.id', $lesson_id)
												 ->get();
				return $query;
		}



}



// FOR Lesson example in every lesson image
// SELECT * FROM lesson_example join images
// on lesson_example.img_id= images.id join lesson_image
// on lesson_example.lesson_id= lesson_image.lesson_id
// where lesson_image.id = 16
