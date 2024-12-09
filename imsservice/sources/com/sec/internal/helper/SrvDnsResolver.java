package com.sec.internal.helper;

import android.net.DnsResolver;
import android.net.Network;
import android.os.CancellationSignal;
import android.util.Log;
import com.android.net.module.util.DnsPacket;
import com.android.net.module.util.DnsPacketUtils;
import com.sec.internal.helper.SrvDnsResolver;
import java.net.InetAddress;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class SrvDnsResolver {
    public static final int QUERY_TYPE_SRV = 33;
    private static final String TAG = "SrvDnsResolver";

    public static class SrvRecordInetAddress {
        public final InetAddress mInetAddress;
        public final int mPort;

        public SrvRecordInetAddress(InetAddress inetAddress, int i) {
            this.mInetAddress = inetAddress;
            this.mPort = i;
        }
    }

    static class SrvResponse extends DnsPacket {
        private final int mQueryType;

        static class SrvRecord {
            private static final int MAXNAMESIZE = 255;
            public final int port;
            public final int priority;
            public final String target;
            public final int weight;

            SrvRecord(byte[] bArr) throws DnsPacket.ParseException {
                if (bArr == null) {
                    throw new DnsPacket.ParseException("No record data");
                }
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                try {
                    this.priority = Short.toUnsignedInt(wrap.getShort());
                    this.weight = Short.toUnsignedInt(wrap.getShort());
                    this.port = Short.toUnsignedInt(wrap.getShort());
                    String parseName = DnsPacketUtils.DnsRecordParser.parseName(wrap, 0, true);
                    this.target = parseName;
                    if (parseName.length() > 255) {
                        throw new DnsPacket.ParseException("Parse name failed, name size is too long: " + parseName.length());
                    }
                    if (wrap.hasRemaining()) {
                        throw new DnsPacket.ParseException("Parsing SRV record data failed: more bytes than expected!");
                    }
                } catch (BufferUnderflowException e) {
                    throw new DnsPacket.ParseException("Parsing SRV Record data failed with cause", e);
                }
            }
        }

        SrvResponse(byte[] bArr) throws DnsPacket.ParseException {
            super(bArr);
            if (!((DnsPacket) this).mHeader.isResponse()) {
                throw new DnsPacket.ParseException("Not an answer packet");
            }
            int recordCount = ((DnsPacket) this).mHeader.getRecordCount(0);
            if (recordCount != 1) {
                throw new DnsPacket.ParseException("Unexpected query count: " + recordCount);
            }
            int i = ((DnsPacket.DnsRecord) ((DnsPacket) this).mRecords[0].get(0)).nsType;
            this.mQueryType = i;
            if (i == 33) {
                return;
            }
            throw new DnsPacket.ParseException("Unexpected query type: " + i);
        }

        public Map<String, SrvRecord> parseSrvRecords() throws DnsPacket.ParseException {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (((DnsPacket) this).mHeader.getRecordCount(1) == 0) {
                return linkedHashMap;
            }
            for (DnsPacket.DnsRecord dnsRecord : ((DnsPacket) this).mRecords[1]) {
                int i = dnsRecord.nsType;
                if (i != 33) {
                    throw new DnsPacket.ParseException("Unexpected DNS record type in ANSECTION: " + i);
                }
                SrvRecord srvRecord = new SrvRecord(dnsRecord.getRR());
                if (linkedHashMap.containsKey(srvRecord.target)) {
                    throw new DnsPacket.ParseException("Domain name " + srvRecord.target + " already encountered in DNS response!");
                }
                linkedHashMap.put(srvRecord.target, srvRecord);
                Log.d(SrvDnsResolver.TAG, "SrvRecord name: " + dnsRecord.dName + " target name: " + srvRecord.target);
            }
            return linkedHashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class SrvRecordAnswerAccumulator implements DnsResolver.Callback<byte[]> {
        private static final String TAG = "SrvRecordAnswerAccum";
        private final Network mNetwork;
        private final DnsResolver.Callback<List<SrvRecordInetAddress>> mUserCallback;
        private final Executor mUserExecutor;

        private static class LazyExecutor {
            public static final Executor INSTANCE = Executors.newSingleThreadExecutor();

            private LazyExecutor() {
            }
        }

        static Executor getInternalExecutor() {
            return LazyExecutor.INSTANCE;
        }

        SrvRecordAnswerAccumulator(Network network, DnsResolver.Callback<List<SrvRecordInetAddress>> callback, Executor executor) {
            this.mNetwork = network;
            this.mUserCallback = callback;
            this.mUserExecutor = executor;
        }

        private List<InetAddress> queryDns(String str) {
            final CompletableFuture completableFuture = new CompletableFuture();
            DnsResolver.getInstance().query(this.mNetwork, str, 0, new Executor() { // from class: com.sec.internal.helper.SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    runnable.run();
                }
            }, null, new DnsResolver.Callback<List<InetAddress>>() { // from class: com.sec.internal.helper.SrvDnsResolver.SrvRecordAnswerAccumulator.1
                @Override // android.net.DnsResolver.Callback
                public void onAnswer(List<InetAddress> list, int i) {
                    if (i != 0) {
                        Log.e(SrvRecordAnswerAccumulator.TAG, "queryDNS Response Code = " + i);
                    }
                    completableFuture.complete(list);
                }

                @Override // android.net.DnsResolver.Callback
                public void onError(DnsResolver.DnsException dnsException) {
                    Log.e(SrvRecordAnswerAccumulator.TAG, "queryDNS response with error : " + dnsException);
                    completableFuture.completeExceptionally(dnsException);
                }
            });
            try {
                return (List) completableFuture.get();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                e.printStackTrace();
                return Collections.emptyList();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
                return Collections.emptyList();
            }
        }

        private List<SrvRecordInetAddress> composeSrvRecordResult(SrvResponse srvResponse) throws DnsPacket.ParseException, DnsResolver.DnsException {
            ArrayList arrayList = new ArrayList();
            Map<String, SrvResponse.SrvRecord> parseSrvRecords = srvResponse.parseSrvRecords();
            parseSrvRecords.entrySet().iterator();
            for (Map.Entry<String, SrvResponse.SrvRecord> entry : parseSrvRecords.entrySet()) {
                String key = entry.getKey();
                int i = entry.getValue().port;
                Iterator<InetAddress> it = queryDns(key).iterator();
                while (it.hasNext()) {
                    arrayList.add(new SrvRecordInetAddress(it.next(), i));
                }
            }
            return arrayList;
        }

        @Override // android.net.DnsResolver.Callback
        public void onAnswer(byte[] bArr, final int i) {
            try {
                final List<SrvRecordInetAddress> composeSrvRecordResult = composeSrvRecordResult(new SrvResponse(bArr));
                this.mUserExecutor.execute(new Runnable() { // from class: com.sec.internal.helper.SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SrvDnsResolver.SrvRecordAnswerAccumulator.this.lambda$onAnswer$0(composeSrvRecordResult, i);
                    }
                });
            } catch (DnsPacket.ParseException | DnsResolver.DnsException e) {
                e.printStackTrace();
                Log.d(TAG, "Exception occurs, send error to do ARES DNS query once again");
                this.mUserExecutor.execute(new Runnable() { // from class: com.sec.internal.helper.SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        SrvDnsResolver.SrvRecordAnswerAccumulator.this.lambda$onAnswer$1();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnswer$0(List list, int i) {
            this.mUserCallback.onAnswer(list, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnswer$1() {
            this.mUserCallback.onError(null);
        }

        @Override // android.net.DnsResolver.Callback
        public void onError(final DnsResolver.DnsException dnsException) {
            Log.e(TAG, "onError: " + dnsException);
            this.mUserExecutor.execute(new Runnable() { // from class: com.sec.internal.helper.SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    SrvDnsResolver.SrvRecordAnswerAccumulator.this.lambda$onError$2(dnsException);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$2(DnsResolver.DnsException dnsException) {
            this.mUserCallback.onError(dnsException);
        }
    }

    public static void query(Network network, String str, Executor executor, CancellationSignal cancellationSignal, DnsResolver.Callback<List<SrvRecordInetAddress>> callback) {
        DnsResolver.getInstance().rawQuery(network, str, 1, 33, 0, SrvRecordAnswerAccumulator.getInternalExecutor(), cancellationSignal, new SrvRecordAnswerAccumulator(network, callback, executor));
    }

    private SrvDnsResolver() {
    }
}
