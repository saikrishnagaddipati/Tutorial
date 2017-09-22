class { 'filebeat':
  service_enable => true,
  service_ensure => 'running',
  config_dir => '/etc/filebeat',
  purge_conf_dir => false,
  prospectors => $prospectors,
  outputs => {
    'kafka'     => {
     'hosts' => [
       'localhost:5044',
       'anotherserver:5044'
     ],
  'loadbalance' => true,
    },
  },
}

 filebeat::prospector { 'syslogs':
   paths    => [
     '/var/log/auth.log',
     '/var/log/syslog',
   ],
   input_type => 'log',
 }
