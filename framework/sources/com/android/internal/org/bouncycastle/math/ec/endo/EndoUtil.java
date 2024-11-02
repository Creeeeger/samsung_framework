package com.android.internal.org.bouncycastle.math.ec.endo;

import com.android.internal.org.bouncycastle.math.ec.ECConstants;
import com.android.internal.org.bouncycastle.math.ec.ECCurve;
import com.android.internal.org.bouncycastle.math.ec.ECPoint;
import com.android.internal.org.bouncycastle.math.ec.PreCompCallback;
import com.android.internal.org.bouncycastle.math.ec.PreCompInfo;
import java.math.BigInteger;

/* loaded from: classes5.dex */
public abstract class EndoUtil {
    public static final String PRECOMP_NAME = "bc_endo";

    public static BigInteger[] decomposeScalar(ScalarSplitParameters p, BigInteger k) {
        int bits = p.getBits();
        BigInteger b1 = calculateB(k, p.getG1(), bits);
        BigInteger b2 = calculateB(k, p.getG2(), bits);
        BigInteger a = k.subtract(b1.multiply(p.getV1A()).add(b2.multiply(p.getV2A())));
        BigInteger b = b1.multiply(p.getV1B()).add(b2.multiply(p.getV2B())).negate();
        return new BigInteger[]{a, b};
    }

    public static ECPoint mapPoint(ECEndomorphism endomorphism, ECPoint p) {
        ECCurve c = p.getCurve();
        EndoPreCompInfo precomp = (EndoPreCompInfo) c.precompute(p, PRECOMP_NAME, new PreCompCallback() { // from class: com.android.internal.org.bouncycastle.math.ec.endo.EndoUtil.1
            final /* synthetic */ ECPoint val$p;

            AnonymousClass1(ECPoint p2) {
                p = p2;
            }

            @Override // com.android.internal.org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo existing) {
                EndoPreCompInfo existingEndo = existing instanceof EndoPreCompInfo ? (EndoPreCompInfo) existing : null;
                if (checkExisting(existingEndo, ECEndomorphism.this)) {
                    return existingEndo;
                }
                ECPoint mappedPoint = ECEndomorphism.this.getPointMap().map(p);
                EndoPreCompInfo result = new EndoPreCompInfo();
                result.setEndomorphism(ECEndomorphism.this);
                result.setMappedPoint(mappedPoint);
                return result;
            }

            private boolean checkExisting(EndoPreCompInfo existingEndo, ECEndomorphism endomorphism2) {
                return (existingEndo == null || existingEndo.getEndomorphism() != endomorphism2 || existingEndo.getMappedPoint() == null) ? false : true;
            }
        });
        return precomp.getMappedPoint();
    }

    /* renamed from: com.android.internal.org.bouncycastle.math.ec.endo.EndoUtil$1 */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 implements PreCompCallback {
        final /* synthetic */ ECPoint val$p;

        AnonymousClass1(ECPoint p2) {
            p = p2;
        }

        @Override // com.android.internal.org.bouncycastle.math.ec.PreCompCallback
        public PreCompInfo precompute(PreCompInfo existing) {
            EndoPreCompInfo existingEndo = existing instanceof EndoPreCompInfo ? (EndoPreCompInfo) existing : null;
            if (checkExisting(existingEndo, ECEndomorphism.this)) {
                return existingEndo;
            }
            ECPoint mappedPoint = ECEndomorphism.this.getPointMap().map(p);
            EndoPreCompInfo result = new EndoPreCompInfo();
            result.setEndomorphism(ECEndomorphism.this);
            result.setMappedPoint(mappedPoint);
            return result;
        }

        private boolean checkExisting(EndoPreCompInfo existingEndo, ECEndomorphism endomorphism2) {
            return (existingEndo == null || existingEndo.getEndomorphism() != endomorphism2 || existingEndo.getMappedPoint() == null) ? false : true;
        }
    }

    private static BigInteger calculateB(BigInteger k, BigInteger g, int t) {
        boolean negative = g.signum() < 0;
        BigInteger b = k.multiply(g.abs());
        boolean extra = b.testBit(t - 1);
        BigInteger b2 = b.shiftRight(t);
        if (extra) {
            b2 = b2.add(ECConstants.ONE);
        }
        return negative ? b2.negate() : b2;
    }
}
