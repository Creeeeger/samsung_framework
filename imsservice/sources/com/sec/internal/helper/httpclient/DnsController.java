package com.sec.internal.helper.httpclient;

import android.net.Network;
import com.sec.internal.constants.Mno;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.Dns;
import org.xbill.DNS.Message;
import org.xbill.DNS.NAPTRRecord;
import org.xbill.DNS.Name;
import org.xbill.DNS.Rcode;
import org.xbill.DNS.Record;
import org.xbill.DNS.SRVRecord;

/* loaded from: classes.dex */
public class DnsController implements Dns {
    private static final int BUF_SIZE = 2048;
    private static final int DNS_PORT = 53;
    private static final String TAG = "DnsController";
    public static final int TIMEOUT = 3000;
    public static final int TYPE_A = 1;
    public static final int TYPE_AAAA = 2;
    public static final int TYPE_AAAA_PREF = 6;
    public static final int TYPE_A_PREF = 5;
    public static final int TYPE_NAPTR = 3;
    int bsfRetryCounter;
    boolean isNaf;
    private String mBsfHostname;
    InetAddress mDnsAddress;
    List<InetAddress> mDnsAddresses;
    private DnsCache mDnsCache;
    int mDnsType;
    private boolean mIsLookAhead;
    Mno mMno;
    private String mNafHostname;
    Network mNetwork;
    List<SRVRecord> mSrvRecord;
    int retryCounter;
    static List<InetAddress> mListNaf = new ArrayList();
    static List<InetAddress> mListBsf = new ArrayList();
    private static String mPreNafname = "";
    private static String mPreBsfname = "";

    public DnsController(int i, int i2, Network network, List<InetAddress> list, int i3, boolean z, Mno mno) {
        this.mSrvRecord = new ArrayList();
        this.mNafHostname = "";
        this.mBsfHostname = "";
        this.mIsLookAhead = false;
        this.mDnsCache = new DnsCache();
        this.retryCounter = i;
        this.bsfRetryCounter = i2;
        this.mNetwork = network;
        this.mDnsAddresses = list;
        this.isNaf = z;
        this.mDnsType = i3;
        this.mMno = mno;
    }

