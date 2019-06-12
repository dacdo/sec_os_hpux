# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.29a Disable inetd time for udp6' do
  impact 0.6
  title '2.1.1.29a Disable inetd time for udp6'
  desc 'Disable inetd time for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*time\s+?dgram\s+?udp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.29b Disable inetd time for tcp6' do
  impact 0.6
  title '2.1.1.29b Disable inetd time for tcp6'
  desc 'Disable inetd time for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*time\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

