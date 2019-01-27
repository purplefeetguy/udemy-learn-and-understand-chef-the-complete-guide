# set attribute precedence; no need for node reference as all attributes in an attribute file
# are assumed to be node attributes
# change the attribute precedence from default to "override" to prevent changes from
# other sources
override['motd_attributes']['company'] = "0'Reilly"
# even if we set another attribute to try to overwrite
# last one in can't change the and attribute set to "override"
default['motd_attributes']['company'] = "No'Reilly"
# "override" still can't change an "automatic" attribute as "automatic" is the highest
# precedence
override['ipaddress'] = '1.1.1.1'
default['motd_attributes']['java_bin'] = 'usr/local/bin/java'
# Composed Attributes are bad
default['motd_attributes']['tomcat_home'] = '/usr/local/tomcat6'
# expectation for below composed attribute is /usr/local/tomcat6/bin/tomcat
default['motd_attributes']['tomcat_bin'] = "#{node['motd_attributes']['tomcat_home']}/bin/tomcat"

# Since we are now using attributes driven actions, we will need the "message" attribute
# to be set in the attributes file, not the recipe, so copy from recipe to below
default['motd_attributes']['message'] = "It's a wonderful day today!"

# by changing or blaning out the contents of this attribute, which poplutate motd
# you can effectively change or "uninstall" the motd message
default['motd_attributes']['motd'] = [
  "This node is running on #{node['virtualization']['system']}",
  "The IP address of this node is #{node['ipaddress']}",
  node['motd_attributes']['message'],
  "Welcome to #{node['motd_attributes']['company']}",
  "JAVA_HOME on this node is #{node['motd_attributes']['java_home']}",
  "Java binary is #{node['motd_attributes']['java_bin']}",
  "Tomcat binary is #{node['motd_attributes']['tomcat_bin']}",

]
