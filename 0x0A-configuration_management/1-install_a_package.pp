# Define a resource class for managing pip packages
resource class pip::package { }

# Define a package resource for flask
pip::package { 'flask':
  ensure => '2.1.0',
  provider => 'pip3', # Specify pip3 provider
}

