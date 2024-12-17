package org.apache.commons.math.distribution;

import org.apache.commons.math.special.Beta;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public class BetaDistributionImpl extends AbstractContinuousDistribution {
    private static final long serialVersionUID = -1221965979403477668L;
    private double alpha = 50.0d;
    private double beta = 1.0d;
    private double z = Double.NaN;
    private final double solverAbsoluteAccuracy = 1.0E-9d;

    public final double cumulativeProbability(double d) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        if (d >= 1.0d) {
            return 1.0d;
        }
        return Beta.regularizedBeta(d, this.alpha, this.beta);
    }

    public final double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }
}
