override['apache']['default_site_enabled'] = false
default['apache']['log_level'] = 'debug'

case node['platform']
when 'ubuntu'
  default['apache']['log_level'] = 'warn'
else
  default['apache']['log_level'] = 'debug'
end

default['apache']['aliases'] = ['url1.com','url2.com','url100500.com']
