# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.19 Disable inetd printer for tcp' do
  impact 0.6
  title '2.1.1.19 Disable inetd printer for tcp'
  desc 'Disable inetd printer for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*printer\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/sbin\/rlpdaemon/) }
  end
end

