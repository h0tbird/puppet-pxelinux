class pxelinux::config inherits pxelinux {

  file { '/tftpboot/pxelinux.cfg':
    ensure  => directory,
    source  => "puppet:///modules/${module_name}/pxelinux.cfg",
    recurse => true,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    require => Package['syslinux-tftpboot'];
  }
}
