<?php $this->load->view('admin/inc/top');?>
<?php //echo $id?>

<form role="form" method="post" action="<?php echo base_url()?>lessons/update">
  <!-- <input type="hidden" name="id" value="<?php echo $id; ?>"> -->
  <input type="hidden" name="id" value="<?php echo $id; ?>">
   <div class="portlet light bordered">
      <div class="portlet-title">
          <div class="caption font-red-sunglo">
              <i class="icon-settings font-red-sunglo"></i>
              <span class="caption-subject bold uppercase"> EDIT Lessons</span>
          </div>
      </div>
      <div class="portlet-body form">

              <div class="form-body">


               <!-- category dropdown -->
               <div class="col-md-4">
                  <div class="form-group form-md-line-input">
                    <?php
                      // var_dump($categ_id_val->result());
                      $cat_id_val = $categ_id_val->result();

                     ?>
                    <select name="cat_id" class="form-control">
                    	<?php

          						if($category->num_rows() > 0){
          							foreach($category->result() as $cat){
          						?>
                            <option value="<?php echo $cat->id?>"
                              <?php
                                if($cat->id == $cat_id_val[0]->cat_id)
                                  echo "selected";
                                else {
                                  echo "";
                                } ?>>
                                <?php echo $cat->category_name?>
                            </option>
                      <?php
          							}



          						}
          						?>
                    </select>

                    <?php //echo set_select('cat_id', $cat_id_val, true); ?>
                          <!-- <option value="<?php echo $cat->id?>" selected= "<?php echo $categ_id_val; ?>"><?php echo $cat->category_name?></option> -->



                      <label for="form_control_1">Category</label>
                      <span class="help-block">Some help goes here...</span>
                  </div>
               </div>
               <div class="col-md-4">
                 <label for="form_control_1 ">EXAMPLE TEMPLATE</label> <br>
                 <img  class="image-fluid float-right" style="width:50%; margin-bottom: 0px;margin-right: 2%;margin-top: 3%;"  src="<?php echo site_url(); ?>assets/images/lesson_example/category_menu.PNG"   />
               </div>
               <!-- end category dropdown -->




              <div style="clear:both"></div>
              </div>
         </div>
   </div>

   <div class="portlet light bordered">
          <?php
         // var_dump($categ_id_val->result());
            // var_dump($lesson_examples->result());
            $lesson_examples->result();
            // $lesson_examples->result();
            $lesson_examples->num_rows();
            // var_dump($lesson_examples->num_rows());
          ?>

            <div class="portlet-title">
                <div class="caption font-red-sunglo">
                    <i class="icon-settings font-red-sunglo"></i>
                    <span class="caption-subject bold uppercase">Add Lesson Image</span>
                  </div>
            </div>
            <?php
              if($lesson->result() > 0){
              $les_data = $lesson->row();
            ?>
                <div class="col-md-4">
                    <div class="form-group form-md-line-input">
                      <label for="form_control_1">Lesson  Name</label> <br>
                        <input type="text" class="form-control" id="form_control_1" name="lesson_name" value="<?php echo $les_data->lesson_name; ?>" required>

                        <span class="help-block">Some help goes here...</span>
                    </div>
                 </div>


              <div class="col-md-4" style="margin-top: 20px">
                <label for="form_control_1"></label>
                <?php
                $count = 0;
                ?>
                  <input type="text" class="form-control input-inline input-medium img<?php echo $count?>" name="img[]" value="<?php echo $les_data->img_name; ?>" required>
                  <input type="hidden" class="imgId<?php echo $count?>" name="imgid[]" value="<?php echo $les_data->img_id; ?>" />
                  <span class="help-inline"><a class="select_img" id="<?php echo $count?>"  data-toggle="modal" href="#static">Upload or select image.</a></span>
                  <?php
                $count++;
                ?>
              </div>
              <?php
              }
              ?>

                <div class="col-md-4">
                  <label for="form_control_1 ">EXAMPLE TEMPLATE</label> <br>
                  <img  class="image-fluid float-right" style="width:50%; margin-bottom: 0px;margin-right: 2%;margin-top: 3%;"  src="<?php echo site_url(); ?>assets/images/lesson_example/category_menu.PNG"   />
                </div>

                <div class="portlet-title">
                    <div class="caption font-red-sunglo">
                        <i class="icon-settings font-red-sunglo"></i>
                        <span class="caption-subject bold uppercase">Add Lesson EXAMPLE IMAGES</span>
                      </div>
              </div>








           <!-- START LESSON EXAMPLE -->
           <div class="col-md-4">
             <label for="form_control_1 ">EXAMPLE TEMPLATE</label> <br>
             <img  class="image-fluid float-right" style="width:50%; margin-bottom: 0px;margin-right: 2%;margin-top: 3%;"  src="<?php echo site_url(); ?>assets/images/lesson_example/sample_lesson_example.PNG"   />
           </div>
           <div class="portlet-body form" style="margin-left: 50px">
               <div class="col-xs-12">
                   <div class="col-md-12 caption font-red-sunglo" >
                       <div  class="form-horizontal" id="field">
                           <div id="field0" class="form-body">
                               <!-- Text input-->
                               <?php
                                  if($lesson_examples->num_rows > 0)
                                  {
                                  $count = 1;
                                    // $row = $lesson_examples->count();
                                    foreach ($lesson_examples->result() as $key => $value) {
                               // for ($char = 'A'; $char <= 'D'; $char++) {
                               ?>
                               <div class="form-group">
                                 <input type="hidden" name="lesson_example_id[]" value="<?php echo $value->id; ?>">
                                   <div class="col-md-4">
                                       <div class="form-group form-md-line-input">
                                         <label for="form_control_1">Example Name</label> <br>
                                           <input type="text" class="form-control " id="form_control_1" name="lessonEx[]" value="<?php echo $value->lesson_example_name; ?>">
                                           <!-- <span class="help-block">Some help goes here...</span> -->
                                       </div>
                                    </div>
                                   <div class="col-md-4">
                                       <input type="text" class="form-control input-inline input-medium imgEx<?php echo $count?>" name="imgEx[]" value="<?php echo $value->img_name; ?>">
                                       <input type="hidden" class="imgIdEx<?php echo $count?>" name="imgidEx[]" value="<?php echo $value->img_id; ?>"/>
                                       <!-- <span class="help-inline"><a class="select_img" id="<?php echo $count?>"  data-toggle="modal" href="#static">Upload or select image.</a></span> -->
                                       <span class="help-inline"><a  class="btn btn-primary btn-lg active select_img" role="button" aria-pressed="true" id="<?php echo $count?>"  data-toggle="modal" href="#static">Upload or select image/gif.</a></span>

                                   </div>
                               </div>
                               <?php
                                // }
                             $count++;
                               }
                             }
                             ?>

                           </div>
                       </div>
                       <div style="clear:both"></div>
                       <!-- Button -->
                   </div>
               </div>
                 <div style="clear:both"></div>
           </div>
           <!-- END LESSON EXAMPLE -->


   </div>


   <div class="form-actions noborder">
      <button name="update" type="submit" class=" success_quiz_add btn blue">UPDATE</button>
      <a href="<?php echo base_url()?>lesson" class="btn default">Cancel</a>
   </div>

   </form>

   <div id="static" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
          <div class="modal-dialog" style="width:80%">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                      <h4 class="modal-title"></h4>
                  </div>
                  <div class="modal-body">

                  </div>
                  <div class="modal-footer">
                      <button type="button" data-dismiss="modal" class="btn dark btn-outline">Cancel</button>
                      <button type="button" data-dismiss="modal" class="btn green">Continue Task</button>
                  </div>
              </div>
          </div>
      </div>

   <?php $this->load->view('admin/inc/footer');?>
