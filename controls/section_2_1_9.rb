# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.09 Disable inetd uucp for tcp' do
  impact 0.6
  title '2.1.1.09 Disable inetd uucp for tcp'
  desc 'Disable inetd uucp for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*uucp\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/sbin\/uucpd/) }
  end
end

