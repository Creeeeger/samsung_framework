package org.tukaani.xz.simple;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;

/* loaded from: classes2.dex */
public final class ARM implements SimpleFilter {
    public final boolean isEncoder;
    public int pos;

    public ARM(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i + 8;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = (i2 + i) - 4;
        int i5 = i;
        while (i5 <= i4) {
            if ((bArr[i5 + 3] & 255) == 235) {
                int i6 = i5 + 2;
                int i7 = i5 + 1;
                int i8 = ((((bArr[i6] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 16) | ((bArr[i7] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 8)) | (bArr[i5] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 2;
                if (this.isEncoder) {
                    i3 = i8 + ((this.pos + i5) - i);
                } else {
                    i3 = i8 - ((this.pos + i5) - i);
                }
                int i9 = i3 >>> 2;
                bArr[i6] = (byte) (i9 >>> 16);
                bArr[i7] = (byte) (i9 >>> 8);
                bArr[i5] = (byte) i9;
            }
            i5 += 4;
        }
        int i10 = i5 - i;
        this.pos += i10;
        return i10;
    }
}
