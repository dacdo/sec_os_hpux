# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.10 Disable inetd auth for tcp6' do
  impact 0.6
  title '2.1.1.10 Disable inetd auth for tcp6'
  desc 'Disable inetd auth for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*auth\s+?stream\s+?tcp6\s+?wait\s+?bin\s+?\/usr\/lbin\/idend/) }
  end
end

