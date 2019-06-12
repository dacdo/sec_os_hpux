# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.35 Disable inetd swat for tcp' do
  impact 0.6
  title '2.1.1.35 Disable inetd swat for tcp'
  desc 'Disable inetd swat for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*swat\s+?stream\s+?tcp\s+?nowait.400\s+?root\s+?\/opt\/samba\/bin\/swat/) }
  end
end

