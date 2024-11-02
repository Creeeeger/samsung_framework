package com.android.internal.org.bouncycastle.math.ec;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class ValidityPrecompInfo implements PreCompInfo {
    static final String PRECOMP_NAME = "bc_validity";
    private boolean failed = false;
    private boolean curveEquationPassed = false;
    private boolean orderPassed = false;

    public boolean hasFailed() {
        return this.failed;
    }

    public void reportFailed() {
        this.failed = true;
    }

    public boolean hasCurveEquationPassed() {
        return this.curveEquationPassed;
    }

    public void reportCurveEquationPassed() {
        this.curveEquationPassed = true;
    }

    public boolean hasOrderPassed() {
        return this.orderPassed;
    }

    public void reportOrderPassed() {
        this.orderPassed = true;
    }
}
