# == Class: logindefs
#
# Used to control the configuration of /etc/login.defs
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
# === Hiera
#
# This module expects a hiera hash, defined in the format shown below with the key/values to be used in /etc/login.defs
#
# logindefs::configuration:
#   MAIL_DIR: '/var/mail'
#   FAILLOG_ENAB: 'yes'
#   LOG_UNKFAIL_ENAB: 'no'
#   LOG_OK_LOGINS: 'no'
#   SYSLOG_SU_ENAB: 'yes'
#   SYSLOG_SG_ENAB: 'yes'
#   FTMP_FILE: '/var/log/btmp'
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
