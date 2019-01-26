# set attribute precedence; no need for node reference as all attributes in an attribute file
# are assumed to be node attributes
default['motd_attributes']['company'] = "0'Reilly"
# try to set attribute to override OHAI automatic attribute; this fails due to precedence
default['ipaddress'] = '1.1.1.1'
default['motd_attributes']['java_bin'] = 'usr/local/bin/java'
# Composed Attributes are bad
default['motd_attributes']['tomcat_home'] = '/usr/local/tomcat6'
# expectation for below composed attribute is /usr/local/tomcat6/bin/tomcat
default['motd_attributes']['tomcat_bin'] = "#{node['motd_attributes']['tomcat_home']}/bin/tomcat"
