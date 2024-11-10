package org.tukaani.xz.simple;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;

/* loaded from: classes2.dex */
public final class SPARC implements SimpleFilter {
    public final boolean isEncoder;
    public int pos;

    public SPARC(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = (i2 + i) - 4;
        int i5 = i;
        while (i5 <= i4) {
            int i6 = bArr[i5];
            if ((i6 == 64 && (bArr[i5 + 1] & 192) == 0) || (i6 == 127 && (bArr[i5 + 1] & 192) == 192)) {
                int i7 = i5 + 1;
                int i8 = i5 + 2;
                int i9 = i5 + 3;
                int i10 = (((((i6 & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 24) | ((bArr[i7] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 16)) | ((bArr[i8] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 8)) | (bArr[i9] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 2;
                if (this.isEncoder) {
                    i3 = i10 + ((this.pos + i5) - i);
                } else {
                    i3 = i10 - ((this.pos + i5) - i);
                }
                int i11 = i3 >>> 2;
                int i12 = (i11 & 4194303) | (((0 - ((i11 >>> 22) & 1)) << 22) & 1073741823) | 1073741824;
                bArr[i5] = (byte) (i12 >>> 24);
                bArr[i7] = (byte) (i12 >>> 16);
                bArr[i8] = (byte) (i12 >>> 8);
                bArr[i9] = (byte) i12;
            }
            i5 += 4;
        }
        int i13 = i5 - i;
        this.pos += i13;
        return i13;
    }
}
