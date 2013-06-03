# Make sure apt-get -y update runs before anything else.
package { 'git':
	ensure => installed,
}

class install_mysql {
  class { 'mysql': }

  class { 'mysql::server':
    config_hash => { 'root_password' => '' }
  }
}
class { 'install_mysql': }

class { 'sqlite':}

class install-rvm {
  require epel

  include rvm
  rvm::system_user { vagrant: ; }

  rvm_system_ruby {
    'ruby-1.9.3-p392':
      ensure => 'present',
      default_use => true;
  }

  rvm_gem {
    'ruby-1.9.3-p392/bundler': ensure => latest;
    'ruby-1.9.3-p392/rails': ensure => latest;
    'ruby-1.9.3-p392/rake': ensure => latest;
  }

}

class { 'install-rvm': }
