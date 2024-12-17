package org.apache.commons.math;

import org.apache.commons.math.exception.util.Localizable;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public class FunctionEvaluationException extends MathException {
    private static final long serialVersionUID = 1384427981840836868L;
    private double[] argument;

    public FunctionEvaluationException(double d, Localizable localizable, Object... objArr) {
        super(localizable, objArr);
        this.argument = new double[]{d};
    }
}
