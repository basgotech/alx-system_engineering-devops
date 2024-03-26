# Define class for Nginx installation and configuration
class nginx_config {

    # Install Nginx package
    package { 'nginx':
        ensure => installed,
    }

    # Define Nginx service
    service { 'nginx':
        ensure => running,
        enable => true,
    }

    # Configure Nginx site
    file { '/etc/nginx/sites-available/default':
        ensure  => file,
        replace => true,
        content => "
server {
    listen 80;
    listen [::]:80;

    root /var/www/html;

    index index.html;

    location / {
        return 200 'Hello World!\n';
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
}
",
        notify  => Service['nginx'],
    }
}

# Include the class
include nginx_config
