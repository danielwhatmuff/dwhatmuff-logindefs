# == Class: logindefs::config
#
# Used to control the configuration of login defs
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { logindefs::config:
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
class logindefs::config
{

  file { $logindefs::conf_file:
    ensure    => $logindefs::file_status,
    mode      => '0644',
    owner     => 'root',
    group     => 'root',
    content   => template("${module_name}/${logindefs::conf_file}.erb"),
  }

}
