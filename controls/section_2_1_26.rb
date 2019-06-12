# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.26 Disable inetd kshell for tcp' do
  impact 0.6
  title '2.1.1.26 Disable inetd kshell for tcp'
  desc 'Disable inetd kshell for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*kshell\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/lbin\/remshd/) }
  end
end

