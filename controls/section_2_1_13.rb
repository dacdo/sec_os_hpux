# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.13 Disable inetd recserv for tcp' do
  impact 0.6
  title '2.1.1.13 Disable inetd recserv for tcp'
  desc 'Disable inetd recserv for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*recserv\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/etc\/lbin\/recserv/) }
  end
end

