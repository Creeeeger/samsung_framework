package com.android.internal.telephony.uicc.asn1;

import com.android.internal.telephony.uicc.IccUtils;

/* loaded from: classes5.dex */
public final class Asn1Decoder {
    private final int mEnd;
    private int mPosition;
    private final byte[] mSrc;

    public Asn1Decoder(String hex) {
        this(IccUtils.hexStringToBytes(hex));
    }

    public Asn1Decoder(byte[] src) {
        this(src, 0, src.length);
    }

    public Asn1Decoder(byte[] bytes, int offset, int length) {
        if (offset < 0 || length < 0 || offset + length > bytes.length) {
            throw new IndexOutOfBoundsException("Out of the bounds: bytes=[" + bytes.length + "], offset=" + offset + ", length=" + length);
        }
        this.mSrc = bytes;
        this.mPosition = offset;
        this.mEnd = offset + length;
    }

    public int getPosition() {
        return this.mPosition;
    }

    public boolean hasNextNode() {
        return this.mPosition < this.mEnd;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:            if (r3 >= r9.mEnd) goto L35;     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00f3, code lost:            throw new com.android.internal.telephony.uicc.asn1.InvalidAsn1DataException(0, "Invalid length at position: " + r3);     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002a, code lost:            r2 = com.android.internal.telephony.uicc.IccUtils.bytesToInt(r9.mSrc, r0, r3 - r0);     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0033, code lost:            r4 = r9.mSrc;        r5 = r3 + 1;        r0 = r4[r3];     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:            if ((r0 & 128) != 0) goto L17;     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:            r3 = r0;     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:            if ((r5 + r3) > r9.mEnd) goto L25;     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:            r4 = new com.android.internal.telephony.uicc.asn1.Asn1Node(r2, r9.mSrc, r5, r3);        r9.mPosition = r5 + r3;     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:            return r4;     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0091, code lost:            throw new com.android.internal.telephony.uicc.asn1.InvalidAsn1DataException(r2, "Incomplete data at position: " + r5 + ", expected bytes: " + r3 + ", actual bytes: " + (r9.mEnd - r5));     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003f, code lost:            r3 = r0 & 127;     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:            if ((r5 + r3) > r9.mEnd) goto L30;     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c0, code lost:            throw new com.android.internal.telephony.uicc.asn1.InvalidAsn1DataException(r2, "Cannot parse length at position: " + r5);     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0049, code lost:            r4 = com.android.internal.telephony.uicc.IccUtils.bytesToInt(r4, r5, r3);     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004e, code lost:            r5 = r5 + r3;        r3 = r4;     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0092, code lost:            r4 = move-exception;     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a9, code lost:            throw new com.android.internal.telephony.uicc.asn1.InvalidAsn1DataException(r2, "Cannot parse length at position: " + r5, r4);     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c1, code lost:            r2 = move-exception;     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00da, code lost:            throw new com.android.internal.telephony.uicc.asn1.InvalidAsn1DataException(0, "Cannot parse tag at position: " + r0, r2);     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:            if ((r9.mSrc[r0] & com.samsung.android.graphics.spr.document.animator.SprAnimatorBase.INTERPOLATOR_TYPE_QUARTEASEIN) == 31) goto L6;     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:            if (r3 >= r9.mEnd) goto L44;     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:            r2 = r9.mSrc[r3] & 128;        r3 = r3 + 1;     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:            if (r2 == 0) goto L43;     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.internal.telephony.uicc.asn1.Asn1Node nextNode() throws com.android.internal.telephony.uicc.asn1.InvalidAsn1DataException {
        /*
            Method dump skipped, instructions count: 252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.telephony.uicc.asn1.Asn1Decoder.nextNode():com.android.internal.telephony.uicc.asn1.Asn1Node");
    }
}
