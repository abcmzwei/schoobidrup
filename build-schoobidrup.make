api = 2
core = 7.x

; Include Drupal core and any core patches

includes[] = drupal-org-core.make

; download the schoobidrup install profile and recursively build all its dependencies

projects[schoobidrup][type] = "profile"
projects[schoobidrup][download][type] = "git"
projects[schoobidrup][download][url] = "https://github.com/abcmzwei/schoobidrup.git"
projects[schoobidrup][download][branch] = "master"
