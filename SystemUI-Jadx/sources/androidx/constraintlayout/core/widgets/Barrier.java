package androidx.constraintlayout.core.widgets;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Barrier extends HelperWidget {
    public int mBarrierType = 0;
    public boolean mAllowsGoneWidget = true;
    public int mMargin = 0;
    public boolean resolved = false;

    public Barrier() {
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void addToSolver(LinearSystem linearSystem, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        int i2;
        int i3;
        int i4;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor = this.mLeft;
        constraintAnchorArr[0] = constraintAnchor;
        int i5 = 2;
        ConstraintAnchor constraintAnchor2 = this.mTop;
        constraintAnchorArr[2] = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = this.mRight;
        constraintAnchorArr[1] = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = this.mBottom;
        constraintAnchorArr[3] = constraintAnchor4;
        for (ConstraintAnchor constraintAnchor5 : constraintAnchorArr) {
            constraintAnchor5.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor5);
        }
        int i6 = this.mBarrierType;
        if (i6 >= 0 && i6 < 4) {
            ConstraintAnchor constraintAnchor6 = constraintAnchorArr[i6];
            if (!this.resolved) {
                allSolved();
            }
            if (this.resolved) {
                this.resolved = false;
                int i7 = this.mBarrierType;
                if (i7 != 0 && i7 != 1) {
                    if (i7 == 2 || i7 == 3) {
                        linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mY);
                        linearSystem.addEquality(constraintAnchor4.mSolverVariable, this.mY);
                        return;
                    }
                    return;
                }
                linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mX);
                linearSystem.addEquality(constraintAnchor3.mSolverVariable, this.mX);
                return;
            }
            for (int i8 = 0; i8 < this.mWidgetsCount; i8++) {
                ConstraintWidget constraintWidget = this.mWidgets[i8];
                if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i4 = this.mBarrierType) == 0 || i4 == 1) && constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || ((i4 == 2 || i4 == 3) && constraintWidget.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
            if (!constraintAnchor.hasCenteredDependents() && !constraintAnchor3.hasCenteredDependents()) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (!constraintAnchor2.hasCenteredDependents() && !constraintAnchor4.hasCenteredDependents()) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (!z2 && (((i3 = this.mBarrierType) == 0 && z3) || ((i3 == 2 && z4) || ((i3 == 1 && z3) || (i3 == 3 && z4))))) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (!z5) {
                i = 4;
            } else {
                i = 5;
            }
            int i9 = 0;
            while (i9 < this.mWidgetsCount) {
                ConstraintWidget constraintWidget2 = this.mWidgets[i9];
                if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                    SolverVariable createObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                    int i10 = this.mBarrierType;
                    ConstraintAnchor constraintAnchor7 = constraintWidget2.mListAnchors[i10];
                    constraintAnchor7.mSolverVariable = createObjectVariable;
                    ConstraintAnchor constraintAnchor8 = constraintAnchor7.mTarget;
                    if (constraintAnchor8 != null && constraintAnchor8.mOwner == this) {
                        i2 = constraintAnchor7.mMargin + 0;
                    } else {
                        i2 = 0;
                    }
                    if (i10 != 0 && i10 != i5) {
                        SolverVariable solverVariable = constraintAnchor6.mSolverVariable;
                        int i11 = this.mMargin + i2;
                        ArrayRow createRow = linearSystem.createRow();
                        SolverVariable createSlackVariable = linearSystem.createSlackVariable();
                        createSlackVariable.strength = 0;
                        createRow.createRowGreaterThan(solverVariable, createObjectVariable, createSlackVariable, i11);
                        linearSystem.addConstraint(createRow);
                    } else {
                        SolverVariable solverVariable2 = constraintAnchor6.mSolverVariable;
                        int i12 = this.mMargin - i2;
                        ArrayRow createRow2 = linearSystem.createRow();
                        SolverVariable createSlackVariable2 = linearSystem.createSlackVariable();
                        createSlackVariable2.strength = 0;
                        createRow2.createRowLowerThan(solverVariable2, createObjectVariable, createSlackVariable2, i12);
                        linearSystem.addConstraint(createRow2);
                    }
                    linearSystem.addEquality(constraintAnchor6.mSolverVariable, createObjectVariable, this.mMargin + i2, i);
                }
                i9++;
                i5 = 2;
            }
            int i13 = this.mBarrierType;
            if (i13 == 0) {
                linearSystem.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor.mSolverVariable, 0, 8);
                linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
                linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 0);
                return;
            }
            if (i13 == 1) {
                linearSystem.addEquality(constraintAnchor.mSolverVariable, constraintAnchor3.mSolverVariable, 0, 8);
                linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
                linearSystem.addEquality(constraintAnchor.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 0);
            } else if (i13 == 2) {
                linearSystem.addEquality(constraintAnchor4.mSolverVariable, constraintAnchor2.mSolverVariable, 0, 8);
                linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
                linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 0);
            } else if (i13 == 3) {
                linearSystem.addEquality(constraintAnchor2.mSolverVariable, constraintAnchor4.mSolverVariable, 0, 8);
                linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
                linearSystem.addEquality(constraintAnchor2.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 0);
            }
        }
    }

    public final boolean allSolved() {
        int i;
        int i2;
        int i3;
        boolean z = true;
        int i4 = 0;
        while (true) {
            i = this.mWidgetsCount;
            if (i4 >= i) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i4];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i2 = this.mBarrierType) == 0 || i2 == 1) && !constraintWidget.isResolvedHorizontally()) || (((i3 = this.mBarrierType) == 2 || i3 == 3) && !constraintWidget.isResolvedVertically()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.mWidgetsCount; i6++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i6];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                if (!z2) {
                    int i7 = this.mBarrierType;
                    if (i7 == 0) {
                        i5 = constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue();
                    } else if (i7 == 1) {
                        i5 = constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue();
                    } else if (i7 == 2) {
                        i5 = constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue();
                    } else if (i7 == 3) {
                        i5 = constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue();
                    }
                    z2 = true;
                }
                int i8 = this.mBarrierType;
                if (i8 == 0) {
                    i5 = Math.min(i5, constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue());
                } else if (i8 == 1) {
                    i5 = Math.max(i5, constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue());
                } else if (i8 == 2) {
                    i5 = Math.min(i5, constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue());
                } else if (i8 == 3) {
                    i5 = Math.max(i5, constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue());
                }
            }
        }
        int i9 = i5 + this.mMargin;
        int i10 = this.mBarrierType;
        if (i10 != 0 && i10 != 1) {
            setFinalVertical(i9, i9);
        } else {
            setFinalHorizontal(i9, i9);
        }
        this.resolved = true;
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean allowedInBarrier() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void copy(ConstraintWidget constraintWidget, HashMap hashMap) {
        super.copy(constraintWidget, hashMap);
        Barrier barrier = (Barrier) constraintWidget;
        this.mBarrierType = barrier.mBarrierType;
        this.mAllowsGoneWidget = barrier.mAllowsGoneWidget;
        this.mMargin = barrier.mMargin;
    }

    public final int getOrientation() {
        int i = this.mBarrierType;
        if (i != 0 && i != 1) {
            if (i == 2 || i == 3) {
                return 1;
            }
            return -1;
        }
        return 0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean isResolvedHorizontally() {
        return this.resolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean isResolvedVertically() {
        return this.resolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final String toString() {
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("[Barrier] "), this.mDebugName, " {");
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (i > 0) {
                m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, ", ");
            }
            StringBuilder m2 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(m);
            m2.append(constraintWidget.mDebugName);
            m = m2.toString();
        }
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, "}");
    }

    public Barrier(String str) {
        this.mDebugName = str;
    }
}
