# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.24 Disable inetd tftp for udp' do
  impact 0.6
  title '2.1.1.24 Disable inetd tftp for udp'
  desc 'Disable inetd tftp for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*tftp\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lbin\/tftpd/) }
  end
end

