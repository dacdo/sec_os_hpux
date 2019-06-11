# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.18 Disable inetd cmsd for udp' do
  impact 0.6
  title '2.1.1.18 Disable inetd cmsd for udp'
  desc 'Disable inetd cmsd for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/dt/\/bin\/rpc.cmsd/) }
  end
end

