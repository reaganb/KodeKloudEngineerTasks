class yum_group {
  yum::group { 'Fedora Packager':
    ensure => present,
  }
}

node 'stapp01.stratos.xfusioncorp.com','stapp02.stratos.xfusioncorp.com','stapp03.stratos.xfusioncorp.com' {
  include yum_group
}