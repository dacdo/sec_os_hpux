# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.3.01a Disable inetd daytime for tcp6' do
  impact 0.6
  title '2.1.3.01a Disable inetd daytime for tcp6'
  desc 'Disable inetd daytime for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*daytime\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.3.01b Disable inetd daytime for udp6' do
  impact 0.6
  title '2.1.3.01b Disable inetd daytime for udp6'
  desc 'Disable inetd daytime for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*daytime\s+?dgram\s+?udp6\s+?nowait\s+?root\s+?internal/) }
  end
end
