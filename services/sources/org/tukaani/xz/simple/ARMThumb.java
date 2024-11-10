package org.tukaani.xz.simple;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import com.android.internal.util.FrameworkStatsLog;

/* loaded from: classes2.dex */
public final class ARMThumb implements SimpleFilter {
    public final boolean isEncoder;
    public int pos;

    public ARMThumb(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i + 4;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = (i2 + i) - 4;
        int i5 = i;
        while (i5 <= i4) {
            int i6 = i5 + 1;
            int i7 = bArr[i6];
            if ((i7 & FrameworkStatsLog.INTEGRITY_RULES_PUSHED) == 240) {
                int i8 = i5 + 3;
                int i9 = bArr[i8];
                if ((i9 & FrameworkStatsLog.INTEGRITY_RULES_PUSHED) == 248) {
                    int i10 = ((i7 & 7) << 19) | ((bArr[i5] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) << 11) | ((i9 & 7) << 8);
                    int i11 = i5 + 2;
                    int i12 = (i10 | (bArr[i11] & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT)) << 1;
                    if (this.isEncoder) {
                        i3 = i12 + ((this.pos + i5) - i);
                    } else {
                        i3 = i12 - ((this.pos + i5) - i);
                    }
                    int i13 = i3 >>> 1;
                    bArr[i6] = (byte) (240 | ((i13 >>> 19) & 7));
                    bArr[i5] = (byte) (i13 >>> 11);
                    bArr[i8] = (byte) (((i13 >>> 8) & 7) | FrameworkStatsLog.INTEGRITY_RULES_PUSHED);
                    bArr[i11] = (byte) i13;
                    i5 = i11;
                }
            }
            i5 += 2;
        }
        int i14 = i5 - i;
        this.pos += i14;
        return i14;
    }
}
