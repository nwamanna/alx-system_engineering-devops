# File: nginx_config.pp

package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => "
    server {
      listen 80 default_server;
      listen [::]:80 default_server;
    
      root /var/www/html;
      index index.html;
    
      location / {
        try_files \$uri \$uri/ =404;
      }
    
      location = /redirect_me {
        return 301 https://www.example.com/new_page;
      }
    }
  ",
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
}

service { 'nginx':
  ensure => running,
  enable => true,
}

