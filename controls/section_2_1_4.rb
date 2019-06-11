# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.4.01a Disable inetd chargen for tcp6' do
  impact 0.6
  title '2.1.4.01a Disable inetd chargen for tcp6'
  desc 'Disable inetd chargen for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*chargen\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.4.01b Disable inetd chargen for udp6' do
  impact 0.6
  title '2.1.4.01b Disable inetd chargen for udp6'
  desc 'Disable inetd chargen for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*chargen\s+?dgram\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end
