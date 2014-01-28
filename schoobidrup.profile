<?php

/**
 * Implements hook_install_tasks()
 */
function schoobidrup_install_tasks(&$install_state) {
  $tasks = array();

  // Add our custom CSS file for the installation process
  drupal_add_css(drupal_get_path('profile', 'schoobidrup') . '/schoobidrup.css');

  return $tasks;
}

?>
