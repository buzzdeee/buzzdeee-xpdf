# == Class: xpdf
#
# Full description of class xpdf here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'xpdf':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Sebastian Reitenbach <sebastia@l00-bugdead-prods.de>
#
# === Copyright
#
# Copyright 2015 Sebastian Reitenbach, unless otherwise noted.
#
class xpdf (
  $configfile     = $::xpdf::params::configfile,
  $gsfontsdir     = $::xpdf::params::gsfontsdir,
  $msttfontsdir   = $::xpdf::params::msttfontsdir,
  $printcommand   = $::xpdf::params::printcommand,
  $papersize      = $::xpdf::params::papersize,
  $textencoding   = $::xpdf::params::textencoding,
  $texteol        = $::xpdf::params::texteol,
  $enablefreetype = $::xpdf::params::enablefreetype,
  $antialias      = $::xpdf::params::antialias,
  $urlcommand     = $::xpdf::params::urlcommand,
  $package_name   = $::xpdf::params::package_name,
  $package_ensure = $::xpdf::params::package_ensure,
) inherits xpdf::params {

  class { 'xpdf::install':
    package_ensure => $package_ensure,
    package_name   => $package_name,
  }

  class { 'xpdf::config':
    configfile     => $configfile,
    gsfontsdir     => $gsfontsdir,
    msttfontsdir   => $msttfontsdir,
    printcommand   => $printcommand,
    papersize      => $papersize,
    textencoding   => $textencoding,
    texteol        => $texteol,
    enablefreetype => $enablefreetype,
    antialias      => $antialias,
    urlcommand     => $urlcommand,
  }

  Class['xpdf::install'] ->
  Class['xpdf::config']

}
