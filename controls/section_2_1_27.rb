# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.27 Disable inetd klogin for tcp' do
  impact 0.6
  title '2.1.1.27 Disable inetd klogin for tcp'
  desc 'Disable inetd klogin for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*klogin\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/lbin\/rlogind/) }
  end
end

