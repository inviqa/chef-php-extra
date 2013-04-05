default['xdebug']['cli_color'] = 1
default['xdebug']['scream'] = 0
default['xdebug']['remote_enable'] = "On"
default['xdebug']['remote_autostart'] = 0
default['xdebug']['remote_mode'] = "req"
default['xdebug']['remote_connect_back'] = 1
default['xdebug']['idekey'] = "macgdbp"
default['xdebug']['file_link_format'] = "txmt://open?url=file://%f&line=%1"
default['xdebug']['profiler_enable_trigger'] = 0
default['xdebug']['profiler_enable'] = 0
default['xdebug']['profiler_output_dir'] = "/tmp/cachegrind"

default['php']['ius'] = "5.3"

default['xcache']['zend_extension'] = '/usr/lib64/php/modules/xcache.so'

default['xcache']['admin.auth'] = 'On'
default['xcache']['admin.user'] = 'admin'
default['xcache']['admin.pass'] = ''
default['xcache']['test'] = 'Off'
default['xcache']['cacher'] = 'On'
default['xcache']['size'] = '256M'
default['xcache']['count'] = 25
default['xcache']['slots'] = '16K'
default['xcache']['ttl'] = 3600
default['xcache']['gc_interval'] = 300
default['xcache']['stat'] = 0
default['xcache']['var_size'] = '4M'
default['xcache']['var_count'] = 1
default['xcache']['var_slots'] = '8K'
default['xcache']['var_ttl'] = 3600
default['xcache']['var_maxttl'] = 3600
default['xcache']['var_gc_interval'] = 300
default['xcache']['readonly_protection'] = 'Off'
default['xcache']['mmap_path'] = '/dev/zero'
default['xcache']['optimizer'] = 'Off'
default['xcache']['coverager'] = 'Off'

default['phpunit']['version'] = '3.6.11'

default['phpredis']['revision'] = 'master'
