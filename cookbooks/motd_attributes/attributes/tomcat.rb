# based on last in-first priciple, the expectation is that this will update to java8
# the composed attribute in java.rb, but it does not
default['motd_attributes']['tomcat_home'] = '/usr/local/tomcat8'
# attributes don't work exactly as variables, composed variables will set at the moment
# of evaulation, ignoring chef precedence rules. It is best NOT to use composed variables
