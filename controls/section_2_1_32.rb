# encoding: utf-8
# copyright:2019, The Authors

control '2.1.1.32 Disable inetd gssd for ticotsord' do
  impact 0.6
  title '2.1.1.32 Disable inetd gssd for ticotsord'
  desc 'Disable inetd gssd for ticotsord'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?xti\s+?ticotsord\s+?swait\s+?root\s+?\/usr\/lib\/gss\/gssd/) }
  end
end

