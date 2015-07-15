case $operatingsystem { # Install only on Ubuntu 14.04 &
  'ubuntu' : {
    if (!($operatingsystemrelease == '14.10')) {
      fail('Unsupported operating system')
    }
  }
  default  : {
    fail('Unsupported operating system')
  }
}
node default {
  
  include 'tomcat7-examples::install' # include in the installation code of this node the module tomcat::install
}