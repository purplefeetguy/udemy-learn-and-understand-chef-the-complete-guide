#
# Cookbook:: motd_attributes
# Recipe:: java
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# using attributes in other recipes
node.default['motd_attributes']['java_home'] = '/opt/java'
node.default['motd_attributes']['java_bin'] = '/opt/java/bin/java'
