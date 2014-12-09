name             'gitweb'
maintainer       'Jake Plimack Photography, LLC'
maintainer_email 'jake.plimack@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures gitweb'
long_description 'Installs/Configures gitweb'
version          '0.1.0'

%w( git apache2 nginx ).each { |dep| depends dep }
%w( debian ubuntu ).each { |os| supports os }
