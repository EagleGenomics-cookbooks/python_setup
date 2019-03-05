#
# Cookbook:: python_setup
# Recipe:: default
#
# Copyright:: 2019, Eagle Genomics Ltd, All Rights Reserved.

apt_update if node['platform_family'] == 'debian'

build_essential 'install essential' do
  action :install
end

# Install pyenv globally
pyenv_system_install 'system'

# isntall python version (already installed on ubuntu 18.04)
pyenv_python node['python']['version']

# switch global python version to be used
pyenv_global node['python']['version']

# Fix for https://github.com/pyenv/pyenv/issues/1157
directory '/usr/local/pyenv/shims/' do
  mode '0777'
  action :create
end
