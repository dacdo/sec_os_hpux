# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.01a Disable inetd echo for tcp6' do
  impact 0.6
  title '2.1.1.01a Disable inetd echo for tcp6'
  desc 'Disable inetd echo for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*echo\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.01b Disable inetd echo for udp6' do
  impact 0.6
  title '2.1.1.01b Disable inetd echo for udp6'
  desc 'Disable inetd echo for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*echo\s+?dgram\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end
