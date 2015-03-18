logindefs
===================

This is the logindefs module.

Usage
===================

This module requires a hiera hash containing the key values to be used in the config.

logindefs::configuration:
  MAIL_DIR: '/var/mail'
  FAILLOG_ENAB: 'yes'
  LOG_UNKFAIL_ENAB: 'no'
  LOG_OK_LOGINS: 'no'
  SYSLOG_SU_ENAB: 'yes'
  SYSLOG_SG_ENAB: 'yes'
  FTMP_FILE: '/var/log/btmp'
  SU_NAME: 'su'
  HUSHLOGIN_FILE: '.hushlogin'
  (continued...)

License
===================
GNU GENERAL PUBLIC LICENSE

Contact
===================

danielwhatmuff@gmail.com
