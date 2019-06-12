# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.33 Disable inetd ncpm-pm for udp' do
  impact 0.6
  title '2.1.1.33 Disable inetd ncpm-pm for udp'
  desc 'Disable inetd ncpm-pm for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*ncpm-pm\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/opt\/ncpm\/bin\/ncpmd/) }
  end
end

