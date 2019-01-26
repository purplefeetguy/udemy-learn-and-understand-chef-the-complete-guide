#
# Cookbook:: motd
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

cookbook_file '/etc/motd' do
  source 'motd'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

cookbook_file '/etc/profile.d/motd.sh' do
  source 'motd.sh'
  owner 'root'
  group 'root'
  mode '0755'
end
