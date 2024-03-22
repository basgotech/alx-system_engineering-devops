#!/usr/bin/pup
# Define a resource class for managing pip packages
resource class pip::package { }

# Install Flask 2.1.0 using pip3
pip::package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
