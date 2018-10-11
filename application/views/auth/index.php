<?php $this->load->view('admin/inc/top');?>

<div id="infoMessage"><?php echo $message;?></div>
<table class="table table-striped table-bordered table-hover table-checkable order-column" id="sample_1">
  <thead>
    <tr>
      <th><?php echo lang('index_fname_th');?></th>
      <th><?php echo lang('index_lname_th');?></th>
      <th><?php echo lang('index_email_th');?></th>
      <th><?php echo lang('index_groups_th');?></th>
      <th><?php echo lang('index_status_th');?></th>
      <th><?php echo lang('index_action_th');?></th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($users as $user):?>
    <tr class="odd gradeX">
      <td><?php echo htmlspecialchars($user->first_name,ENT_QUOTES,'UTF-8');?></td>
      <td><?php echo htmlspecialchars($user->last_name,ENT_QUOTES,'UTF-8');?></td>
      <td><?php echo htmlspecialchars($user->email,ENT_QUOTES,'UTF-8');?></td>
      <td>
	  <?php foreach ($user->groups as $group):?>
        <?php echo anchor("auth/edit_group/".$group->id, htmlspecialchars($group->name,ENT_QUOTES,'UTF-8')) ;?>
        <?php endforeach?></td>

      <td><?php echo ($user->active) ? anchor("auth/deactivate/".$user->id, lang('index_active_link')) : anchor("auth/activate/". $user->id, lang('index_inactive_link'));?></td>
      <td><?php echo anchor("auth/edit_user/".$user->id, 'Edit') ;?></td>
    </tr>
    <?php endforeach;?>
  </tbody>
</table>
<p><?php echo anchor('auth/register', lang('index_create_user_link'))?> | <?php echo anchor('auth/register', lang('index_create_group_link'))?></p>

<?php $this->load->view('admin/inc/footer');?>
