class openssl {

  file { "/etc/ssl/openssl.cnf":
    ensure => present,
    mode => "0644", owner => root, group => root,
    content => template("openssl/openssl.cnf"),
  }

  file { "/etc/ssl/userssl.cnf":
    ensure => present,
    mode => "0644", owner => root, group => root,
    content => template("openssl/userssl.cnf"),
  }

  file { "/etc/ssl/secret":
    ensure => present,
    content => "$local_ca_pass\n",
    mode => "0600", owner => root, group => root,
  }
  
}
