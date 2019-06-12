# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.25 Disable inetd bootps for udp' do
  impact 0.6
  title '2.1.1.25 Disable inetd bootps for udp'
  desc 'Disable inetd bootps for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*bootps\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lbin\/bootpd/) }
  end
end

