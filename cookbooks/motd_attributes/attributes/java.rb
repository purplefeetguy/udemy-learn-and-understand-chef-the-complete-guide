# set an attribute in a second attribute file (java.rb for this example)
default['motd_attributes']['java_home'] = '/opt/java'
# this java_bin will set as all attribute files are read in alphabetical order to last file setting the same attribute wins
default['motd_attributes']['java_bin'] = '/opt/java/bin/java'
