
  <script>
  var audio, playbtn, mutebtn, seek_bar;
  function initAudioPlayer(){
  audio = new Audio();
  audio.src = "<?php echo site_url(); ?>assets/sound_effects/SolarChildhood.flac";
  audio.loop = true;
  audio.play();
  // Set object references
  mutebtn = document.getElementById("mutebtn");
  // Add Event Handling
  mutebtn.addEventListener("click", mute);

  function mute(){
    if(audio.muted){
        audio.muted = false;
        <?php
        $controls= "play" ?>
        // mutebtn.style.background = url("<?php echo site_url(); ?>assets/images/SPEDEMY/play.png") no-repeat;
      } else {
        audio.muted = true;
        <?php
        $controls= "mute"
       ?>
        // mutebtn.style.img = url("<?php echo site_url(); ?>assets/images/SPEDEMY/mute.png") no-repeat;
      }
  }
  }
  window.addEventListener("load", initAudioPlayer);
  </script>

<div class="navbar-fixed-top ">

         <nav class="navbar navbar-expand-md  navbar-laravel navbar-dark  " style=" background-color: #78569a;
         left: 0;
         top: 0;
         width: 100%;

         " >
          <div class="container " >


                <a class="navbar-brand" href="<?php echo base_url(); ?>" style="padding: 4px;margin:auto">

                    <img onmousedown="mouseclick.play()" src="<?php echo site_url(); ?>assets/images/SPEDEMY/logo.png" style="height: 35px; padding: 0 auto;">SPEDEMY.com

                </a>

              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                  <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <!-- Left Side Of Navbar -->
                  <ul class="navbar-nav mr-auto">

                  </ul>




                  <ul class="nav navbar-nav navbar-right">
                      <!-- Authentication Links -->
                      <!-- if not logged in this will show the login/register -->
                      <?php if (!$this->ion_auth->logged_in()) : ?>
                        <li class="nav-item" ><a onmousedown="mouseclick.play()" class="nav-link " href="<?php echo base_url(); ?>Auth/login" style="font-size: 20px;">Login</a></li>

                      <li class="nav-item" ><a onmousedown="mouseclick.play()" class="nav-link " href="<?php echo base_url(); ?>Auth/register" style="font-size: 20px;">register</a></li>
                    <?php endif; ?>
                    <!--if logged in, this menus nav bar will show  -->
                    <?php if ($this->ion_auth->logged_in()) : ?>
                      <!-- ADD MODAL TO JOIN GROUP -->




                      <!-- <li class="nav-item " style="margin-left: 40px;" ><a onmousedown="mouseclick.play()" class="nav-link "  style="font-size: 20px;"  data-toggle="modal" href="#static">JOIN CLASS</a></li> -->

                      <ul class="nav-item dropdown">

                        <!-- GET CURRENT USER NAME -->
                        <?php
	                         $user = $this->ion_auth->user()->row();
                        ?>
                        <a   onmousedown="mouseclick.play()" id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre style="font-size: 20px;">
                          <?php echo ucwords($user->first_name.' '.$user->last_name)?></a>

<!-- onclick="display_category_menu()" -->
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown" style="font-size: 18px;">
                          <li><a  onmousedown="mouseclick.play()" href="<?php echo base_url(); ?>category_menu " class="dropdown-item">START THE LESSON</a></li>

                          <li><a  onmousedown="mouseclick.play()" href="<?php echo base_url(); ?>Auth/logout"  class="dropdown-item">Logout</a></li>


                        </div>
                      </ul>

                    <?php endif; ?>
                  </ul>
                  <li class="nav-item " style="margin-left: 0px;" ><a onmousedown="mouseclick.play()" >  <img   class="zoom  container float-right card-img-top img-fluid    "
                    id="mutebtn"  style=" width: 80px;
                    margin-top: 0px;
                    border: 0;
                    margin-bottom: 0px;
                    background: transparent; " src="<?php echo site_url(); ?>assets/images/SPEDEMY/<?php echo $controls; ?>.png"   />
                  </a>
                 </li>
              </div>
          </div>
      </nav>
    </div>


    <div id="static" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
           <div class="modal-dialog" style="width:80%">
               <div class="modal-content">
                   <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                       <h4 class="modal-title"></h4>
                   </div>

                   <div class="modal-body">
                    <h1> <label for="" style="color:black">ENTER CODE TO JOIN A CLASS</label></h1>
                     <input type="text" name="" value="" style="color:black">
                   </div>
                   <div class="modal-footer">
                       <button type="button" data-dismiss="modal" class="btn dark btn-outline">Cancel</button>
                       <button type="button" data-dismiss="modal" class="btn green">Continue Task</button>
                   </div>
               </div>
           </div>
       </div>
