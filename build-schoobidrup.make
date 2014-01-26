api = 2
core = 7.x

; Include Drupal core and any core patches

includes[] = drupal-org-core.make

; download the schoobidrup install profile and recursively build all its dependencies

projects[k12_scsm][type] = "profile"
projects[k12_scsm][download][type] = "git"
projects[k12_scsm][download][url] = "https://github.com/abcmzwei/schoobidrup.git"
projects[k12_scsm][download][branch] = "master"
