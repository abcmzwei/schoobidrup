<?php

/**
 * Implements hook_install_tasks()
 */
function schoobidrup_install_tasks(&$install_state) {
  $tasks = array();

  // Add our custom CSS file for the installation process
  drupal_add_css(drupal_get_path('profile', 'schoobidrup') . '/schoobidrup.css');

  // Add the Panopoly app selection to the installation process
  require_once(drupal_get_path('module', 'apps') . '/apps.profile.inc');
  $tasks = $tasks + apps_profile_install_tasks($install_state, array('machine name' => 'openatrium', 'default apps' => array()));

// Need to rebuild search index tables since oa_search changes panopoly_search
  $tasks['open_atrium_rebuild_search'] = array(
    'type' => 'normal',
  );

  return $tasks;
}

?>
