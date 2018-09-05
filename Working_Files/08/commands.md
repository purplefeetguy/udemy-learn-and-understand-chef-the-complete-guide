
# Inspec package resource documentation
http://inspec.io/docs/reference/resources/package/

# Chef package resource documentation
https://docs.chef.io/resource.html#package

# EPEL
https://fedoraproject.org/wiki/EPEL/FAQ

kitchen list
kitchen converge
# will fail
kitchen converge
# will fail
kitchen converge
kitchen verify
kitchen destroy

# To recover from weird kitchen-dokken errors
kitchen destroy
rm -rf .kitchen

0806 Actions have defaults
==========================
# Chef package resource documentation
https://docs.chef.io/resource.html#package

atom .
kitchen list
kitchen converge
kitchen verify

0807 service resource
=====================
kitchen converge
# will fail
kitchen converge
kitchen verify
kitchen login
rpm -qa | grep nginx
systemctl is-enabled nginx
exit

0808 Add content to the website
===============================
kitchen converge
kitchen verify
chef generate template index.html
kitchen converge
kitchen verify
kitchen login
curl localhost
exit

0809 Verifying nginx on your host
=================================
kitchen destroy
kitchen converge
kitchen verify
# visit http://localhost:9080 in a web browser on your host
kitchen destroy


