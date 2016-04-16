name             'inadyn'
maintainer       'Bryan Alves'
maintainer_email 'bryanalves@gmail.com'
license          'MIT'
description      'Installs/Configures inadyn'
long_description 'Installs/Configures inadyn'
version          '0.0.1'
issues_url       'https://github.com/bryanalves/chef-inadyn/issues' if respond_to?(:issues_url)
source_url       'https://github.com/patientslikeme/chef-inadyn' if respond_to?(:source_url)

attribute 'inadyn/conf/logfile',
          display_name: 'Log file',
          description: 'Path to the inadyn log file',
          type: 'string'

attribute 'inadyn/conf/verbose',
          display_name: 'Verbose',
          description: 'Whether to have verbose logs or not',
          type: 'numeric'

attribute 'inadyn/conf/period',
          display_name: 'Refresh period',
          description: 'How often in seconds to check for updates',
          type: 'numeric'

attribute 'inadyn/conf/providers',
          display_name: 'Providers',
          description: 'List of inadyn providers',
          type: 'array'

recipe 'inadyn::default', 'Installs inadyn'
