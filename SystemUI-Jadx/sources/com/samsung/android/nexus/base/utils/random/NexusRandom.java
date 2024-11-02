package com.samsung.android.nexus.base.utils.random;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class NexusRandom {
    public static long seedUniquifier;
    public long seed;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public NexusRandom() {
        /*
            r4 = this;
            long r0 = com.samsung.android.nexus.base.utils.random.NexusRandom.seedUniquifier
            r2 = 181783497276652981(0x285d320ad33fdb5, double:1.6685641475275746E-296)
            long r0 = r0 * r2
            com.samsung.android.nexus.base.utils.random.NexusRandom.seedUniquifier = r0
            long r2 = java.lang.System.nanoTime()
            long r0 = r0 ^ r2
            r4.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.nexus.base.utils.random.NexusRandom.<init>():void");
    }

    public NexusRandom(long j) {
        this.seed = (j ^ 25214903917L) & 281474976710655L;
    }
}
