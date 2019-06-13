# encoding: utf-8
# copyright: 2018, The Authors

control '2.2.1.1 Disable nis/nis+ boot services' do
  impact 0.6
  title '2.2.1.1 Disable nis/nis+ boot services'
  desc 'Disable nis/nis+ boot services'
  describe file('/etc/rc.config.d/namesvrs') do
    its('content') { should match(/#\s*NIS_MASTER_SERVER\s+?=\s+?0/) }
    its('content') { should match(/#\s*NIS_SLAVE_SERVER\s+?=\s+?0/) }
    its('content') { should match(/#\s*NISPLUS_SERVER\s+?=\s+?0/) }
    its('content') { should match(/#\s*NISPLUS_CLIENT\s+?=\s+?0/) }
  end
end

control '2.2.1.2 Disable printer daemons' do
  impact 0.6
  title '2.2.1.2 Disable printer daemons'
  desc 'Disable printer daemons'
  describe file('/etc/rc.config.d/tps') do
    its('content') { should match(/XPRINTSERVERS\s*=\s*"\s*"/) }
  end
  describe file('/etc/rc.config.d/lp') do
    its('content') { should match(/LP\s*=\s*0/) }
  end
end

control '2.2.1.3 Disable SNMP' do
  impact 0.6
  title '2.2.1.3 Disable SNMP'
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


control '2.2.1.4 Multicast daemon' do
  impact 0.6
  title '2.2.1.4 Multicast daemon'
  desc 'Multicast daemon'
  describe file('/etc/rc.config.d/netdaemons') do
    its('content') { should match(/MROUTED\s*=\s*0/) }
  end
end

control '2.2.1.5 Remote system status daemon' do
  impact 0.6
  title '2.2.1.5 Remote system status daemon'
  desc 'Multicast daemon'
  describe file('/etc/rc.config.d/netdaemons') do
    its('content') { should match(/MROUTED\s*=\s*0/) }
  end
end

