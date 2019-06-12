# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.11 Disable inetd instl_boots for udp' do
  impact 0.6
  title '2.1.1.11 Disable inetd instl_boots for udp'
  desc 'Disable inetd instl_boots for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*instl_boots\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/opt\/ignite\/lbin\/instl_bootd/) }
  end
end

