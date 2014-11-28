# == Class: logindefs
#
# Used to control the installation and configuration of Rootkit checker
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { logindefs:
#  }
#
# === Authors
#
#  Daniel Whatmuff <danielwhatmuff@gmail.com>
#
# === Copyright
#
# Copyright 2014 Daniel Whatmuff, UK HomeOffice
#
class logindefs (
  $config         = hiera_hash('logindefs::configuration', false),
  $conf_file      = '/etc/login.defs',
  $file_status    = 'present',
)
{

  if !$config {
    fail('You must define configuration in hiera where the keys are expected keys in the configuration and the values the config values')
  }

  validate_hash($config)

  class { 'logindefs::config': }

}
