# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.23 Disable inetd ftp for tcp6' do
  impact 0.6
  title '2.1.1.23 Disable inetd ftp for tcp6'
  desc 'Disable inetd ftp for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*ftp\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/ftpd/) }
  end
end

