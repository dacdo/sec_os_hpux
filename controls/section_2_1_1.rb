# encoding: utf-8
# copyright: 2018, The Authors

control '2.1.1.01a Disable inetd echo for tcp6' do
  impact 0.6
  title '2.1.1.01a Disable inetd echo for tcp6'
  desc 'Disable inetd echo for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*echo\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.01b Disable inetd echo for udp6' do
  impact 0.6
  title '2.1.1.01b Disable inetd echo for udp6'
  desc 'Disable inetd echo for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*echo\s+?dgram\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.02a Disable inetd discard for tcp6' do
  impact 0.6
  title '2.1.1.01a Disable inetd discard for tcp6'
  desc 'Disable inetd discard for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*discard\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.02b Disable inetd discard for udp6' do
  impact 0.6
  title '2.1.1.02b Disable inetd discard for udp6'
  desc 'Disable inetd discard for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*discard\s+?dgram\s+?udp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.03a Disable inetd daytime for tcp6' do
  impact 0.6
  title '2.1.1.03a Disable inetd daytime for tcp6'
  desc 'Disable inetd daytime for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*daytime\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.03b Disable inetd daytime for udp6' do
  impact 0.6
  title '2.1.1.03b Disable inetd daytime for udp6'
  desc 'Disable inetd daytime for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*daytime\s+?dgram\s+?udp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.4a Disable inetd chargen for tcp6' do
  impact 0.6
  title '2.1.1.4a Disable inetd chargen for tcp6'
  desc 'Disable inetd chargen for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*chargen\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.4b Disable inetd chargen for udp6' do
  impact 0.6
  title '2.1.1.4b Disable inetd chargen for udp6'
  desc 'Disable inetd chargen for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*chargen\s+?dgram\s+?udp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.5 Disable inetd dtspcd for tcp' do
  impact 0.6
  title '2.1.1.5 Disable inetd dtspcd for tcp'
  desc 'Disable inetd dtspcd for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*dtspc\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/dt\/bin\/dtspcd/) }
  end
end

control '2.1.1.06 Disable inetd exec for tcp6' do
  impact 0.6
  title '2.1.1.06 Disable inetd exec for tcp6'
  desc 'Disable inetd exec for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*exec\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/rexecd/) }
  end
end

control '2.1.1.07 Disable inetd ntalk for udp' do
  impact 0.6
  title '2.1.1.07 Disable inetd ntalk for udp'
  desc 'Disable inetd ntalk for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*ntalk\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lbin\/ntalkd/) }
  end
end

control '2.1.1.08 Disable inetd finger for tcp' do
  impact 0.6
  title '2.1.1.08 Disable inetd finger for tcp'
  desc 'Disable inetd finger for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*finger\s+?stream\s+?tcp\s+?nowait\s+?bin\s+?\/usr\/lbin\/fingerd/) }
  end
end

control '2.1.1.09 Disable inetd uucp for tcp' do
  impact 0.6
  title '2.1.1.09 Disable inetd uucp for tcp'
  desc 'Disable inetd uucp for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*uucp\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/sbin\/uucpd/) }
  end
end

control '2.1.1.10 Disable inetd auth for tcp6' do
  impact 0.6
  title '2.1.1.10 Disable inetd auth for tcp6'
  desc 'Disable inetd auth for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*auth\s+?stream\s+?tcp6\s+?wait\s+?bin\s+?\/usr\/lbin\/identd/) }
  end
end

control '2.1.1.11 Disable inetd instl_boots for udp' do
  impact 0.6
  title '2.1.1.11 Disable inetd instl_boots for udp'
  desc 'Disable inetd instl_boots for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*instl_boots\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/opt\/ignite\/lbin\/instl_bootd/) }
  end
end

control '2.1.1.12 Disable inetd registrar for tcp6' do
  impact 0.6
  title '2.1.1.12 Disable inetd registrar for tcp6'
  desc 'Disable inetd registrar for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*registrar\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/etc\/opt\/resmon\/lbin\/registrar/) }
  end
end

control '2.1.1.13 Disable inetd recserv for tcp' do
  impact 0.6
  title '2.1.1.13 Disable inetd recserv for tcp'
  desc 'Disable inetd recserv for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*recserv\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/etc\/lbin\/recserv/) }
  end
end

control '2.1.1.14 Disable inetd rstat for udp' do
  impact 0.6
  title '2.1.1.14 Disable inetd rstat for udp'
  desc 'Disable inetd rstat for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lib\/netsvc\/rstat\/rpc.rstatd/) }
  end
end

control '2.1.1.15 Disable inetd rusers for udp' do
  impact 0.6
  title '2.1.1.15 Disable inetd rusers for udp'
  desc 'Disable inetd rusers for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lib\/netsvc\/rusers\/rpc.rusersd/) }
  end
end

control '2.1.1.16 Disable inetd rwall for udp' do
  impact 0.6
  title '2.1.1.16 Disable inetd rwall for udp'
  desc 'Disable inetd rwall for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lib\/netsvc\/rwall\/rpc.rwalld/) }
  end
end

control '2.1.1.17 Disable inetd spray for udp' do
  impact 0.6
  title '2.1.1.17 Disable inetd spray for udp'
  desc 'Disable inetd spray for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lib\/netsvc\/spray\/rpc.sprayd/) }
  end
end

