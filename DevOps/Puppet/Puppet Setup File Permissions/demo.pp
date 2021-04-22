class file_update {
  file { '/opt/finance/ecommerce.txt':
    ensure => 'present',
    content => 'Welcome to xFusionCorp Industries!',
    mode => '0777',
  }
}

node 'stapp02.stratos.xfusioncorp.com' {
  include file_update
}