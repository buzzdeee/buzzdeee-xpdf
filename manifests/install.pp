# Private class, do not use directly.
# Takes care about package installation.

class xpdf::install (
  $package_name,
  $package_ensure,
) {
  package { $package_name:
    ensure => $package_ensure,
  }
}
