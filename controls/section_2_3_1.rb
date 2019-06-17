# encoding: utf-8
# copyright: 2018, The Authors

control '2.3.1.1 CDE GUI login' do
  impact 0.6
  title '2.3.1.1 CDE GUI login'
  desc 'CDE GUI login'
  describe file('/etc/rc.config.d/desktop') do
    its('content') { should match(/DESKTOP\s*=\s*0/) }
    its('content') { should match(/XPRINTSERVERS\s*=\s*"\s*"/) }
  end
end

control '2.3.1.2 Disable printer daemons' do
  impact 0.6
  title '2.3.1.2 Disable printer daemons'
  desc 'Disable printer daemons'
  describe file('/etc/rc.config.d/tps') do
    its('content') { should match(/XPRINTSERVERS\s*=\s*"\s*"/) }
  end
  describe file('/etc/rc.config.d/lp') do
    its('content') { should match(/LP\s*=\s*0/) }
  end
end

control '2.3.1.3 Disable SNMP' do
  impact 0.6
  title '2.3.1.3 Disable SNMP'
  desc 'Disable SNMP'
  describe file('/sbin/rc2.d/S570SnmpFddi') do
    it { should_not exist } 
  end
  describe file('/etc/rc.config.d/SnmpHpunix') do
    its('content') { should match(/^\s*SNMP_HPUNIX_START\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/SnmpMaster') do
    its('content') { should match(/^\s*SNMP_MASTER_START\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/SnmpMib2') do
    its('content') { should match(/^\s*SNMP_MIB2_START\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/SnmpTrpDst') do
    its('content') { should match(/^\s*SNMP_TRAPDEST_START\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/netdaemons') do
    its('content') { should match(/^\s*OSPFMIB\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/opcagt') do
    its('content') { should match(/^\s*OPCAGT\s*=\s*0/) }
  end
end


control '2.3.1.4 Multicast daemon' do
  impact 0.6
  title '2.3.1.4 Multicast daemon'
  desc 'Multicast daemon'
  describe file('/etc/rc.config.d/netdaemons') do
    its('content') { should match(/MROUTED\s*=\s*0/) }
  end
end

control '2.3.1.5 Remote system status daemon' do
  impact 0.6
  title '2.3.1.5 Remote system status daemon'
  desc 'Remote system status daemon MROUTED'
  describe file('/etc/rc.config.d/netdaemons') do
    its('content') { should match(/MROUTED\s*=\s*0/) }
  end
end

control '2.3.1.6 Remote system status daemon RWHOD' do
  impact 0.6
  title '2.3.1.6 Remote system status daemon RWHOD'
  desc 'Remote system status daemon RWHOD'
  describe file('/etc/rc.config.d/netdaemons') do
    its('content') { should match(/RWHOD\s*=\s*0/) }
  end
end

control '2.3.1.7 Remote system status daemon DDFA' do
  impact 0.6
  title '2.3.1.7 Remote system status daemon DDFA'
  desc 'Remote system status daemon DDFA'
  describe file('/etc/rc.config.d/netdaemons') do
    its('content') { should match(/DDFA\s*=\s*0/) }
  end
end

control '2.3.1.8 Remote system status daemon START_RBOOTD' do
  impact 0.6
  title '2.3.1.8 Remote system status daemon START_RBOOTD'
  desc 'Remote system status daemon START_RBOOTD'
  describe file('/etc/rc.config.d/netdaemons') do
    its('content') { should match(/START_RBOOTD\s*=\s*0/) }
  end
end

control '2.3.1.9 Reverse daemon RARPD' do
  impact 0.6
  title '2.3.1.9 Reverse daemon RARPD'
  desc 'Reverse daemon RARPD'
  describe file('/etc/rc.config.d/netconf') do
    its('content') { should match(/RARPD\s*=\s*0/) }
  end
end

control '2.3.1.10 Router discover daemon RDPD' do
  impact 0.6
  title '2.3.1.10 Router discover daemon RDPD'
  desc 'Router discover daemon RDPD'
  describe file('/etc/rc.config.d/netconf') do
    its('content') { should match(/RDPD\s*=\s*0/) }
  end
end

control '2.3.1.11 pty daemon' do
  impact 0.6
  title '2.3.1.11 pty daemon'
  desc 'pty daemon'
  describe file('/etc/rc.config.d/ptydaemon') do
    its('content') { should match(/PTYDAEMON_START\s*=\s*0/) }
  end
end

control '2.3.1.12 vt daemon' do
  impact 0.6
  title '2.3.1.12 vt daemon'
  desc 'vt daemon'
  describe file('/etc/rc.config.d/vt') do
    its('content') { should match(/VTDAEMON_START\s*=\s*0/) }
  end
end

control '2.3.1.13 License server' do
  impact 0.6
  title '2.3.1.13 License server'
  desc 'License server'
  describe file('/etc/rc.config.d/i4lmd') do
    its('content') { should match(/I4LMD\s*=\s*0/) }
  end
end

control '2.3.1.14 Font server' do
  impact 0.6
  title '2.3.1.14 Font server'
  desc 'Font server'
  describe file('/etc/rc.config.d/xfs') do
    its('content') { should match(/RUN_X_FONT_SERVER\s*=\s*0/) }
  end
end

control '2.3.1.15 Audio server' do
  impact 0.6
  title '2.3.1.15 Audio server'
  desc 'Audio server'
  describe file('/etc/rc.config.d/audio') do
    its('content') { should match(/AUDIO_SERVER\s*=\s*0/) }
  end
end

control '2.3.1.16 Single logical screen daemon' do
  impact 0.6
  title '2.3.1.16 Single logical screen daemon'
  desc 'Single logical screen daemon'
  describe file('/etc/rc.config.d/slsd') do
    its('content') { should match(/SLSD_DAEMON\s*=\s*0/) }
  end
end

control '2.3.1.17 Samba server' do
  impact 0.6
  title '2.3.1.17 Samba server'
  desc 'Samba server'
  describe file('/etc/rc.config.d/samba') do
    its('content') { should match(/RUN_SAMBA\s*=\s*0/) }
  end
end

control '2.3.1.18 NFS server' do
  impact 0.6
  title '2.3.1.18 NFS server'
  desc 'NFS server'
  describe file('/etc/rc.config.d/nfsconf') do
    its('content') { should match(/NFS_SERVER\s*=\s*0/) }
  end
end

control '2.3.1.19 NFS client' do
  impact 0.6
  title '2.3.1.19 NFS client'
  desc 'NFS client'
  describe file('/etc/rc.config.d/nfsconf') do
    its('content') { should match(/NFS_CLIENT\s*=\s*0/) }
  end
end

control '2.3.1.20 Web server' do
  impact 0.6
  title '2.3.1.20 Web server'
  desc 'Web server'
  describe file('/etc/rc.config.d/hpws_apacheconf') do
    its('content') { should match(/HPWS_APACHE_START\s*=\s*0/) }
  end
end

control '2.3.1.21 Web server suite' do
  impact 0.6
  title '2.3.1.21 Web server suite'
  desc 'Web server suite'
  describe file('/etc/rc.config.d/ns-ftrack') do
    its('content') { should match(/NS_FTRACK\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/apacheconf') do
    its('content') { should match(/APACHE_START\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/hpws_apache32conf') do
    its('content') { should match(/HPWS_APACHE32_START\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/hpws_tomcatconf') do
    its('content') { should match(/HPWS_TOMCAT_START\s*=\s*0/) }
  end
  describe file('/etc/rc.config.d/hpws_webminconf') do
    its('content') { should match(/HPWS_WEBMIN_START\s*=\s*0/) }
  end
end

control '2.3.1.22 BIND DNS' do
  impact 0.6
  title '2.3.1.22 BIND DNS'
  desc 'BIND DNS'
  describe file('/etc/rc.config.d/namesvrs') do
    its('content') { should match(/NAMED\s*=\s*0/) }
  end
end

