name             'user'
maintainer       'Texas A&M'
maintainer_email 'jarosser06@tamu.edu'
license          'MIT'
description      'Installs/Configures user'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.4.0'

%w(ubuntu centos omnios suse).each do |os|
  supports os
end
