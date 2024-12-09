package com.sec.internal.helper;

import android.annotation.SuppressLint;
import android.net.DnsResolver;
import android.net.Network;
import android.net.ParseException;
import android.os.CancellationSignal;
import android.text.TextUtils;
import android.util.Log;
import com.android.net.module.util.DnsPacket;
import com.sec.internal.helper.NaptrDnsResolver;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.text.DecimalFormat;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class NaptrDnsResolver {
    private static final int MAXLABELCOUNT = 128;
    private static final int MAXLABELSIZE = 63;
    private static final int NAME_COMPRESSION = 192;
    private static final int NAME_NORMAL = 0;
    public static final int QUERY_TYPE_NAPTR = 35;
    private static final String TAG = "NaptrDnsResolver";
    public static final int TYPE_A = 0;
    public static final int TYPE_P = 3;
    public static final int TYPE_SRV = 1;
    public static final int TYPE_U = 2;
    private static final DecimalFormat sByteFormat = new DecimalFormat();
    private static final FieldPosition sPos = new FieldPosition(0);

    @Retention(RetentionPolicy.SOURCE)
    @interface NaptrRecordType {
    }

    public static class NaptrTarget {
        public final String mName;
        public final int mType;

        public NaptrTarget(String str, int i) {
            this.mName = str;
            this.mType = i;
        }
    }

    static class NaptrResponse extends DnsPacket {
        private final int mQueryType;

        static class NaptrRecord {
            private static final int MAXNAMESIZE = 255;
            public final String flag;
            public final int order;
            public final int preference;
            public final String regex;
            public final String replacement;
            public final String service;

            private String parseNextField(ByteBuffer byteBuffer) throws BufferUnderflowException {
                int i = byteBuffer.get();
                byte[] bArr = new byte[i];
                byteBuffer.get(bArr, 0, i);
                return new String(bArr, StandardCharsets.UTF_8);
            }

            public int getTypeFromFlagString() {
                String str = this.flag;
                str.hashCode();
                switch (str) {
                    case "A":
                    case "a":
                        return 0;
                    case "S":
                    case "s":
                        return 1;
                    default:
                        throw new DnsPacket.ParseException("Unsupported flag type: " + this.flag);
                }
            }

            NaptrRecord(byte[] bArr) throws DnsPacket.ParseException {
                if (bArr == null) {
                    throw new DnsPacket.ParseException("NAPTR: No record data");
                }
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                try {
                    this.order = Short.toUnsignedInt(wrap.getShort());
                    this.preference = Short.toUnsignedInt(wrap.getShort());
                    this.flag = parseNextField(wrap);
                    this.service = parseNextField(wrap);
                    String parseNextField = parseNextField(wrap);
                    this.regex = parseNextField;
                    if (parseNextField.length() != 0) {
                        throw new DnsPacket.ParseException("NAPTR: regex field expected to be empty!");
                    }
                    String parseName = NaptrDnsResolver.parseName(wrap, 0, true);
                    this.replacement = parseName;
                    if (parseName == null) {
                        throw new DnsPacket.ParseException("NAPTR: replacement field not expected to be empty!");
                    }
                    if (parseName.length() > 255) {
                        throw new DnsPacket.ParseException("Parse name fail, replacement name size is too long: " + parseName.length());
                    }
                    if (wrap.hasRemaining()) {
                        throw new DnsPacket.ParseException("Parsing NAPTR record data failed: more bytes than expected!");
                    }
                } catch (BufferUnderflowException e) {
                    throw new DnsPacket.ParseException("Parsing NAPTR Record data failed with cause", e);
                }
            }
        }

        NaptrResponse(byte[] bArr) throws DnsPacket.ParseException {
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
            if (i == 35) {
                return;
            }
            throw new DnsPacket.ParseException("Unexpected query type: " + i);
        }

        public List<NaptrRecord> parseNaptrRecords() throws DnsPacket.ParseException {
            ArrayList arrayList = new ArrayList();
            if (((DnsPacket) this).mHeader.getRecordCount(1) == 0) {
                return arrayList;
            }
            for (DnsPacket.DnsRecord dnsRecord : ((DnsPacket) this).mRecords[1]) {
                int i = dnsRecord.nsType;
                if (i != 35) {
                    throw new DnsPacket.ParseException("Unexpected DNS record type in ANSECTION: " + i);
                }
                NaptrRecord naptrRecord = new NaptrRecord(dnsRecord.getRR());
                arrayList.add(naptrRecord);
                Log.d(NaptrDnsResolver.TAG, "NaptrRecord name: " + dnsRecord.dName + " replacement field: " + naptrRecord.replacement);
            }
            return arrayList;
        }
    }

    public static class NaptrRecordAnswerAccumulator implements DnsResolver.Callback<byte[]> {
        private static final String TAG = "NaptrRecordAnswerAccum";
        private final String mTransport;
        private final DnsResolver.Callback<List<NaptrTarget>> mUserCallback;
        private final Executor mUserExecutor;

        private static class LazyExecutor {
            public static final Executor INSTANCE = Executors.newSingleThreadExecutor();

            private LazyExecutor() {
            }
        }

        static Executor getInternalExecutor() {
            return LazyExecutor.INSTANCE;
        }

        public NaptrRecordAnswerAccumulator(DnsResolver.Callback<List<NaptrTarget>> callback, Executor executor, String str) {
            this.mUserCallback = callback;
            this.mUserExecutor = executor;
            str.hashCode();
            switch (str) {
                case "TCP":
                    this.mTransport = "SIP+D2T";
                    break;
                case "TLS":
                    this.mTransport = "SIPS+D2T";
                    break;
                case "UDP":
                    this.mTransport = "SIP+D2U";
                    break;
                default:
                    this.mTransport = "";
                    break;
            }
        }

        private List<NaptrTarget> composeNaptrRecordResult(List<NaptrResponse.NaptrRecord> list) throws ParseException {
            ArrayList arrayList = new ArrayList();
            if (list.isEmpty()) {
                return arrayList;
            }
            for (NaptrResponse.NaptrRecord naptrRecord : list) {
                if (this.mTransport.equalsIgnoreCase(naptrRecord.service)) {
                    arrayList.add(new NaptrTarget(naptrRecord.replacement, naptrRecord.getTypeFromFlagString()));
                }
            }
            return arrayList;
        }

        @Override // android.net.DnsResolver.Callback
        public void onAnswer(byte[] bArr, final int i) {
            try {
                final List<NaptrTarget> composeNaptrRecordResult = composeNaptrRecordResult(new NaptrResponse(bArr).parseNaptrRecords());
                this.mUserExecutor.execute(new Runnable() { // from class: com.sec.internal.helper.NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        NaptrDnsResolver.NaptrRecordAnswerAccumulator.this.lambda$onAnswer$0(composeNaptrRecordResult, i);
                    }
                });
            } catch (DnsPacket.ParseException unused) {
                Log.d(TAG, "Exception occurs, send error to do ARES DNS query once again");
                this.mUserExecutor.execute(new Runnable() { // from class: com.sec.internal.helper.NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        NaptrDnsResolver.NaptrRecordAnswerAccumulator.this.lambda$onAnswer$1();
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
            this.mUserExecutor.execute(new Runnable() { // from class: com.sec.internal.helper.NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    NaptrDnsResolver.NaptrRecordAnswerAccumulator.this.lambda$onError$2(dnsException);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$2(DnsResolver.DnsException dnsException) {
            this.mUserCallback.onError(dnsException);
        }
    }

    @SuppressLint({"WrongConstant"})
    public static void query(Network network, String str, Executor executor, CancellationSignal cancellationSignal, DnsResolver.Callback<List<NaptrTarget>> callback, String str2) {
        DnsResolver.getInstance().rawQuery(network, str, 1, 35, 0, NaptrRecordAnswerAccumulator.getInternalExecutor(), cancellationSignal, new NaptrRecordAnswerAccumulator(callback, executor, str2));
    }

    public static String parseName(ByteBuffer byteBuffer, int i, boolean z) throws BufferUnderflowException, DnsPacket.ParseException {
        if (i > 128) {
            throw new DnsPacket.ParseException("Failed to parse name, too many labels");
        }
        int unsignedInt = Byte.toUnsignedInt(byteBuffer.get());
        int i2 = unsignedInt & 192;
        if (unsignedInt == 0) {
            return "";
        }
        if ((i2 != 0 && i2 != 192) || (!z && i2 == 192)) {
            throw new DnsPacket.ParseException("Parse name fail, bad label type: " + i2);
        }
        if (i2 == 192) {
            int unsignedInt2 = ((unsignedInt & (-193)) << 8) + Byte.toUnsignedInt(byteBuffer.get());
            int position = byteBuffer.position();
            if (unsignedInt2 >= position - 2) {
                throw new DnsPacket.ParseException("Parse compression name fail, invalid compression");
            }
            byteBuffer.position(unsignedInt2);
            String parseName = parseName(byteBuffer, i + 1, z);
            byteBuffer.position(position);
            return parseName;
        }
        byte[] bArr = new byte[unsignedInt];
        byteBuffer.get(bArr);
        String labelToString = labelToString(bArr);
        if (labelToString.length() > 63) {
            throw new DnsPacket.ParseException("Parse name fail, invalid label length");
        }
        String parseName2 = parseName(byteBuffer, i + 1, z);
        if (TextUtils.isEmpty(parseName2)) {
            return labelToString;
        }
        return labelToString + "." + parseName2;
    }

    private static String labelToString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            int unsignedInt = Byte.toUnsignedInt(b);
            if (unsignedInt <= 32 || unsignedInt >= 127) {
                stringBuffer.append('\\');
                sByteFormat.format(unsignedInt, stringBuffer, sPos);
            } else if (unsignedInt == 34 || unsignedInt == 46 || unsignedInt == 59 || unsignedInt == 92 || unsignedInt == 40 || unsignedInt == 41 || unsignedInt == 64 || unsignedInt == 36) {
                stringBuffer.append('\\');
                stringBuffer.append((char) unsignedInt);
            } else {
                stringBuffer.append((char) unsignedInt);
            }
        }
        return stringBuffer.toString();
    }

    private NaptrDnsResolver() {
    }
}
