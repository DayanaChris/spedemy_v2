<style >
.labels{
  font-family: "Courier New", Courier, "Lucida Sans Typewriter", "Lucida Typewriter", monospace;
   font-weight: 1000;
   /* font-size: 10px; */
   font-size:1.5vw;
   line-height: 15.9px;
}
</style>

<div  name="" class=" modal-body carousel slide actionwords_bg " data-interval="false" style="margin-bottom:30px">
     <div class="carousel-inner  " role="listbox">
         <?php
         $num_pages= count($ids->result()); //count the numbers of lesson image
         for ($i=0; $i < $num_pages ; $i++) {
         // foreach ($example->result() as $key => $values) {
            if ($i==0) {
              $is_active ='active';
         ?>
         <!-- START MODAL ITEM  -->
          <div class="item   <?php echo $is_active ?>"  >
            <div>
                <div class="text-center">
                        <h1 class="font-weight-bold"> <big>  <h1><?php echo $lesson_name?></h1> </big> </h1>
                </div>
                <div class="row">
                  <?php foreach ($ids->result() as $key => $values) { ?>
                    <div class="col-sm-6  " style="margin-top:0%">
                      <ul class="list-group"  >
                        <li class="list-group-item let" >
                          <img class=" mx-auto d-block" style="width:60%" src="<?php echo base_url()?>assets/uploads/<?php echo $values->img_name?>"  alt="Letter A"  >
                        </li>
                        <li class="list-group-item let  "  >
                          <h1 class="centered_text choice">
                            <a class="labels"> <?php echo $values->lesson_example_name?>
                              </a>
                            </h1>
                        </li>
                      </ul>
                    </div>

                  <?php
                  }
                  ?>
                </div>
              </div>
            </div>
          <!--END MODAL ITEM  -->
          <?php
          $i++;
              }   //end if
          } // end for
          ?>
      </div>

  </div>
