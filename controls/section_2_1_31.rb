# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.31 Disable inetd rexd for tcp' do
  impact 0.6
  title '2.1.1.31 Disable inetd rexd for tcp'
  desc 'Disable inetd rexd for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/sbin\/rpc.rexd/) }
  end
end

