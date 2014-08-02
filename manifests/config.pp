class pxelinux::config inherits pxelinux {

  file {

    '/tftpboot/pxelinux.cfg':
      ensure  => directory,
      owner   => 'root',
      group   => 'root',
      mode    => '0755',
      require => Package['syslinux-tftpboot'];

    '/tftpboot/pxelinux.cfg/default':
      ensure  => file,
      content => template("${module_name}/default.erb"),
      owner   => 'root',
      group   => 'root',
      mode    => '0644';
  }
}
