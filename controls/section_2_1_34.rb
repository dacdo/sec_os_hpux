# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.34 Disable inetd ncpm-hip for udp' do
  impact 0.6
  title '2.1.1.34 Disable inetd ncpm-hip for udp'
  desc 'Disable inetd ncpm-hip for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*ncpm-hip\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/opt\/ncpm\/bin\/hipd/) }
  end
end

