# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.30 Disable inetd ttdbserver for tcp' do
  impact 0.6
  title '2.1.1.30 Disable inetd ttdbserver for tcp'
  desc 'Disable inetd ttdbserver for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?xti\s+?tcp\s+?swait\s+?root\s+?\/usr\/dt\/bin\/rpc.ttdbserver/) }
  end
end

