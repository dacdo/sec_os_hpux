# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.07 Disable inetd ntalk for udp' do
  impact 0.6
  title '2.1.1.07 Disable inetd ntalk for udp'
  desc 'Disable inetd ntalk for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*ntalk\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lbin\/ntalkd/) }
  end
end

