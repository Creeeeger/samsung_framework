package org.tukaani.xz.simple;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;

/* loaded from: classes2.dex */
public final class PowerPC implements SimpleFilter {
    public final boolean isEncoder;
    public int pos;

    public PowerPC(boolean z, int i) {
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
            if ((i6 & 252) == 72) {
                int i7 = i5 + 3;
                int i8 = bArr[i7];
                if ((i8 & 3) == 1) {
                    int i9 = i5 + 1;
                    int i10 = i5 + 2;
                    int i11 = ((i6 & 3) << 24) | ((bArr[i9] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 16) | ((bArr[i10] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 8) | (i8 & 252);
                    if (this.isEncoder) {
                        i3 = i11 + ((this.pos + i5) - i);
                    } else {
                        i3 = i11 - ((this.pos + i5) - i);
                    }
                    bArr[i5] = (byte) (72 | ((i3 >>> 24) & 3));
                    bArr[i9] = (byte) (i3 >>> 16);
                    bArr[i10] = (byte) (i3 >>> 8);
                    bArr[i7] = (byte) (i3 | (bArr[i7] & 3));
                }
            }
            i5 += 4;
        }
        int i12 = i5 - i;
        this.pos += i12;
        return i12;
    }
}
