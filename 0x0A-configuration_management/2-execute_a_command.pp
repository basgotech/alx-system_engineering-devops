# to kill process of killmenow

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}
