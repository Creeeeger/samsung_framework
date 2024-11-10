package com.android.internal.net;

import android.net.MBBStatsParcel;
import android.net.TetherStatsParcel;
import android.net.TrafficTimeStatsParcel;
import android.net.UidRangeParcel;
import android.net.UidStatsParcel;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.internal.net.IDomainFilterEventListener;
import com.android.internal.net.INetdTetherEventListener;
import com.android.internal.net.IOemNetdUnsolicitedEventListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public interface IOemNetd extends IInterface {
    public static final String DESCRIPTOR = "com$android$internal$net$IOemNetd".replace('$', '.');

    /* loaded from: classes.dex */
    public class Default implements IOemNetd {
        @Override // com.android.internal.net.IOemNetd
        public int addApeRule(boolean z, String str, int i) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int addIpToPrioList(List list, List list2, List list3, List list4, List list5) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int addMnxbRule(boolean z, String str, int i) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpChain(String str, String str2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpIpAcceptRule(String str, String str2, String str3) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpLinkIface(String str) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpSocksRule(String str, String str2, String str3, int i, String str4) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpSocksSkipRule(String str, String str2, String str3) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpSocksSkipRuleProto(String str, String str2, String str3, int i, String str4) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpSourcePortAcceptRule(String str, String str2, int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpSourceRoute(String str, String str2, String str3) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addMptcpUidSocksRule(String str, String str2, String str3, int i, int i2, String str4) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addPortFwdRules(String str, String str2, String str3, String str4, int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addUidToMptcpChain(String str, int i, String str2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void addUserToNwFilterRange(int i) {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public void cleanAllBlock() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void cleanBlockPorts() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void clearEbpfMap(int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void clearKnoxNwFilterProxyEntries() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void clearNetworkFilterEntries() {
        }

        @Override // com.android.internal.net.IOemNetd
        public int clearPriorityMap() {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int delIpToPrioList(List list, List list2, List list3, List list4, List list5) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void delMptcpIpAcceptRule(String str, String str2, String str3) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void delMptcpSourcePortAcceptRule(String str, String str2, int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void delMptcpSourceRoute(String str, String str2, String str3) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void disableMptcpMode() {
        }

        @Override // com.android.internal.net.IOemNetd
        public int disableTlsPacketTracing(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void enableIpOptionModification(boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void enableKnoxVpnFlagForTether(boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void enableMptcpModes(String str) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void enablePortInfoEntries(int i, int i2, boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public int enableTlsPacketTracing(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void exemptUidFromNwFilterRange(UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void firewallBuild() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void firewallSetRuleMobileData(int i, boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void firewallSetRuleWifi(int i, boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public int flushArpEntry(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public MBBStatsParcel[] getDataUsage(String str, List list) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public UidStatsParcel[] getMhsTrafficStats() {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public String getNetworkFilterTcpV4Entry(int i) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public String getNetworkFilterTcpV6Entry(int i) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public String getNetworkFilterUdpV6Entry(int i) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public int getNwFilterNetId() {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public long getTotalDataUsage(String str) {
            return 0L;
        }

        @Override // com.android.internal.net.IOemNetd
        public TrafficTimeStatsParcel getTrafficTimeStats() {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public UidStatsParcel[] getUidTrafficStats() {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public TetherStatsParcel[] getVideoStats(String str, int i, int i2) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public void gmsCoreSetUidUrlMobileDataRule(int i, String str, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void gmsCoreSetUidUrlWifiRule(int i, String str, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public int hotspotOff(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int hotspotOn(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void interfaceSetAutoConf(String str, boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public boolean isAlive() {
            return false;
        }

        @Override // com.android.internal.net.IOemNetd
        public int isIptablesMatchEnabled(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int isMBBPathsPresent() {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnBlockDnsQueriesForUid(int i, UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnBlockUserWideDnsQuery(boolean z, int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnDestroyBlockedKnoxNetwork() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnExemptDnsQueryForUid(int i, UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnExemptUidFromKnoxVpn(int i, UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnInsertUidForDnsAuthorization(int[] iArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnRemoveExemptUidFromKnoxVpn(int i, UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnRemoveExemptedDnsQueryForUid(int i, UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnRemoveUidFromDnsAuthorization() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void knoxVpnUnblockDnsQueriesForUid(int i, UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public long[] l4StatsGet() {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public void makeBlockChildChain() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void makeVideoCallChain() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void modifyEpdg(boolean z, String str, String str2, boolean z2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkAddLegacyRoute(int i, String str, String str2, String str3, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkAddUidRanges(int i, UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkGuardCreateChain() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkGuardDeleteChain() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkGuardDeleteWhiteListRule() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkGuardDisable() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkGuardEnable(boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkGuardSetProtocolAcceptRule(int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkGuardSetUidRangeAcceptRule(int i, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkGuardSetUidRule(int i, boolean z, boolean z2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkRemoveLegacyRoute(int i, String str, String str2, String str3, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void networkRemoveUidRanges(int i, UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public int pauseDevice(String str, boolean z, String str2, long j) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int prioDevice(boolean z, List list, List list2, List list3, List list4) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int prioDisable(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int prioEnable(String str, int i) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int prioUpdate(String str, int i) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int prioritizeApp(boolean z, int i) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int prioritizeMnxbApp(boolean z, int i) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void registerDomainFilterEventListener(IDomainFilterEventListener iDomainFilterEventListener) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void registerNetdTetherEventListener(INetdTetherEventListener iNetdTetherEventListener) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void registerOemUnsolicitedEventListener(IOemNetdUnsolicitedEventListener iOemNetdUnsolicitedEventListener) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeExemptUidFromNwFilterRange(UidRangeParcel[] uidRangeParcelArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeKnoxNwFilterProxyApp(int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeMptcpChain(String str, String str2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeMptcpLinkIface(String str) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeMptcpSocksRule(String str, String str2, String str3, int i, String str4) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeMptcpSocksSkipRule(String str, String str2, String str3) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeMptcpSocksSkipRuleProto(String str, String str2, String str3, int i, String str4) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeMptcpUidSocksRule(String str, String str2, String str3, int i, int i2, String str4) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeUidFromMptcpChain(String str, int i, String str2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void removeUserFromNwFilterRange(int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public int replaceApeRule(String str, int i, int i2) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int replaceMnxbRule(String str, int i, int i2) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public String runKnoxFirewallRulesCommand(int i, String str) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public String runKnoxRulesCommand(int i, String[] strArr) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public String runTcpMonitorShellCommand(String str, String str2) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public String runVpnRulesCommand(int i, String str, String str2) {
            return null;
        }

        @Override // com.android.internal.net.IOemNetd
        public void setAdvertiseWindowSize(int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setAllowHostAlone(String str) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setAllowListIPs(String str) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setBlockAllDNSPackets(boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setBlockAllPackets() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setBlockHostAlone(String str) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setBlockListIPs(String str) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setBlockPorts(String str, int i, String str2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setDnsCacheStatus(boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setEpdgInterfaceDropRule(String str, String str2, boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setHttpProxyPort(int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setKnoxGuardExemptRule(boolean z, String str, int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setKnoxNwFilterProxyApp(int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setKnoxVpn(int i, boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setMptcpDestBaseMarkRule(boolean z, String str, String str2, int i, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setMptcpPrivateIpRoute(boolean z, String str, int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setMptcpTcpBufferSize(String str, String str2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setMptcpUIDRoute(boolean z, String str, int i, String str2, String str3) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setMtuValueMptcp(String str, int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setNetworkInfo(int i, boolean z, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void setNwFilterNetId(int i) {
        }

        @Override // com.android.internal.net.IOemNetd
        public int setQboxUid(int i, boolean z) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void spegRestrictNetworkConnection(int i, boolean z) {
        }

        @Override // com.android.internal.net.IOemNetd
        public int startQbox(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int startTrafficStatsController(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void startVideoStats(String str, int i, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public int stopQbox() {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public int stopTrafficStatsController(String str) {
            return 0;
        }

        @Override // com.android.internal.net.IOemNetd
        public void stopVideoStats(String str, int i, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void tcSetTCRule(boolean z, String str, String str2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void unregisterDomainFilterEventListener() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void unregisterNetdTetherEventListener() {
        }

        @Override // com.android.internal.net.IOemNetd
        public void updateDomainFilterCache(int i, String[] strArr) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void updateInputFilterAppWideRules(int[] iArr, int i, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void updateInputFilterExemptRules(int i, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void updateInputFilterUserWideRules(int[] iArr, int i, int i2) {
        }

        @Override // com.android.internal.net.IOemNetd
        public void updateMptcpSourceRule(boolean z, String str, String str2) {
        }
    }

    int addApeRule(boolean z, String str, int i);

    int addIpToPrioList(List list, List list2, List list3, List list4, List list5);

    int addMnxbRule(boolean z, String str, int i);

    void addMptcpChain(String str, String str2);

    void addMptcpIpAcceptRule(String str, String str2, String str3);

    void addMptcpLinkIface(String str);

    void addMptcpSocksRule(String str, String str2, String str3, int i, String str4);

    void addMptcpSocksSkipRule(String str, String str2, String str3);

    void addMptcpSocksSkipRuleProto(String str, String str2, String str3, int i, String str4);

    void addMptcpSourcePortAcceptRule(String str, String str2, int i);

    void addMptcpSourceRoute(String str, String str2, String str3);

    void addMptcpUidSocksRule(String str, String str2, String str3, int i, int i2, String str4);

    void addPortFwdRules(String str, String str2, String str3, String str4, int i);

    void addUidToMptcpChain(String str, int i, String str2);

    void addUserToNwFilterRange(int i);

    void cleanAllBlock();

    void cleanBlockPorts();

    void clearEbpfMap(int i);

    void clearKnoxNwFilterProxyEntries();

    void clearNetworkFilterEntries();

    int clearPriorityMap();

    int delIpToPrioList(List list, List list2, List list3, List list4, List list5);

    void delMptcpIpAcceptRule(String str, String str2, String str3);

    void delMptcpSourcePortAcceptRule(String str, String str2, int i);

    void delMptcpSourceRoute(String str, String str2, String str3);

    void disableMptcpMode();

    int disableTlsPacketTracing(String str);

    void enableIpOptionModification(boolean z);

    void enableKnoxVpnFlagForTether(boolean z);

    void enableMptcpModes(String str);

    void enablePortInfoEntries(int i, int i2, boolean z);

    int enableTlsPacketTracing(String str);

    void exemptUidFromNwFilterRange(UidRangeParcel[] uidRangeParcelArr);

    void firewallBuild();

    void firewallSetRuleMobileData(int i, boolean z);

    void firewallSetRuleWifi(int i, boolean z);

    int flushArpEntry(String str);

    MBBStatsParcel[] getDataUsage(String str, List list);

    UidStatsParcel[] getMhsTrafficStats();

    String getNetworkFilterTcpV4Entry(int i);

    String getNetworkFilterTcpV6Entry(int i);

    String getNetworkFilterUdpV6Entry(int i);

    int getNwFilterNetId();

    long getTotalDataUsage(String str);

    TrafficTimeStatsParcel getTrafficTimeStats();

    UidStatsParcel[] getUidTrafficStats();

    TetherStatsParcel[] getVideoStats(String str, int i, int i2);

    void gmsCoreSetUidUrlMobileDataRule(int i, String str, int i2);

    void gmsCoreSetUidUrlWifiRule(int i, String str, int i2);

    int hotspotOff(String str);

    int hotspotOn(String str);

    void interfaceSetAutoConf(String str, boolean z);

    boolean isAlive();

    int isIptablesMatchEnabled(String str);

    int isMBBPathsPresent();

    void knoxVpnBlockDnsQueriesForUid(int i, UidRangeParcel[] uidRangeParcelArr);

    void knoxVpnBlockUserWideDnsQuery(boolean z, int i);

    void knoxVpnDestroyBlockedKnoxNetwork();

    void knoxVpnExemptDnsQueryForUid(int i, UidRangeParcel[] uidRangeParcelArr);

    void knoxVpnExemptUidFromKnoxVpn(int i, UidRangeParcel[] uidRangeParcelArr);

    void knoxVpnInsertUidForDnsAuthorization(int[] iArr);

    void knoxVpnRemoveExemptUidFromKnoxVpn(int i, UidRangeParcel[] uidRangeParcelArr);

    void knoxVpnRemoveExemptedDnsQueryForUid(int i, UidRangeParcel[] uidRangeParcelArr);

    void knoxVpnRemoveUidFromDnsAuthorization();

    void knoxVpnUnblockDnsQueriesForUid(int i, UidRangeParcel[] uidRangeParcelArr);

    long[] l4StatsGet();

    void makeBlockChildChain();

    void makeVideoCallChain();

    void modifyEpdg(boolean z, String str, String str2, boolean z2);

    void networkAddLegacyRoute(int i, String str, String str2, String str3, int i2);

    void networkAddUidRanges(int i, UidRangeParcel[] uidRangeParcelArr);

    void networkGuardCreateChain();

    void networkGuardDeleteChain();

    void networkGuardDeleteWhiteListRule();

    void networkGuardDisable();

    void networkGuardEnable(boolean z);

    void networkGuardSetProtocolAcceptRule(int i);

    void networkGuardSetUidRangeAcceptRule(int i, int i2);

    void networkGuardSetUidRule(int i, boolean z, boolean z2);

    void networkRemoveLegacyRoute(int i, String str, String str2, String str3, int i2);

    void networkRemoveUidRanges(int i, UidRangeParcel[] uidRangeParcelArr);

    int pauseDevice(String str, boolean z, String str2, long j);

    int prioDevice(boolean z, List list, List list2, List list3, List list4);

    int prioDisable(String str);

    int prioEnable(String str, int i);

    int prioUpdate(String str, int i);

    int prioritizeApp(boolean z, int i);

    int prioritizeMnxbApp(boolean z, int i);

    void registerDomainFilterEventListener(IDomainFilterEventListener iDomainFilterEventListener);

    void registerNetdTetherEventListener(INetdTetherEventListener iNetdTetherEventListener);

    void registerOemUnsolicitedEventListener(IOemNetdUnsolicitedEventListener iOemNetdUnsolicitedEventListener);

    void removeExemptUidFromNwFilterRange(UidRangeParcel[] uidRangeParcelArr);

    void removeKnoxNwFilterProxyApp(int i);

    void removeMptcpChain(String str, String str2);

    void removeMptcpLinkIface(String str);

    void removeMptcpSocksRule(String str, String str2, String str3, int i, String str4);

    void removeMptcpSocksSkipRule(String str, String str2, String str3);

    void removeMptcpSocksSkipRuleProto(String str, String str2, String str3, int i, String str4);

    void removeMptcpUidSocksRule(String str, String str2, String str3, int i, int i2, String str4);

    void removeUidFromMptcpChain(String str, int i, String str2);

    void removeUserFromNwFilterRange(int i);

    int replaceApeRule(String str, int i, int i2);

    int replaceMnxbRule(String str, int i, int i2);

    String runKnoxFirewallRulesCommand(int i, String str);

    String runKnoxRulesCommand(int i, String[] strArr);

    String runTcpMonitorShellCommand(String str, String str2);

    String runVpnRulesCommand(int i, String str, String str2);

    void setAdvertiseWindowSize(int i);

    void setAllowHostAlone(String str);

    void setAllowListIPs(String str);

    void setBlockAllDNSPackets(boolean z);

    void setBlockAllPackets();

    void setBlockHostAlone(String str);

    void setBlockListIPs(String str);

    void setBlockPorts(String str, int i, String str2);

    void setDnsCacheStatus(boolean z);

    void setEpdgInterfaceDropRule(String str, String str2, boolean z);

    void setHttpProxyPort(int i);

    void setKnoxGuardExemptRule(boolean z, String str, int i);

    void setKnoxNwFilterProxyApp(int i);

    void setKnoxVpn(int i, boolean z);

    void setMptcpDestBaseMarkRule(boolean z, String str, String str2, int i, int i2);

    void setMptcpPrivateIpRoute(boolean z, String str, int i);

    void setMptcpTcpBufferSize(String str, String str2);

    void setMptcpUIDRoute(boolean z, String str, int i, String str2, String str3);

    void setMtuValueMptcp(String str, int i);

    void setNetworkInfo(int i, boolean z, int i2);

    void setNwFilterNetId(int i);

    int setQboxUid(int i, boolean z);

    void spegRestrictNetworkConnection(int i, boolean z);

    int startQbox(String str);

    int startTrafficStatsController(String str);

    void startVideoStats(String str, int i, int i2);

    int stopQbox();

    int stopTrafficStatsController(String str);

    void stopVideoStats(String str, int i, int i2);

    void tcSetTCRule(boolean z, String str, String str2);

    void unregisterDomainFilterEventListener();

    void unregisterNetdTetherEventListener();

    void updateDomainFilterCache(int i, String[] strArr);

    void updateInputFilterAppWideRules(int[] iArr, int i, int i2);

    void updateInputFilterExemptRules(int i, int i2);

    void updateInputFilterUserWideRules(int[] iArr, int i, int i2);

    void updateMptcpSourceRule(boolean z, String str, String str2);

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IOemNetd {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IOemNetd.DESCRIPTOR);
        }

        public static IOemNetd asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IOemNetd.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOemNetd)) {
                return (IOemNetd) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IOemNetd.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i) {
                case 1:
                    boolean isAlive = isAlive();
                    parcel2.writeNoException();
                    parcel2.writeBoolean(isAlive);
                    return true;
                case 2:
                    IOemNetdUnsolicitedEventListener asInterface = IOemNetdUnsolicitedEventListener.Stub.asInterface(parcel.readStrongBinder());
                    parcel.enforceNoDataAvail();
                    registerOemUnsolicitedEventListener(asInterface);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    IDomainFilterEventListener asInterface2 = IDomainFilterEventListener.Stub.asInterface(parcel.readStrongBinder());
                    parcel.enforceNoDataAvail();
                    registerDomainFilterEventListener(asInterface2);
                    return true;
                case 4:
                    unregisterDomainFilterEventListener();
                    return true;
                case 5:
                    int readInt = parcel.readInt();
                    String[] createStringArray = parcel.createStringArray();
                    parcel.enforceNoDataAvail();
                    updateDomainFilterCache(readInt, createStringArray);
                    return true;
                case 6:
                    int readInt2 = parcel.readInt();
                    String[] createStringArray2 = parcel.createStringArray();
                    parcel.enforceNoDataAvail();
                    String runKnoxRulesCommand = runKnoxRulesCommand(readInt2, createStringArray2);
                    parcel2.writeNoException();
                    parcel2.writeString(runKnoxRulesCommand);
                    return true;
                case 7:
                    int readInt3 = parcel.readInt();
                    UidRangeParcel[] uidRangeParcelArr = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    knoxVpnBlockDnsQueriesForUid(readInt3, uidRangeParcelArr);
                    return true;
                case 8:
                    int readInt4 = parcel.readInt();
                    UidRangeParcel[] uidRangeParcelArr2 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    knoxVpnUnblockDnsQueriesForUid(readInt4, uidRangeParcelArr2);
                    return true;
                case 9:
                    int readInt5 = parcel.readInt();
                    UidRangeParcel[] uidRangeParcelArr3 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    knoxVpnExemptDnsQueryForUid(readInt5, uidRangeParcelArr3);
                    return true;
                case 10:
                    int readInt6 = parcel.readInt();
                    UidRangeParcel[] uidRangeParcelArr4 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    knoxVpnRemoveExemptedDnsQueryForUid(readInt6, uidRangeParcelArr4);
                    return true;
                case 11:
                    knoxVpnDestroyBlockedKnoxNetwork();
                    return true;
                case 12:
                    int readInt7 = parcel.readInt();
                    UidRangeParcel[] uidRangeParcelArr5 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    knoxVpnExemptUidFromKnoxVpn(readInt7, uidRangeParcelArr5);
                    return true;
                case 13:
                    int readInt8 = parcel.readInt();
                    UidRangeParcel[] uidRangeParcelArr6 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    knoxVpnRemoveExemptUidFromKnoxVpn(readInt8, uidRangeParcelArr6);
                    return true;
                case 14:
                    knoxVpnRemoveUidFromDnsAuthorization();
                    return true;
                case 15:
                    int[] createIntArray = parcel.createIntArray();
                    parcel.enforceNoDataAvail();
                    knoxVpnInsertUidForDnsAuthorization(createIntArray);
                    return true;
                case 16:
                    int readInt9 = parcel.readInt();
                    boolean readBoolean = parcel.readBoolean();
                    int readInt10 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setNetworkInfo(readInt9, readBoolean, readInt10);
                    return true;
                case 17:
                    int readInt11 = parcel.readInt();
                    int readInt12 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    updateInputFilterExemptRules(readInt11, readInt12);
                    return true;
                case 18:
                    int[] createIntArray2 = parcel.createIntArray();
                    int readInt13 = parcel.readInt();
                    int readInt14 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    updateInputFilterUserWideRules(createIntArray2, readInt13, readInt14);
                    return true;
                case 19:
                    int[] createIntArray3 = parcel.createIntArray();
                    int readInt15 = parcel.readInt();
                    int readInt16 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    updateInputFilterAppWideRules(createIntArray3, readInt15, readInt16);
                    return true;
                case 20:
                    int readInt17 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    clearEbpfMap(readInt17);
                    return true;
                case 21:
                    int readInt18 = parcel.readInt();
                    String readString = parcel.readString();
                    parcel.enforceNoDataAvail();
                    String runKnoxFirewallRulesCommand = runKnoxFirewallRulesCommand(readInt18, readString);
                    parcel2.writeNoException();
                    parcel2.writeString(runKnoxFirewallRulesCommand);
                    return true;
                case 22:
                    boolean readBoolean2 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    enableKnoxVpnFlagForTether(readBoolean2);
                    return true;
                case 23:
                    INetdTetherEventListener asInterface3 = INetdTetherEventListener.Stub.asInterface(parcel.readStrongBinder());
                    parcel.enforceNoDataAvail();
                    registerNetdTetherEventListener(asInterface3);
                    return true;
                case 24:
                    unregisterNetdTetherEventListener();
                    return true;
                case 25:
                    int readInt19 = parcel.readInt();
                    boolean readBoolean3 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    setKnoxVpn(readInt19, readBoolean3);
                    return true;
                case 26:
                    int readInt20 = parcel.readInt();
                    UidRangeParcel[] uidRangeParcelArr7 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    networkAddUidRanges(readInt20, uidRangeParcelArr7);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    int readInt21 = parcel.readInt();
                    UidRangeParcel[] uidRangeParcelArr8 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    networkRemoveUidRanges(readInt21, uidRangeParcelArr8);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    boolean readBoolean4 = parcel.readBoolean();
                    int readInt22 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    knoxVpnBlockUserWideDnsQuery(readBoolean4, readInt22);
                    return true;
                case 29:
                    boolean readBoolean5 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    enableIpOptionModification(readBoolean5);
                    return true;
                case 30:
                    int readInt23 = parcel.readInt();
                    int readInt24 = parcel.readInt();
                    boolean readBoolean6 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    enablePortInfoEntries(readInt23, readInt24, readBoolean6);
                    return true;
                case 31:
                    int readInt25 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    String networkFilterTcpV4Entry = getNetworkFilterTcpV4Entry(readInt25);
                    parcel2.writeNoException();
                    parcel2.writeString(networkFilterTcpV4Entry);
                    return true;
                case 32:
                    int readInt26 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    String networkFilterTcpV6Entry = getNetworkFilterTcpV6Entry(readInt26);
                    parcel2.writeNoException();
                    parcel2.writeString(networkFilterTcpV6Entry);
                    return true;
                case 33:
                    int readInt27 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    String networkFilterUdpV6Entry = getNetworkFilterUdpV6Entry(readInt27);
                    parcel2.writeNoException();
                    parcel2.writeString(networkFilterUdpV6Entry);
                    return true;
                case 34:
                    clearNetworkFilterEntries();
                    parcel2.writeNoException();
                    return true;
                case 35:
                    int readInt28 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setNwFilterNetId(readInt28);
                    return true;
                case 36:
                    int nwFilterNetId = getNwFilterNetId();
                    parcel2.writeNoException();
                    parcel2.writeInt(nwFilterNetId);
                    return true;
                case 37:
                    int readInt29 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    addUserToNwFilterRange(readInt29);
                    return true;
                case 38:
                    int readInt30 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    removeUserFromNwFilterRange(readInt30);
                    return true;
                case 39:
                    UidRangeParcel[] uidRangeParcelArr9 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    exemptUidFromNwFilterRange(uidRangeParcelArr9);
                    return true;
                case 40:
                    UidRangeParcel[] uidRangeParcelArr10 = (UidRangeParcel[]) parcel.createTypedArray(UidRangeParcel.CREATOR);
                    parcel.enforceNoDataAvail();
                    removeExemptUidFromNwFilterRange(uidRangeParcelArr10);
                    return true;
                case 41:
                    int readInt31 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setKnoxNwFilterProxyApp(readInt31);
                    return true;
                case 42:
                    int readInt32 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    removeKnoxNwFilterProxyApp(readInt32);
                    return true;
                case 43:
                    clearKnoxNwFilterProxyEntries();
                    return true;
                case 44:
                    boolean readBoolean7 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    setDnsCacheStatus(readBoolean7);
                    return true;
                case 45:
                    int readInt33 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setHttpProxyPort(readInt33);
                    return true;
                case 46:
                    String readString2 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int isIptablesMatchEnabled = isIptablesMatchEnabled(readString2);
                    parcel2.writeNoException();
                    parcel2.writeInt(isIptablesMatchEnabled);
                    return true;
                case 47:
                    String readString3 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int enableTlsPacketTracing = enableTlsPacketTracing(readString3);
                    parcel2.writeNoException();
                    parcel2.writeInt(enableTlsPacketTracing);
                    return true;
                case 48:
                    String readString4 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int disableTlsPacketTracing = disableTlsPacketTracing(readString4);
                    parcel2.writeNoException();
                    parcel2.writeInt(disableTlsPacketTracing);
                    return true;
                case 49:
                    makeVideoCallChain();
                    return true;
                case 50:
                    String readString5 = parcel.readString();
                    int readInt34 = parcel.readInt();
                    int readInt35 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    startVideoStats(readString5, readInt34, readInt35);
                    return true;
                case 51:
                    String readString6 = parcel.readString();
                    int readInt36 = parcel.readInt();
                    int readInt37 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    stopVideoStats(readString6, readInt36, readInt37);
                    return true;
                case 52:
                    String readString7 = parcel.readString();
                    int readInt38 = parcel.readInt();
                    int readInt39 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    TetherStatsParcel[] videoStats = getVideoStats(readString7, readInt38, readInt39);
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(videoStats, 1);
                    return true;
                case 53:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    int readInt40 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    addPortFwdRules(readString8, readString9, readString10, readString11, readInt40);
                    return true;
                case 54:
                    int readInt41 = parcel.readInt();
                    String readString12 = parcel.readString();
                    String readString13 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    String runVpnRulesCommand = runVpnRulesCommand(readInt41, readString12, readString13);
                    parcel2.writeNoException();
                    parcel2.writeString(runVpnRulesCommand);
                    return true;
                case 55:
                    firewallBuild();
                    return true;
                case 56:
                    int readInt42 = parcel.readInt();
                    boolean readBoolean8 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    firewallSetRuleWifi(readInt42, readBoolean8);
                    return true;
                case 57:
                    int readInt43 = parcel.readInt();
                    boolean readBoolean9 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    firewallSetRuleMobileData(readInt43, readBoolean9);
                    return true;
                case 58:
                    int readInt44 = parcel.readInt();
                    String readString14 = parcel.readString();
                    int readInt45 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    gmsCoreSetUidUrlMobileDataRule(readInt44, readString14, readInt45);
                    return true;
                case 59:
                    int readInt46 = parcel.readInt();
                    String readString15 = parcel.readString();
                    int readInt47 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    gmsCoreSetUidUrlWifiRule(readInt46, readString15, readInt47);
                    return true;
                case 60:
                    boolean readBoolean10 = parcel.readBoolean();
                    int readInt48 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int prioritizeApp = prioritizeApp(readBoolean10, readInt48);
                    parcel2.writeNoException();
                    parcel2.writeInt(prioritizeApp);
                    return true;
                case 61:
                    boolean readBoolean11 = parcel.readBoolean();
                    String readString16 = parcel.readString();
                    int readInt49 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int addApeRule = addApeRule(readBoolean11, readString16, readInt49);
                    parcel2.writeNoException();
                    parcel2.writeInt(addApeRule);
                    return true;
                case 62:
                    String readString17 = parcel.readString();
                    int readInt50 = parcel.readInt();
                    int readInt51 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int replaceApeRule = replaceApeRule(readString17, readInt50, readInt51);
                    parcel2.writeNoException();
                    parcel2.writeInt(replaceApeRule);
                    return true;
                case 63:
                    boolean readBoolean12 = parcel.readBoolean();
                    String readString18 = parcel.readString();
                    String readString19 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    tcSetTCRule(readBoolean12, readString18, readString19);
                    parcel2.writeNoException();
                    return true;
                case 64:
                    String readString20 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int startQbox = startQbox(readString20);
                    parcel2.writeNoException();
                    parcel2.writeInt(startQbox);
                    return true;
                case 65:
                    int stopQbox = stopQbox();
                    parcel2.writeNoException();
                    parcel2.writeInt(stopQbox);
                    return true;
                case 66:
                    int readInt52 = parcel.readInt();
                    boolean readBoolean13 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    int qboxUid = setQboxUid(readInt52, readBoolean13);
                    parcel2.writeNoException();
                    parcel2.writeInt(qboxUid);
                    return true;
                case 67:
                    boolean readBoolean14 = parcel.readBoolean();
                    String readString21 = parcel.readString();
                    String readString22 = parcel.readString();
                    boolean readBoolean15 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    modifyEpdg(readBoolean14, readString21, readString22, readBoolean15);
                    return true;
                case 68:
                    String readString23 = parcel.readString();
                    String readString24 = parcel.readString();
                    boolean readBoolean16 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    setEpdgInterfaceDropRule(readString23, readString24, readBoolean16);
                    return true;
                case 69:
                    makeBlockChildChain();
                    return true;
                case 70:
                    boolean readBoolean17 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    setBlockAllDNSPackets(readBoolean17);
                    return true;
                case 71:
                    String readString25 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    setBlockListIPs(readString25);
                    return true;
                case 72:
                    String readString26 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    setAllowListIPs(readString26);
                    return true;
                case 73:
                    String readString27 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    setBlockHostAlone(readString27);
                    return true;
                case 74:
                    String readString28 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    setAllowHostAlone(readString28);
                    return true;
                case 75:
                    cleanAllBlock();
                    return true;
                case 76:
                    setBlockAllPackets();
                    return true;
                case 77:
                    String readString29 = parcel.readString();
                    int readInt53 = parcel.readInt();
                    String readString30 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    setBlockPorts(readString29, readInt53, readString30);
                    return true;
                case 78:
                    cleanBlockPorts();
                    return true;
                case 79:
                    String readString31 = parcel.readString();
                    ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                    parcel.enforceNoDataAvail();
                    MBBStatsParcel[] dataUsage = getDataUsage(readString31, createStringArrayList);
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(dataUsage, 1);
                    return true;
                case 80:
                    String readString32 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    long totalDataUsage = getTotalDataUsage(readString32);
                    parcel2.writeNoException();
                    parcel2.writeLong(totalDataUsage);
                    return true;
                case 81:
                    String readString33 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int hotspotOn = hotspotOn(readString33);
                    parcel2.writeNoException();
                    parcel2.writeInt(hotspotOn);
                    return true;
                case 82:
                    String readString34 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int hotspotOff = hotspotOff(readString34);
                    parcel2.writeNoException();
                    parcel2.writeInt(hotspotOff);
                    return true;
                case 83:
                    String readString35 = parcel.readString();
                    boolean readBoolean18 = parcel.readBoolean();
                    String readString36 = parcel.readString();
                    long readLong = parcel.readLong();
                    parcel.enforceNoDataAvail();
                    int pauseDevice = pauseDevice(readString35, readBoolean18, readString36, readLong);
                    parcel2.writeNoException();
                    parcel2.writeInt(pauseDevice);
                    return true;
                case 84:
                    String readString37 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int flushArpEntry = flushArpEntry(readString37);
                    parcel2.writeNoException();
                    parcel2.writeInt(flushArpEntry);
                    return true;
                case 85:
                    int isMBBPathsPresent = isMBBPathsPresent();
                    parcel2.writeNoException();
                    parcel2.writeInt(isMBBPathsPresent);
                    return true;
                case 86:
                    String readString38 = parcel.readString();
                    int readInt54 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int prioEnable = prioEnable(readString38, readInt54);
                    parcel2.writeNoException();
                    parcel2.writeInt(prioEnable);
                    return true;
                case 87:
                    String readString39 = parcel.readString();
                    int readInt55 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int prioUpdate = prioUpdate(readString39, readInt55);
                    parcel2.writeNoException();
                    parcel2.writeInt(prioUpdate);
                    return true;
                case 88:
                    String readString40 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int prioDisable = prioDisable(readString40);
                    parcel2.writeNoException();
                    parcel2.writeInt(prioDisable);
                    return true;
                case 89:
                    int clearPriorityMap = clearPriorityMap();
                    parcel2.writeNoException();
                    parcel2.writeInt(clearPriorityMap);
                    return true;
                case 90:
                    boolean readBoolean19 = parcel.readBoolean();
                    ArrayList<String> createStringArrayList2 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList3 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList4 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList5 = parcel.createStringArrayList();
                    parcel.enforceNoDataAvail();
                    int prioDevice = prioDevice(readBoolean19, createStringArrayList2, createStringArrayList3, createStringArrayList4, createStringArrayList5);
                    parcel2.writeNoException();
                    parcel2.writeInt(prioDevice);
                    return true;
                case 91:
                    ArrayList<String> createStringArrayList6 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList7 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList8 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList9 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList10 = parcel.createStringArrayList();
                    parcel.enforceNoDataAvail();
                    int addIpToPrioList = addIpToPrioList(createStringArrayList6, createStringArrayList7, createStringArrayList8, createStringArrayList9, createStringArrayList10);
                    parcel2.writeNoException();
                    parcel2.writeInt(addIpToPrioList);
                    return true;
                case 92:
                    ArrayList<String> createStringArrayList11 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList12 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList13 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList14 = parcel.createStringArrayList();
                    ArrayList<String> createStringArrayList15 = parcel.createStringArrayList();
                    parcel.enforceNoDataAvail();
                    int delIpToPrioList = delIpToPrioList(createStringArrayList11, createStringArrayList12, createStringArrayList13, createStringArrayList14, createStringArrayList15);
                    parcel2.writeNoException();
                    parcel2.writeInt(delIpToPrioList);
                    return true;
                case 93:
                    String readString41 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int startTrafficStatsController = startTrafficStatsController(readString41);
                    parcel2.writeNoException();
                    parcel2.writeInt(startTrafficStatsController);
                    return true;
                case 94:
                    String readString42 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    int stopTrafficStatsController = stopTrafficStatsController(readString42);
                    parcel2.writeNoException();
                    parcel2.writeInt(stopTrafficStatsController);
                    return true;
                case 95:
                    UidStatsParcel[] uidTrafficStats = getUidTrafficStats();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(uidTrafficStats, 1);
                    return true;
                case 96:
                    UidStatsParcel[] mhsTrafficStats = getMhsTrafficStats();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(mhsTrafficStats, 1);
                    return true;
                case 97:
                    TrafficTimeStatsParcel trafficTimeStats = getTrafficTimeStats();
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(trafficTimeStats, 1);
                    return true;
                case 98:
                    int readInt56 = parcel.readInt();
                    boolean readBoolean20 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    spegRestrictNetworkConnection(readInt56, readBoolean20);
                    return true;
                case 99:
                    boolean readBoolean21 = parcel.readBoolean();
                    String readString43 = parcel.readString();
                    int readInt57 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setKnoxGuardExemptRule(readBoolean21, readString43, readInt57);
                    return true;
                case 100:
                    networkGuardCreateChain();
                    return true;
                case 101:
                    networkGuardDeleteChain();
                    return true;
                case 102:
                    boolean readBoolean22 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    networkGuardEnable(readBoolean22);
                    return true;
                case 103:
                    networkGuardDisable();
                    return true;
                case 104:
                    networkGuardDeleteWhiteListRule();
                    return true;
                case 105:
                    int readInt58 = parcel.readInt();
                    int readInt59 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    networkGuardSetUidRangeAcceptRule(readInt58, readInt59);
                    return true;
                case 106:
                    int readInt60 = parcel.readInt();
                    boolean readBoolean23 = parcel.readBoolean();
                    boolean readBoolean24 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    networkGuardSetUidRule(readInt60, readBoolean23, readBoolean24);
                    return true;
                case 107:
                    int readInt61 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    networkGuardSetProtocolAcceptRule(readInt61);
                    return true;
                case 108:
                    String readString44 = parcel.readString();
                    String readString45 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    String runTcpMonitorShellCommand = runTcpMonitorShellCommand(readString44, readString45);
                    parcel2.writeNoException();
                    parcel2.writeString(runTcpMonitorShellCommand);
                    return true;
                case 109:
                    String readString46 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    enableMptcpModes(readString46);
                    parcel2.writeNoException();
                    return true;
                case 110:
                    disableMptcpMode();
                    parcel2.writeNoException();
                    return true;
                case 111:
                    String readString47 = parcel.readString();
                    String readString48 = parcel.readString();
                    String readString49 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addMptcpSocksSkipRule(readString47, readString48, readString49);
                    parcel2.writeNoException();
                    return true;
                case 112:
                    String readString50 = parcel.readString();
                    String readString51 = parcel.readString();
                    String readString52 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    removeMptcpSocksSkipRule(readString50, readString51, readString52);
                    parcel2.writeNoException();
                    return true;
                case 113:
                    String readString53 = parcel.readString();
                    String readString54 = parcel.readString();
                    String readString55 = parcel.readString();
                    int readInt62 = parcel.readInt();
                    String readString56 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addMptcpSocksRule(readString53, readString54, readString55, readInt62, readString56);
                    parcel2.writeNoException();
                    return true;
                case 114:
                    String readString57 = parcel.readString();
                    String readString58 = parcel.readString();
                    String readString59 = parcel.readString();
                    int readInt63 = parcel.readInt();
                    String readString60 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    removeMptcpSocksRule(readString57, readString58, readString59, readInt63, readString60);
                    parcel2.writeNoException();
                    return true;
                case 115:
                    String readString61 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addMptcpLinkIface(readString61);
                    parcel2.writeNoException();
                    return true;
                case 116:
                    String readString62 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    removeMptcpLinkIface(readString62);
                    parcel2.writeNoException();
                    return true;
                case 117:
                    String readString63 = parcel.readString();
                    String readString64 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addMptcpChain(readString63, readString64);
                    parcel2.writeNoException();
                    return true;
                case 118:
                    String readString65 = parcel.readString();
                    String readString66 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    removeMptcpChain(readString65, readString66);
                    parcel2.writeNoException();
                    return true;
                case 119:
                    String readString67 = parcel.readString();
                    String readString68 = parcel.readString();
                    String readString69 = parcel.readString();
                    int readInt64 = parcel.readInt();
                    int readInt65 = parcel.readInt();
                    String readString70 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addMptcpUidSocksRule(readString67, readString68, readString69, readInt64, readInt65, readString70);
                    parcel2.writeNoException();
                    return true;
                case 120:
                    String readString71 = parcel.readString();
                    String readString72 = parcel.readString();
                    String readString73 = parcel.readString();
                    int readInt66 = parcel.readInt();
                    int readInt67 = parcel.readInt();
                    String readString74 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    removeMptcpUidSocksRule(readString71, readString72, readString73, readInt66, readInt67, readString74);
                    parcel2.writeNoException();
                    return true;
                case 121:
                    String readString75 = parcel.readString();
                    int readInt68 = parcel.readInt();
                    String readString76 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addUidToMptcpChain(readString75, readInt68, readString76);
                    parcel2.writeNoException();
                    return true;
                case 122:
                    String readString77 = parcel.readString();
                    int readInt69 = parcel.readInt();
                    String readString78 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    removeUidFromMptcpChain(readString77, readInt69, readString78);
                    parcel2.writeNoException();
                    return true;
                case 123:
                    String readString79 = parcel.readString();
                    String readString80 = parcel.readString();
                    String readString81 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addMptcpIpAcceptRule(readString79, readString80, readString81);
                    parcel2.writeNoException();
                    return true;
                case 124:
                    String readString82 = parcel.readString();
                    String readString83 = parcel.readString();
                    String readString84 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    delMptcpIpAcceptRule(readString82, readString83, readString84);
                    parcel2.writeNoException();
                    return true;
                case 125:
                    String readString85 = parcel.readString();
                    String readString86 = parcel.readString();
                    String readString87 = parcel.readString();
                    int readInt70 = parcel.readInt();
                    String readString88 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addMptcpSocksSkipRuleProto(readString85, readString86, readString87, readInt70, readString88);
                    parcel2.writeNoException();
                    return true;
                case 126:
                    String readString89 = parcel.readString();
                    String readString90 = parcel.readString();
                    String readString91 = parcel.readString();
                    int readInt71 = parcel.readInt();
                    String readString92 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    removeMptcpSocksSkipRuleProto(readString89, readString90, readString91, readInt71, readString92);
                    parcel2.writeNoException();
                    return true;
                case 127:
                    String readString93 = parcel.readString();
                    String readString94 = parcel.readString();
                    int readInt72 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    addMptcpSourcePortAcceptRule(readString93, readString94, readInt72);
                    parcel2.writeNoException();
                    return true;
                case 128:
                    String readString95 = parcel.readString();
                    String readString96 = parcel.readString();
                    int readInt73 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    delMptcpSourcePortAcceptRule(readString95, readString96, readInt73);
                    parcel2.writeNoException();
                    return true;
                case 129:
                    String readString97 = parcel.readString();
                    String readString98 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    setMptcpTcpBufferSize(readString97, readString98);
                    parcel2.writeNoException();
                    return true;
                case 130:
                    String readString99 = parcel.readString();
                    int readInt74 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setMtuValueMptcp(readString99, readInt74);
                    parcel2.writeNoException();
                    return true;
                case 131:
                    boolean readBoolean25 = parcel.readBoolean();
                    String readString100 = parcel.readString();
                    String readString101 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    updateMptcpSourceRule(readBoolean25, readString100, readString101);
                    parcel2.writeNoException();
                    return true;
                case 132:
                    boolean readBoolean26 = parcel.readBoolean();
                    String readString102 = parcel.readString();
                    int readInt75 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setMptcpPrivateIpRoute(readBoolean26, readString102, readInt75);
                    parcel2.writeNoException();
                    return true;
                case 133:
                    boolean readBoolean27 = parcel.readBoolean();
                    String readString103 = parcel.readString();
                    String readString104 = parcel.readString();
                    int readInt76 = parcel.readInt();
                    int readInt77 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setMptcpDestBaseMarkRule(readBoolean27, readString103, readString104, readInt76, readInt77);
                    parcel2.writeNoException();
                    return true;
                case 134:
                    String readString105 = parcel.readString();
                    String readString106 = parcel.readString();
                    String readString107 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    addMptcpSourceRoute(readString105, readString106, readString107);
                    parcel2.writeNoException();
                    return true;
                case 135:
                    String readString108 = parcel.readString();
                    String readString109 = parcel.readString();
                    String readString110 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    delMptcpSourceRoute(readString108, readString109, readString110);
                    parcel2.writeNoException();
                    return true;
                case 136:
                    boolean readBoolean28 = parcel.readBoolean();
                    String readString111 = parcel.readString();
                    int readInt78 = parcel.readInt();
                    String readString112 = parcel.readString();
                    String readString113 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    setMptcpUIDRoute(readBoolean28, readString111, readInt78, readString112, readString113);
                    parcel2.writeNoException();
                    return true;
                case 137:
                    String readString114 = parcel.readString();
                    boolean readBoolean29 = parcel.readBoolean();
                    parcel.enforceNoDataAvail();
                    interfaceSetAutoConf(readString114, readBoolean29);
                    return true;
                case 138:
                    int readInt79 = parcel.readInt();
                    String readString115 = parcel.readString();
                    String readString116 = parcel.readString();
                    String readString117 = parcel.readString();
                    int readInt80 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    networkAddLegacyRoute(readInt79, readString115, readString116, readString117, readInt80);
                    parcel2.writeNoException();
                    return true;
                case 139:
                    int readInt81 = parcel.readInt();
                    String readString118 = parcel.readString();
                    String readString119 = parcel.readString();
                    String readString120 = parcel.readString();
                    int readInt82 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    networkRemoveLegacyRoute(readInt81, readString118, readString119, readString120, readInt82);
                    parcel2.writeNoException();
                    return true;
                case 140:
                    boolean readBoolean30 = parcel.readBoolean();
                    int readInt83 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int prioritizeMnxbApp = prioritizeMnxbApp(readBoolean30, readInt83);
                    parcel2.writeNoException();
                    parcel2.writeInt(prioritizeMnxbApp);
                    return true;
                case 141:
                    boolean readBoolean31 = parcel.readBoolean();
                    String readString121 = parcel.readString();
                    int readInt84 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int addMnxbRule = addMnxbRule(readBoolean31, readString121, readInt84);
                    parcel2.writeNoException();
                    parcel2.writeInt(addMnxbRule);
                    return true;
                case 142:
                    String readString122 = parcel.readString();
                    int readInt85 = parcel.readInt();
                    int readInt86 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int replaceMnxbRule = replaceMnxbRule(readString122, readInt85, readInt86);
                    parcel2.writeNoException();
                    parcel2.writeInt(replaceMnxbRule);
                    return true;
                case 143:
                    int readInt87 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    setAdvertiseWindowSize(readInt87);
                    return true;
                case 144:
                    long[] l4StatsGet = l4StatsGet();
                    parcel2.writeNoException();
                    parcel2.writeLongArray(l4StatsGet);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        class Proxy implements IOemNetd {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOemNetd.DESCRIPTOR;
            }

            @Override // com.android.internal.net.IOemNetd
            public boolean isAlive() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readBoolean();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void registerOemUnsolicitedEventListener(IOemNetdUnsolicitedEventListener iOemNetdUnsolicitedEventListener) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeStrongInterface(iOemNetdUnsolicitedEventListener);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void registerDomainFilterEventListener(IDomainFilterEventListener iDomainFilterEventListener) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeStrongInterface(iDomainFilterEventListener);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void unregisterDomainFilterEventListener() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void updateDomainFilterCache(int i, String[] strArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStringArray(strArr);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public String runKnoxRulesCommand(int i, String[] strArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStringArray(strArr);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnBlockDnsQueriesForUid(int i, UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnUnblockDnsQueriesForUid(int i, UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnExemptDnsQueryForUid(int i, UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnRemoveExemptedDnsQueryForUid(int i, UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnDestroyBlockedKnoxNetwork() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnExemptUidFromKnoxVpn(int i, UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnRemoveExemptUidFromKnoxVpn(int i, UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnRemoveUidFromDnsAuthorization() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnInsertUidForDnsAuthorization(int[] iArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeIntArray(iArr);
                    this.mRemote.transact(15, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setNetworkInfo(int i, boolean z, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i2);
                    this.mRemote.transact(16, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void updateInputFilterExemptRules(int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(17, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void updateInputFilterUserWideRules(int[] iArr, int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeIntArray(iArr);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(18, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void updateInputFilterAppWideRules(int[] iArr, int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeIntArray(iArr);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(19, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void clearEbpfMap(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(20, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public String runKnoxFirewallRulesCommand(int i, String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void enableKnoxVpnFlagForTether(boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(22, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void registerNetdTetherEventListener(INetdTetherEventListener iNetdTetherEventListener) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeStrongInterface(iNetdTetherEventListener);
                    this.mRemote.transact(23, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void unregisterNetdTetherEventListener() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(24, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setKnoxVpn(int i, boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(25, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkAddUidRanges(int i, UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkRemoveUidRanges(int i, UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void knoxVpnBlockUserWideDnsQuery(boolean z, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i);
                    this.mRemote.transact(28, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void enableIpOptionModification(boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(29, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void enablePortInfoEntries(int i, int i2, boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(30, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public String getNetworkFilterTcpV4Entry(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public String getNetworkFilterTcpV6Entry(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public String getNetworkFilterUdpV6Entry(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void clearNetworkFilterEntries() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setNwFilterNetId(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(35, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int getNwFilterNetId() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addUserToNwFilterRange(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(37, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeUserFromNwFilterRange(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(38, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void exemptUidFromNwFilterRange(UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(39, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeExemptUidFromNwFilterRange(UidRangeParcel[] uidRangeParcelArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeTypedArray(uidRangeParcelArr, 0);
                    this.mRemote.transact(40, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setKnoxNwFilterProxyApp(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(41, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeKnoxNwFilterProxyApp(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(42, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void clearKnoxNwFilterProxyEntries() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(43, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setDnsCacheStatus(boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(44, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setHttpProxyPort(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(45, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int isIptablesMatchEnabled(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int enableTlsPacketTracing(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int disableTlsPacketTracing(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void makeVideoCallChain() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(49, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void startVideoStats(String str, int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(50, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void stopVideoStats(String str, int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(51, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public TetherStatsParcel[] getVideoStats(String str, int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TetherStatsParcel[]) obtain2.createTypedArray(TetherStatsParcel.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addPortFwdRules(String str, String str2, String str3, String str4, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    obtain.writeInt(i);
                    this.mRemote.transact(53, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public String runVpnRulesCommand(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(54, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void firewallBuild() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(55, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void firewallSetRuleWifi(int i, boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(56, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void firewallSetRuleMobileData(int i, boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(57, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void gmsCoreSetUidUrlMobileDataRule(int i, String str, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    this.mRemote.transact(58, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void gmsCoreSetUidUrlWifiRule(int i, String str, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    this.mRemote.transact(59, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int prioritizeApp(boolean z, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i);
                    this.mRemote.transact(60, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int addApeRule(boolean z, String str, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(61, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int replaceApeRule(String str, int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(62, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void tcSetTCRule(boolean z, String str, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(63, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int startQbox(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(64, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int stopQbox() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(65, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int setQboxUid(int i, boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(66, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void modifyEpdg(boolean z, String str, String str2, boolean z2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeBoolean(z2);
                    this.mRemote.transact(67, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setEpdgInterfaceDropRule(String str, String str2, boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(68, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void makeBlockChildChain() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(69, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setBlockAllDNSPackets(boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(70, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setBlockListIPs(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(71, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setAllowListIPs(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(72, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setBlockHostAlone(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(73, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setAllowHostAlone(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(74, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void cleanAllBlock() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(75, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setBlockAllPackets() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(76, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setBlockPorts(String str, int i, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.mRemote.transact(77, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void cleanBlockPorts() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(78, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public MBBStatsParcel[] getDataUsage(String str, List list) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStringList(list);
                    this.mRemote.transact(79, obtain, obtain2, 0);
                    obtain2.readException();
                    return (MBBStatsParcel[]) obtain2.createTypedArray(MBBStatsParcel.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public long getTotalDataUsage(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(80, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int hotspotOn(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(81, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int hotspotOff(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(82, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int pauseDevice(String str, boolean z, String str2, long j) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeBoolean(z);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    this.mRemote.transact(83, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int flushArpEntry(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(84, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int isMBBPathsPresent() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(85, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int prioEnable(String str, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(86, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int prioUpdate(String str, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(87, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int prioDisable(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(88, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int clearPriorityMap() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(89, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int prioDevice(boolean z, List list, List list2, List list3, List list4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeStringList(list);
                    obtain.writeStringList(list2);
                    obtain.writeStringList(list3);
                    obtain.writeStringList(list4);
                    this.mRemote.transact(90, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int addIpToPrioList(List list, List list2, List list3, List list4, List list5) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeStringList(list);
                    obtain.writeStringList(list2);
                    obtain.writeStringList(list3);
                    obtain.writeStringList(list4);
                    obtain.writeStringList(list5);
                    this.mRemote.transact(91, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int delIpToPrioList(List list, List list2, List list3, List list4, List list5) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeStringList(list);
                    obtain.writeStringList(list2);
                    obtain.writeStringList(list3);
                    obtain.writeStringList(list4);
                    obtain.writeStringList(list5);
                    this.mRemote.transact(92, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int startTrafficStatsController(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(93, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int stopTrafficStatsController(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(94, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public UidStatsParcel[] getUidTrafficStats() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(95, obtain, obtain2, 0);
                    obtain2.readException();
                    return (UidStatsParcel[]) obtain2.createTypedArray(UidStatsParcel.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public UidStatsParcel[] getMhsTrafficStats() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(96, obtain, obtain2, 0);
                    obtain2.readException();
                    return (UidStatsParcel[]) obtain2.createTypedArray(UidStatsParcel.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public TrafficTimeStatsParcel getTrafficTimeStats() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(97, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TrafficTimeStatsParcel) obtain2.readTypedObject(TrafficTimeStatsParcel.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void spegRestrictNetworkConnection(int i, boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(98, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setKnoxGuardExemptRule(boolean z, String str, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(99, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkGuardCreateChain() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(100, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkGuardDeleteChain() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(101, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkGuardEnable(boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(102, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkGuardDisable() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(103, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkGuardDeleteWhiteListRule() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(104, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkGuardSetUidRangeAcceptRule(int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(105, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkGuardSetUidRule(int i, boolean z, boolean z2) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeBoolean(z);
                    obtain.writeBoolean(z2);
                    this.mRemote.transact(106, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkGuardSetProtocolAcceptRule(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(107, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public String runTcpMonitorShellCommand(String str, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(108, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void enableMptcpModes(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(109, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void disableMptcpMode() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(110, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpSocksSkipRule(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(111, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeMptcpSocksSkipRule(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(112, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpSocksRule(String str, String str2, String str3, int i, String str4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(i);
                    obtain.writeString(str4);
                    this.mRemote.transact(113, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeMptcpSocksRule(String str, String str2, String str3, int i, String str4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(i);
                    obtain.writeString(str4);
                    this.mRemote.transact(114, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpLinkIface(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(115, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeMptcpLinkIface(String str) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(116, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpChain(String str, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(117, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeMptcpChain(String str, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(118, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpUidSocksRule(String str, String str2, String str3, int i, int i2, String str4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str4);
                    this.mRemote.transact(119, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeMptcpUidSocksRule(String str, String str2, String str3, int i, int i2, String str4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str4);
                    this.mRemote.transact(120, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addUidToMptcpChain(String str, int i, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.mRemote.transact(121, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeUidFromMptcpChain(String str, int i, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.mRemote.transact(122, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpIpAcceptRule(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(123, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void delMptcpIpAcceptRule(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(124, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpSocksSkipRuleProto(String str, String str2, String str3, int i, String str4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(i);
                    obtain.writeString(str4);
                    this.mRemote.transact(125, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void removeMptcpSocksSkipRuleProto(String str, String str2, String str3, int i, String str4) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(i);
                    obtain.writeString(str4);
                    this.mRemote.transact(126, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpSourcePortAcceptRule(String str, String str2, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    this.mRemote.transact(127, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void delMptcpSourcePortAcceptRule(String str, String str2, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    this.mRemote.transact(128, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setMptcpTcpBufferSize(String str, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(129, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setMtuValueMptcp(String str, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(130, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void updateMptcpSourceRule(boolean z, String str, String str2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(131, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setMptcpPrivateIpRoute(boolean z, String str, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(132, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setMptcpDestBaseMarkRule(boolean z, String str, String str2, int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(133, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void addMptcpSourceRoute(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(134, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void delMptcpSourceRoute(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(135, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setMptcpUIDRoute(boolean z, String str, int i, String str2, String str3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(136, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void interfaceSetAutoConf(String str, boolean z) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeBoolean(z);
                    this.mRemote.transact(137, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkAddLegacyRoute(int i, String str, String str2, String str3, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(i2);
                    this.mRemote.transact(138, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void networkRemoveLegacyRoute(int i, String str, String str2, String str3, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeInt(i2);
                    this.mRemote.transact(139, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int prioritizeMnxbApp(boolean z, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeInt(i);
                    this.mRemote.transact(140, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int addMnxbRule(boolean z, String str, int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeBoolean(z);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(141, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public int replaceMnxbRule(String str, int i, int i2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(142, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public void setAdvertiseWindowSize(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(143, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.net.IOemNetd
            public long[] l4StatsGet() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOemNetd.DESCRIPTOR);
                    this.mRemote.transact(144, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createLongArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
