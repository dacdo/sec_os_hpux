# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.05 Disable inetd dtspcd for tcp' do
  impact 0.6
  title '2.1.1.05 Disable inetd dtspcd for tcp'
  desc 'Disable inetd dtspcd for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*dtspcd\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/dt\/bin\/dtspcd/) }
  end
end

