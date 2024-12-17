package org.apache.commons.math;

import org.apache.commons.math.exception.util.LocalizedFormats;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public class MaxIterationsExceededException extends ConvergenceException {
    private static final long serialVersionUID = -7821226672760574694L;
    private final int maxIterations;

    public MaxIterationsExceededException() {
        super(LocalizedFormats.MAX_ITERATIONS_EXCEEDED, 100);
        this.maxIterations = 100;
    }

    public MaxIterationsExceededException(Object... objArr) {
        super(LocalizedFormats.NON_CONVERGENT_CONTINUED_FRACTION, objArr);
        this.maxIterations = Integer.MAX_VALUE;
    }
}
