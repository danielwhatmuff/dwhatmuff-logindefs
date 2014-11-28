# == Class: logindefs
#
# Used to control the configuration of /etc/login.defs in Ubuntu 
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
# Copyright 2014 Daniel Whatmuff
#
class logindefs (
  $config         = hiera_hash('logindefs::configuration', false),
  $conf_file      = '/etc/login.defs',
  $file_status    = 'present',
)
{

  if !$config {
    fail('You must define a configuration hash in hiera with key values to be used within /etc/login.defs')
  }

  validate_hash($config)

  class { 'logindefs::config': }

}
