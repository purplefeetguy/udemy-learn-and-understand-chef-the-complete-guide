#
# Cookbook:: motd_attributes
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

cookbook_file '/etc/profile.d/motd.sh' do
  source 'motd.sh'
  mode '0755'
end

template '/etc/motd' do
  source 'motd.erb'
  mode '0644'
end

# declare a customer "node" attribute with a precedence of "default"
# good practice is to set the custom attributes namespace top level key to match the cookbook name
node.default['motd_attributes']['message'] = "It's a wonderful day today!"
# try to override an automatic attribute with a recipe attribute; this will fail due to precedence
node.default['ipaddress'] = '1.1.1.1'
# try to override an attributes file attribute with a recipe attribute; this will work due to precedence
node.default['motd_attributes']['company'] = "No'Reilly"
# duplicate an existing recipe attribute with different values; this will work but only implements the last attribute
node.default['motd_attributes']['message'] = "It's a horrible day today!"
