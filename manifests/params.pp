# Private class, do not use directly.
# The parameters that drive this module.

class xpdf::params {
  $configfile     = '/etc/xpdfrc'
  $gsfontsdir     = '/usr/local/share/fonts/ghostscript'
  $msttfontsdir   = '/usr/local/share/fonts/mscorefonts'
  $printcommand   = '|lpr -Plp'
  $papersize      = 'A4'
  $textencoding   = 'UTF-8'
  $texteol        = 'unix'
  $enablefreetype = 'yes'
  $antialias      = 'yes'
  $urlcommand     = 'firefox -newtab -url \'openURL(%s)\''
  $package_name   = 'xpdf'
  $package_ensure = 'installed'
}