    public DnsController(int i, int i2, Network network, List<InetAddress> list, int i3, boolean z, Mno mno, String str, String str2, boolean z2) {
        this.mSrvRecord = new ArrayList();
        this.mNafHostname = "";
        this.mBsfHostname = "";
        this.mIsLookAhead = false;
        this.mDnsCache = new DnsCache();
        this.retryCounter = i;
        this.bsfRetryCounter = i2;
        this.mNetwork = network;
        this.mDnsAddresses = list;
        this.isNaf = z;
        this.mDnsType = i3;
        this.mMno = mno;
        this.mNafHostname = str;
        this.mBsfHostname = str2;
        this.mIsLookAhead = z2;
    }

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        if (this.mIsLookAhead) {
            List<InetAddress> query = this.mDnsCache.query(str);
            if (query != null) {
                return query;
            }
            dnsLookAhead();
            List<InetAddress> query2 = this.mDnsCache.query(str);
            if (query2 != null) {
                return query2;
            }
            throw new UnknownHostException("There is no valid group.");
        }
        ArrayList arrayList = new ArrayList();
        IMSLog.d(TAG, "lookup: send DNS with hostname: " + str + ",mPreNafname:" + mPreNafname + ",mPreBsfname:" + mPreBsfname);
        if ((mListNaf.size() == 0 || !str.equals(mPreNafname)) && this.isNaf) {
            mListNaf.clear();
            sendDns(str);
            mPreNafname = str;
        } else if ((mListBsf.size() == 0 || !str.equals(mPreBsfname)) && !this.isNaf) {
            mListBsf.clear();
            sendDns(str);
            mPreBsfname = str;
        }
        if (!this.isNaf || mListNaf.size() <= 0) {
            return mListBsf.size() > 0 ? Collections.singletonList(mListBsf.get(this.bsfRetryCounter)) : arrayList;
        }
        return Collections.singletonList(mListNaf.get(this.retryCounter));
    }

    private void dnsLookAhead() {
        Record[] dnsQuery;
        int i = this.mDnsType == 2 ? 28 : 1;
        Iterator<InetAddress> it = this.mDnsAddresses.iterator();
        while (it.hasNext()) {
            this.mDnsAddress = it.next();
            Record[] dnsQuery2 = getDnsQuery(this.mNafHostname, i);
            if (dnsQuery2 != null && dnsQuery2.length != 0 && (dnsQuery = getDnsQuery(this.mBsfHostname, i)) != null && dnsQuery.length != 0) {
                this.mDnsCache.store(new DnsGroup(new DnsResponse(this.mNafHostname, dnsQuery2, i), new DnsResponse(this.mBsfHostname, dnsQuery, i)));
                return;
            }
        }
    }

    public int getRetryCounter() {
        return this.retryCounter;
    }

    public void setNaf(boolean z) {
        this.isNaf = z;
    }

    private void sendDns(String str) {
        IMSLog.d(TAG, "Requst dns query with " + this.mDnsType);
        int i = this.mDnsType;
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    getNaptrRecord(str);
                    return;
                } else if (i != 5) {
                    if (i != 6) {
                        return;
                    }
                }
            }
            getDnsManualAAAA(str);
            return;
        }
        getDnsManualA(str);
    }

    private void getNaptrRecord(String str) {
        Record[] dnsNAPTR = getDnsNAPTR(str);
        if (dnsNAPTR != null && dnsNAPTR.length > 0) {
            for (Record record : dnsNAPTR) {
                if (record != null && record.getType() == 35) {
                    NAPTRRecord nAPTRRecord = (NAPTRRecord) record;
                    if (nAPTRRecord.getService().equalsIgnoreCase("HTTP+D2T")) {
                        Record[] dnsSRV = getDnsSRV(nAPTRRecord.getReplacement().toString());
                        if (dnsSRV != null && dnsSRV.length > 0) {
                            sortSRV(dnsSRV);
                            Iterator<SRVRecord> it = this.mSrvRecord.iterator();
                            while (it.hasNext()) {
                                getDnsA(it.next().getTarget().toString());
                            }
                        } else {
                            getDnsA(str);
                        }
                    }
                }
            }
            return;
        }
        IMSLog.e(TAG, "sendDns: NAPTR is null");
        Record[] dnsSRV2 = getDnsSRV(str.startsWith("_http.") ? str : "_http._tcp." + str);
        if (dnsSRV2 != null && dnsSRV2.length > 0) {
            sortSRV(dnsSRV2);
            Iterator<SRVRecord> it2 = this.mSrvRecord.iterator();
            while (it2.hasNext()) {
                getDnsA(it2.next().getTarget().toString());
            }
            return;
        }
        IMSLog.e(TAG, "sendDns: SRV direct error");
        getDnsA(str);
    }

    private Record[] getDnsQuery(String str, int i) {
        try {
            DatagramSocket datagramSocket = new DatagramSocket();
            try {
                if (!str.endsWith(".")) {
                    str = str + ".";
                }
                Message newQuery = Message.newQuery(Record.newRecord(Name.fromString(str), i, 1));
                this.mNetwork.bindSocket(datagramSocket);
                byte[] wire = newQuery.toWire();
                datagramSocket.send(new DatagramPacket(wire, wire.length, this.mDnsAddress, 53));
                DatagramPacket datagramPacket = new DatagramPacket(new byte[BUF_SIZE], BUF_SIZE);
                datagramSocket.setSoTimeout(3000);
                datagramSocket.receive(datagramPacket);
                Message message = new Message(datagramPacket.getData());
                int rcode = message.getRcode();
                IMSLog.d(TAG, "result is " + Rcode.string(rcode));
                Record[] sectionArray = rcode == 0 ? message.getSectionArray(1) : null;
                datagramSocket.close();
                return sectionArray;
            } catch (Throwable th) {
                try {
                    datagramSocket.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            IMSLog.e(TAG, "DNS query timeout, try next type or IP");
            return null;
        } catch (NullPointerException e) {
            IMSLog.e(TAG, e.getMessage());
            return null;
        }
    }

    private Record[] getDnsNAPTR(String str) {
        IMSLog.d(TAG, "getDnsNAPTR() called with: hostname = [" + str + "]");
        this.mDnsAddress = this.mDnsAddresses.get(0);
        return getDnsQuery(str, 35);
    }

    private Record[] getDnsSRV(String str) {
        IMSLog.d(TAG, "getDnsSRV() called with: hostname = [" + str + "]");
        this.mDnsAddress = this.mDnsAddresses.get(0);
        return getDnsQuery(str, 33);
    }

    private Record[] getDnsManualAAAA(String str) {
        IMSLog.d(TAG, "getDnsManualAAAA() called with: hostname = [" + str + "]");
        Iterator<InetAddress> it = this.mDnsAddresses.iterator();
        Record[] recordArr = null;
        while (it.hasNext()) {
            this.mDnsAddress = it.next();
            recordArr = getManualDnsQuery(str, 28);
            if (recordArr != null && recordArr.length > 0) {
                break;
            }
            if (this.mDnsType == 6) {
                recordArr = getManualDnsQuery(str, 1);
                if (recordArr != null && recordArr.length > 0) {
                    break;
                }
                if (recordArr == null) {
                    IMSLog.d(TAG, "AAAA and A type query failed,try next IP");
                }
            }
        }
        return recordArr;
    }

    private Record[] getDnsManualA(String str) {
        IMSLog.d(TAG, "getDnsManualA() called with: hostname = [" + str + "]");
        Iterator<InetAddress> it = this.mDnsAddresses.iterator();
        Record[] recordArr = null;
        while (it.hasNext()) {
            this.mDnsAddress = it.next();
            recordArr = getManualDnsQuery(str, 1);
            if (recordArr != null && recordArr.length > 0) {
                break;
            }
            if (this.mDnsType == 5) {
                recordArr = getManualDnsQuery(str, 28);
                if (recordArr != null && recordArr.length > 0) {
                    break;
                }
                if (recordArr == null) {
                    IMSLog.d(TAG, "A and AAAA type query failed,try next IP");
                }
            }
        }
        return recordArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private org.xbill.DNS.Record[] getManualDnsQuery(java.lang.String r11, int r12) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.httpclient.DnsController.getManualDnsQuery(java.lang.String, int):org.xbill.DNS.Record[]");
    }

    private void getDnsA(String str) {
        try {
            InetAddress byName = this.mNetwork.getByName(str);
            IMSLog.d(TAG, "getDnsA: " + byName);
            boolean z = true;
            if (this.isNaf) {
                Iterator<InetAddress> it = mListNaf.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (it.next().equals(byName)) {
                        break;
                    }
                }
                if (z) {
                    return;
                }
                mListNaf.add(byName);
                return;
            }
            Iterator<InetAddress> it2 = mListBsf.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                } else if (it2.next().equals(byName)) {
                    break;
                }
            }
            if (z) {
                return;
            }
            mListBsf.add(byName);
        } catch (NullPointerException | UnknownHostException unused) {
            IMSLog.e(TAG, "getDnsA: error with hostname: " + str);
        }
    }

    private void sortSRV(Record[] recordArr) {
        this.mSrvRecord.clear();
        for (Record record : recordArr) {
            SRVRecord sRVRecord = (SRVRecord) record;
            if (this.mSrvRecord.size() == 0) {
                IMSLog.d(TAG, "sortSRV: 1st Record");
                this.mSrvRecord.add(sRVRecord);
            } else {
                boolean z = false;
                for (int i = 0; i < this.mSrvRecord.size() && !z; i++) {
                    SRVRecord sRVRecord2 = this.mSrvRecord.get(i);
                    if (sRVRecord.getPriority() < sRVRecord2.getPriority()) {
                        IMSLog.d(TAG, "sortSRV: Update SRV better, lower priority");
                        this.mSrvRecord.add(i, sRVRecord);
                    } else if (sRVRecord.getWeight() > sRVRecord2.getWeight()) {
                        IMSLog.d(TAG, "sortSRV: Update SRV better, higher weight");
                        this.mSrvRecord.add(i, sRVRecord);
                    }
                    z = true;
                }
                if (!z) {
                    this.mSrvRecord.add(sRVRecord);
                }
            }
        }
    }

    public static int getNafAddrSize() {
        return mListNaf.size();
    }

    public static int getBsfAddrSize() {
        return mListBsf.size();
    }

    public static void correctServerAddr(int i, int i2) {
        if (i > 0 && i < mListNaf.size()) {
            InetAddress inetAddress = mListNaf.get(i);
            mListNaf.remove(i);
            mListNaf.add(0, inetAddress);
        }
        if (i2 <= 0 || i2 >= mListBsf.size()) {
            return;
        }
        InetAddress inetAddress2 = mListBsf.get(i2);
        mListBsf.remove(i2);
        mListBsf.add(0, inetAddress2);
    }
}
