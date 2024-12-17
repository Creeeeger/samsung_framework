package org.apache.commons.math.distribution;

import java.io.Serializable;
import org.apache.commons.math.FunctionEvaluationException;
import org.apache.commons.math.MathException;
import org.apache.commons.math.exception.util.LocalizedFormats;
import org.apache.commons.math.random.RandomDataImpl;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class AbstractContinuousDistribution extends AbstractDistribution implements Serializable {
    private static final long serialVersionUID = -38038050983108802L;
    protected final RandomDataImpl randomData = new RandomDataImpl();
    private double solverAbsoluteAccuracy = 1.0E-6d;

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    /* renamed from: org.apache.commons.math.distribution.AbstractContinuousDistribution$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public final /* synthetic */ double val$p;

        public AnonymousClass1(double d) {
            this.val$p = d;
        }

        public final double value(double d) {
            try {
                double cumulativeProbability = ((BetaDistributionImpl) AbstractContinuousDistribution.this).cumulativeProbability(d);
                double d2 = this.val$p;
                double d3 = cumulativeProbability - d2;
                if (Double.isNaN(d3)) {
                    throw new FunctionEvaluationException(d, LocalizedFormats.CUMULATIVE_PROBABILITY_RETURNED_NAN, Double.valueOf(d), Double.valueOf(d2));
                }
                return d3;
            } catch (MathException e) {
                throw new FunctionEvaluationException(d, null, e.getGeneralPattern(), e.getArguments());
            }
        }
    }

    public final void reseedRandomGenerator(long j) {
        this.randomData.reSeed(j);
    }

    public final double sample() {
        return this.randomData.nextInversionDeviate(this);
    }
}
