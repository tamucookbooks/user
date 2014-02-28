case platform_family
when 'debian', 'rhel', 'suse'
  default['user']['home_root'] = '/home'
  default['user']['shell'] = '/bin/bash'
when 'omnios', 'smartos'
  default['user']['home_root'] = '/export/home'
  default['user']['shell'] = '/bin/bash'
end
