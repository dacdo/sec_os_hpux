# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.08 Disable inetd finger for tcp' do
  impact 0.6
  title '2.1.1.08 Disable inetd finger for tcp'
  desc 'Disable inetd finger for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*finger\s+?stream\s+?tcp\s+?nowait\s+?bin\s+?\/usr\/lbin\/fingerd/) }
  end
end

