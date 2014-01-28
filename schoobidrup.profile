<?php

/**
* Implements hook_install_tasks().
*/

function schoobidrup_install_tasks($install_state) {
  $tasks = array();

  // Add the Panopoly App Server to the Installation Process
  require_once(drupal_get_path('module', 'apps') . '/apps.profile.inc');

  $tasks = $tasks + apps_profile_install_tasks($install_state, array('machine name' => 'panopoly', 'default apps' => array('panopoly_demo')));

  return $tasks;
}

?>
