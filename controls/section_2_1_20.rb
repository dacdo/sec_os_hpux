# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.20 Disable inetd shell for tcp6' do
  impact 0.6
  title '2.1.1.20 Disable inetd shell for tcp6'
  desc 'Disable inetd shell for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*shell\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/remshd/) }
  end
end

