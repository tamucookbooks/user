case platform_family
when 'debian', 'rhel', 'suse'
  default['user']['home_root'] = '/home'
  default['user']['default_shell'] = '/bin/bash'
when 'omnios', 'smartos'
  default['user']['home_root'] = '/export/home'
  default['user']['default_shell'] = '/bin/bash'
end
