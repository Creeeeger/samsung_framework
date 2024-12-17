package org.apache.commons.math.random;

import java.io.Serializable;
import java.security.SecureRandom;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public class RandomDataImpl implements Serializable {
    private static final long serialVersionUID = -626730818244969716L;
    private RandomGenerator rand = null;
    private SecureRandom secRand = null;

    /* JADX WARN: Code restructure failed: missing block: B:99:0x01bb, code lost:
    
        if (r15 == 0.0d) goto L94;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final double nextInversionDeviate(org.apache.commons.math.distribution.AbstractContinuousDistribution r46) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math.random.RandomDataImpl.nextInversionDeviate(org.apache.commons.math.distribution.AbstractContinuousDistribution):double");
    }

    public final void reSeed(long j) {
        if (this.rand == null) {
            this.rand = new JDKRandomGenerator();
        }
        this.rand.setSeed(j);
    }
}