control '2.1.1.18 Disable inetd cmsd for udp' do
  impact 0.6
  title '2.1.1.18 Disable inetd cmsd for udp'
  desc 'Disable inetd cmsd for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/dt\/bin\/rpc.cmsd/) }
  end
end

control '2.1.1.19 Disable inetd printer for tcp' do
  impact 0.6
  title '2.1.1.19 Disable inetd printer for tcp'
  desc 'Disable inetd printer for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*printer\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/sbin\/rlpdaemon/) }
  end
end

control '2.1.1.20 Disable inetd shell for tcp6' do
  impact 0.6
  title '2.1.1.20 Disable inetd shell for tcp6'
  desc 'Disable inetd shell for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*shell\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/remshd/) }
  end
end

control '2.1.1.21 Disable inetd login for tcp6' do
  impact 0.6
  title '2.1.1.21 Disable inetd login for tcp6'
  desc 'Disable inetd login for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*login\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/rlogind/) }
  end
end

control '2.1.1.22 Disable inetd telnet for tcp6' do
  impact 0.6
  title '2.1.1.22 Disable inetd telnet for tcp6'
  desc 'Disable inetd telnet for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*telnet\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/telnetd/) }
  end
end

control '2.1.1.23 Disable inetd ftp for tcp6' do
  impact 0.6
  title '2.1.1.23 Disable inetd ftp for tcp6'
  desc 'Disable inetd ftp for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*ftp\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/ftpd/) }
  end
end

control '2.1.1.24 Disable inetd tftp for udp' do
  impact 0.6
  title '2.1.1.24 Disable inetd tftp for udp'
  desc 'Disable inetd tftp for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*tftp\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lbin\/tftpd/) }
  end
end

control '2.1.1.25 Disable inetd bootps for udp' do
  impact 0.6
  title '2.1.1.25 Disable inetd bootps for udp'
  desc 'Disable inetd bootps for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*bootps\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/lbin\/bootpd/) }
  end
end

control '2.1.1.26 Disable inetd kshell for tcp6' do
  impact 0.6
  title '2.1.1.26 Disable inetd kshell for tcp6'
  desc 'Disable inetd kshell for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*kshell\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/remshd/) }
  end
end

control '2.1.1.27 Disable inetd klogin for tcp6' do
  impact 0.6
  title '2.1.1.27 Disable inetd klogin for tcp6'
  desc 'Disable inetd klogin for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*klogin\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?\/usr\/lbin\/rlogind/) }
  end
end

control '2.1.1.28 Disable inetd rquotad for udp' do
  impact 0.6
  title '2.1.1.28 Disable inetd rquotad for udp'
  desc 'Disable inetd rquotad for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/usr\/sbin\/rpc.rquotad/) }
  end
end

control '2.1.1.29a Disable inetd time for udp6' do
  impact 0.6
  title '2.1.1.29a Disable inetd time for udp6'
  desc 'Disable inetd time for udp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*time\s+?dgram\s+?udp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.29b Disable inetd time for tcp6' do
  impact 0.6
  title '2.1.1.29b Disable inetd time for tcp6'
  desc 'Disable inetd time for tcp6'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*time\s+?stream\s+?tcp6\s+?nowait\s+?root\s+?internal/) }
  end
end

control '2.1.1.30 Disable inetd ttdbserver for tcp' do
  impact 0.6
  title '2.1.1.30 Disable inetd ttdbserver for tcp'
  desc 'Disable inetd ttdbserver for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?xti\s+?tcp\s+?swait\s+?root\s+?\/usr\/dt\/bin\/rpc.ttdbserver/) }
  end
end

control '2.1.1.31 Disable inetd rexd for tcp' do
  impact 0.6
  title '2.1.1.31 Disable inetd rexd for tcp'
  desc 'Disable inetd rexd for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?stream\s+?tcp\s+?nowait\s+?root\s+?\/usr\/sbin\/rpc.rexd/) }
  end
end

control '2.1.1.32 Disable inetd gssd for ticotsord' do
  impact 0.6
  title '2.1.1.32 Disable inetd gssd for ticotsord'
  desc 'Disable inetd gssd for ticotsord'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*rpc\s+?xti\s+?ticotsord\s+?swait\s+?root\s+?\/usr\/lib\/gss\/gssd/) }
  end
end

control '2.1.1.33 Disable inetd ncpm-pm for udp' do
  impact 0.6
  title '2.1.1.33 Disable inetd ncpm-pm for udp'
  desc 'Disable inetd ncpm-pm for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*ncpm-pm\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/opt\/ncpm\/bin\/ncpmd/) }
  end
end

control '2.1.1.34 Disable inetd ncpm-hip for udp' do
  impact 0.6
  title '2.1.1.34 Disable inetd ncpm-hip for udp'
  desc 'Disable inetd ncpm-hip for udp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*ncpm-hip\s+?dgram\s+?udp\s+?wait\s+?root\s+?\/opt\/ncpm\/bin\/hipd/) }
  end
end

control '2.1.1.35 Disable inetd swat for tcp' do
  impact 0.6
  title '2.1.1.35 Disable inetd swat for tcp'
  desc 'Disable inetd swat for tcp'
  describe file('/etc/inetd.conf') do
    its('content') { should match(/#\s*swat\s+?stream\s+?tcp\s+?nowait.400\s+?root\s+?\/opt\/samba\/bin\/swat/) }
  end
end

