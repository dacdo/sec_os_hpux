# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.2.02a Disable inetd discard for tcp6' do
  impact 0.6
  title '2.1.2.01a Disable inetd discard for tcp6'
  desc 'Disable inetd discard for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*discard\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.2.02b Disable inetd discard for udp6' do
  impact 0.6
  title '2.1.2.01b Disable inetd discard for udp6'
  desc 'Disable inetd discard for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*discard\s+?dgram\s+?udp6\s+?nowait\s+?root\s+?internal/) }
  end
end
