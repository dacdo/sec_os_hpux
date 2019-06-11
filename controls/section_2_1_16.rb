# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.16 Disable inetd rwall for udp' do
  impact 0.6
  title '2.1.1.16 Disable inetd rwall for udp'
  desc 'Disable inetd rwall for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lib/\/netsvc\/rwall\/rpc.rwalld/) }
  end
end

