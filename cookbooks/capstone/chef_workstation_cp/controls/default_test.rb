control 'ChefDK is installed' do
  describe file('/opt/chefdk/bin/chef') do
    it { should exist }
  end

  describe command('/opt/chefdk/bin/chef --version') do
    its('stdout') { should match(/Chef Development Kit Version: /) }
  end
end

control 'ChefDK is at least 3.6.57' do
  describe(chefdk_version) do
    its('major_version') { should be >= 3 }
    its('minor_version') { should be >= 7 }
    its('patch_version') { should be >= 23 }
  end
end
