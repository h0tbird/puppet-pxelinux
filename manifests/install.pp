class pxelinux::install inherits pxelinux {

  package { 'syslinux-tftpboot': ensure => $version }
}
