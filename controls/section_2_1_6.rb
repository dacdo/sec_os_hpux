# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.06 Disable inetd exec for tcp6' do
  impact 0.6
  title '2.1.1.06 Disable inetd exec for tcp6'
  desc 'Disable inetd exec for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*exec\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/rexecd/) }
  end
end

