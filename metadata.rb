name 'python_setup'
maintainer 'Eagle Genomics Ltd'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache-2.0'
description 'Installs/Configures python_setup'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version '>= 14.10'
supports 'ubuntu', '= 18.04'
source_url 'https://github.com/EagleGenomics-cookbooks/python_setup'
issues_url 'https://github.com/EagleGenomics-cookbooks/python_setup/issues'
version '0.0.1'

depends 'pyenv'
