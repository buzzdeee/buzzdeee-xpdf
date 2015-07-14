# Private class, do not use directly.
# Takes care about the system xpdfrc.

class xpdf::config (
  $configfile,
  $gsfontsdir,
  $msttfontsdir,
  $printcommand,
  $papersize,
  $textencoding,
  $texteol,
  $enablefreetype,
  $antialias,
  $urlcommand,
) {
  file { $configfile:
    owner   => 'root',
    group   => '0',
    mode    => '0644',
    content => template('xpdf/xpdfrc.erb'),
  }
}
