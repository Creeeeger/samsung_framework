package org.apache.commons.math.analysis.solvers;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class UnivariateRealSolverUtils {
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
    
        return new double[]{r8, r10};
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0032, code lost:
    
        if (java.lang.Double.doubleToRawLongBits(r10) == Long.MIN_VALUE) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static double[] bracket(org.apache.commons.math.distribution.AbstractContinuousDistribution.AnonymousClass1 r25, double r26) {
        /*
            r0 = r25
            r1 = 1
            r2 = 0
            r3 = 0
            int r5 = (r26 > r3 ? 1 : (r26 == r3 ? 0 : -1))
            r6 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            if (r5 < 0) goto L8e
            int r5 = (r26 > r6 ? 1 : (r26 == r6 ? 0 : -1))
            if (r5 > 0) goto L8e
            r8 = r26
            r10 = r8
            r5 = r2
        L14:
            double r8 = r8 - r6
            double r8 = org.apache.commons.math.util.FastMath.max(r8, r3)
            double r10 = r10 + r6
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 <= 0) goto L20
        L1e:
            r10 = r6
            goto L34
        L20:
            int r13 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r13 >= 0) goto L25
            goto L34
        L25:
            if (r12 == 0) goto L2a
            r10 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            goto L34
        L2a:
            long r12 = java.lang.Double.doubleToRawLongBits(r10)
            r14 = -9223372036854775808
            int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r12 != 0) goto L1e
        L34:
            double r12 = r0.value(r8)
            double r14 = r0.value(r10)
            int r5 = r5 + r1
            double r16 = r12 * r14
            int r16 = (r16 > r3 ? 1 : (r16 == r3 ? 0 : -1))
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r16 <= 0) goto L53
            if (r5 >= r1) goto L53
            int r18 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r18 > 0) goto L51
            int r18 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r18 < 0) goto L51
            goto L53
        L51:
            r1 = 1
            goto L14
        L53:
            if (r16 > 0) goto L5e
            r0 = 2
            double[] r0 = new double[r0]
            r0[r2] = r8
            r1 = 1
            r0[r1] = r10
            return r0
        L5e:
            org.apache.commons.math.ConvergenceException r0 = new org.apache.commons.math.ConvergenceException
            org.apache.commons.math.exception.util.LocalizedFormats r2 = org.apache.commons.math.exception.util.LocalizedFormats.FAILED_BRACKETING
            java.lang.Integer r16 = java.lang.Integer.valueOf(r5)
            java.lang.Integer r17 = java.lang.Integer.valueOf(r1)
            java.lang.Double r18 = java.lang.Double.valueOf(r26)
            java.lang.Double r19 = java.lang.Double.valueOf(r3)
            java.lang.Double r20 = java.lang.Double.valueOf(r6)
            java.lang.Double r21 = java.lang.Double.valueOf(r8)
            java.lang.Double r22 = java.lang.Double.valueOf(r10)
            java.lang.Double r23 = java.lang.Double.valueOf(r12)
            java.lang.Double r24 = java.lang.Double.valueOf(r14)
            java.lang.Object[] r1 = new java.lang.Object[]{r16, r17, r18, r19, r20, r21, r22, r23, r24}
            r0.<init>(r2, r1)
            throw r0
        L8e:
            org.apache.commons.math.exception.util.LocalizedFormats r0 = org.apache.commons.math.exception.util.LocalizedFormats.INVALID_BRACKETING_PARAMETERS
            java.lang.Double r1 = java.lang.Double.valueOf(r3)
            java.lang.Double r2 = java.lang.Double.valueOf(r26)
            java.lang.Double r3 = java.lang.Double.valueOf(r6)
            java.lang.Object[] r1 = new java.lang.Object[]{r1, r2, r3}
            java.lang.IllegalArgumentException r0 = org.apache.commons.math.MathRuntimeException.createIllegalArgumentException(r0, r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math.analysis.solvers.UnivariateRealSolverUtils.bracket(org.apache.commons.math.distribution.AbstractContinuousDistribution$1, double):double[]");
    }
}
