package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class HorizontalWidgetRun extends WidgetRun {
    private static int[] sTempDimensions = new int[2];

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.start.mType = DependencyNode.Type.LEFT;
        this.end.mType = DependencyNode.Type.RIGHT;
        this.orientation = 0;
    }

    private static void computeInsetRatio(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    final void apply() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget constraintWidget5 = this.mWidget;
        if (constraintWidget5.measured) {
            this.mDimension.resolve(constraintWidget5.getWidth());
        }
        DimensionDependency dimensionDependency = this.mDimension;
        boolean z = dimensionDependency.resolved;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (!z) {
            ConstraintWidget constraintWidget6 = this.mWidget;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = constraintWidget6.mListDimensionBehaviors[0];
            this.mDimensionBehavior = dimensionBehaviour6;
            if (dimensionBehaviour6 != dimensionBehaviour3) {
                if (dimensionBehaviour6 == dimensionBehaviour4 && (constraintWidget4 = constraintWidget6.mParent) != null && ((dimensionBehaviour2 = constraintWidget4.mListDimensionBehaviors[0]) == dimensionBehaviour5 || dimensionBehaviour2 == dimensionBehaviour4)) {
                    int width = (constraintWidget4.getWidth() - this.mWidget.mLeft.getMargin()) - this.mWidget.mRight.getMargin();
                    WidgetRun.addTarget(this.start, constraintWidget4.mHorizontalRun.start, this.mWidget.mLeft.getMargin());
                    WidgetRun.addTarget(this.end, constraintWidget4.mHorizontalRun.end, -this.mWidget.mRight.getMargin());
                    this.mDimension.resolve(width);
                    return;
                }
                if (dimensionBehaviour6 == dimensionBehaviour5) {
                    dimensionDependency.resolve(constraintWidget6.getWidth());
                }
            }
        } else if (this.mDimensionBehavior == dimensionBehaviour4 && (constraintWidget2 = (constraintWidget = this.mWidget).mParent) != null && ((dimensionBehaviour = constraintWidget2.mListDimensionBehaviors[0]) == dimensionBehaviour5 || dimensionBehaviour == dimensionBehaviour4)) {
            WidgetRun.addTarget(this.start, constraintWidget2.mHorizontalRun.start, constraintWidget.mLeft.getMargin());
            WidgetRun.addTarget(this.end, constraintWidget2.mHorizontalRun.end, -this.mWidget.mRight.getMargin());
            return;
        }
        DimensionDependency dimensionDependency2 = this.mDimension;
        if (dimensionDependency2.resolved) {
            ConstraintWidget constraintWidget7 = this.mWidget;
            if (constraintWidget7.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget7.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[1].mTarget != null) {
                    if (constraintWidget7.isInHorizontalChain()) {
                        this.start.mMargin = this.mWidget.mListAnchors[0].getMargin();
                        this.end.mMargin = -this.mWidget.mListAnchors[1].getMargin();
                        return;
                    }
                    DependencyNode target = WidgetRun.getTarget(this.mWidget.mListAnchors[0]);
                    if (target != null) {
                        WidgetRun.addTarget(this.start, target, this.mWidget.mListAnchors[0].getMargin());
                    }
                    DependencyNode target2 = WidgetRun.getTarget(this.mWidget.mListAnchors[1]);
                    if (target2 != null) {
                        WidgetRun.addTarget(this.end, target2, -this.mWidget.mListAnchors[1].getMargin());
                    }
                    this.start.delegateToWidgetRun = true;
                    this.end.delegateToWidgetRun = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode target3 = WidgetRun.getTarget(constraintAnchor);
                    if (target3 != null) {
                        WidgetRun.addTarget(this.start, target3, this.mWidget.mListAnchors[0].getMargin());
                        WidgetRun.addTarget(this.end, this.start, this.mDimension.value);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.mTarget != null) {
                    DependencyNode target4 = WidgetRun.getTarget(constraintAnchor3);
                    if (target4 != null) {
                        WidgetRun.addTarget(this.end, target4, -this.mWidget.mListAnchors[1].getMargin());
                        WidgetRun.addTarget(this.start, this.end, -this.mDimension.value);
                        return;
                    }
                    return;
                }
                if ((constraintWidget7 instanceof Helper) || constraintWidget7.mParent == null || constraintWidget7.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                }
                ConstraintWidget constraintWidget8 = this.mWidget;
                WidgetRun.addTarget(this.start, constraintWidget8.mParent.mHorizontalRun.start, constraintWidget8.getX());
                WidgetRun.addTarget(this.end, this.start, this.mDimension.value);
                return;
            }
        }
        if (this.mDimensionBehavior == dimensionBehaviour3) {
            ConstraintWidget constraintWidget9 = this.mWidget;
            int i = constraintWidget9.mMatchConstraintDefaultWidth;
            if (i == 2) {
                ConstraintWidget constraintWidget10 = constraintWidget9.mParent;
                if (constraintWidget10 != null) {
                    DimensionDependency dimensionDependency3 = constraintWidget10.mVerticalRun.mDimension;
                    ((ArrayList) dimensionDependency2.mTargets).add(dimensionDependency3);
                    ((ArrayList) dimensionDependency3.mDependencies).add(this.mDimension);
                    DimensionDependency dimensionDependency4 = this.mDimension;
                    dimensionDependency4.delegateToWidgetRun = true;
                    ((ArrayList) dimensionDependency4.mDependencies).add(this.start);
                    ((ArrayList) this.mDimension.mDependencies).add(this.end);
                }
            } else if (i == 3) {
                if (constraintWidget9.mMatchConstraintDefaultHeight == 3) {
                    this.start.updateDelegate = this;
                    this.end.updateDelegate = this;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget9.mVerticalRun;
                    verticalWidgetRun.start.updateDelegate = this;
                    verticalWidgetRun.end.updateDelegate = this;
                    dimensionDependency2.updateDelegate = this;
                    if (constraintWidget9.isInVerticalChain()) {
                        ((ArrayList) this.mDimension.mTargets).add(this.mWidget.mVerticalRun.mDimension);
                        ((ArrayList) this.mWidget.mVerticalRun.mDimension.mDependencies).add(this.mDimension);
                        VerticalWidgetRun verticalWidgetRun2 = this.mWidget.mVerticalRun;
                        verticalWidgetRun2.mDimension.updateDelegate = this;
                        ((ArrayList) this.mDimension.mTargets).add(verticalWidgetRun2.start);
                        ((ArrayList) this.mDimension.mTargets).add(this.mWidget.mVerticalRun.end);
                        ((ArrayList) this.mWidget.mVerticalRun.start.mDependencies).add(this.mDimension);
                        ((ArrayList) this.mWidget.mVerticalRun.end.mDependencies).add(this.mDimension);
                    } else if (this.mWidget.isInHorizontalChain()) {
                        ((ArrayList) this.mWidget.mVerticalRun.mDimension.mTargets).add(this.mDimension);
                        ((ArrayList) this.mDimension.mDependencies).add(this.mWidget.mVerticalRun.mDimension);
                    } else {
                        ((ArrayList) this.mWidget.mVerticalRun.mDimension.mTargets).add(this.mDimension);
                    }
                } else {
                    DimensionDependency dimensionDependency5 = constraintWidget9.mVerticalRun.mDimension;
                    ((ArrayList) dimensionDependency2.mTargets).add(dimensionDependency5);
                    ((ArrayList) dimensionDependency5.mDependencies).add(this.mDimension);
                    ((ArrayList) this.mWidget.mVerticalRun.start.mDependencies).add(this.mDimension);
                    ((ArrayList) this.mWidget.mVerticalRun.end.mDependencies).add(this.mDimension);
                    DimensionDependency dimensionDependency6 = this.mDimension;
                    dimensionDependency6.delegateToWidgetRun = true;
                    ((ArrayList) dimensionDependency6.mDependencies).add(this.start);
                    ((ArrayList) this.mDimension.mDependencies).add(this.end);
                    ((ArrayList) this.start.mTargets).add(this.mDimension);
                    ((ArrayList) this.end.mTargets).add(this.mDimension);
                }
            }
        }
        ConstraintWidget constraintWidget11 = this.mWidget;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget11.mListAnchors;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].mTarget != null) {
            if (constraintWidget11.isInHorizontalChain()) {
                this.start.mMargin = this.mWidget.mListAnchors[0].getMargin();
                this.end.mMargin = -this.mWidget.mListAnchors[1].getMargin();
                return;
            }
            DependencyNode target5 = WidgetRun.getTarget(this.mWidget.mListAnchors[0]);
            DependencyNode target6 = WidgetRun.getTarget(this.mWidget.mListAnchors[1]);
            if (target5 != null) {
                target5.addDependency(this);
            }
            if (target6 != null) {
                target6.addDependency(this);
            }
            this.mRunType = WidgetRun.RunType.CENTER;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode target7 = WidgetRun.getTarget(constraintAnchor4);
            if (target7 != null) {
                WidgetRun.addTarget(this.start, target7, this.mWidget.mListAnchors[0].getMargin());
                addTarget(this.end, this.start, 1, this.mDimension);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.mTarget != null) {
            DependencyNode target8 = WidgetRun.getTarget(constraintAnchor6);
            if (target8 != null) {
                WidgetRun.addTarget(this.end, target8, -this.mWidget.mListAnchors[1].getMargin());
                addTarget(this.start, this.end, -1, this.mDimension);
                return;
            }
            return;
        }
        if ((constraintWidget11 instanceof Helper) || (constraintWidget3 = constraintWidget11.mParent) == null) {
            return;
        }
        WidgetRun.addTarget(this.start, constraintWidget3.mHorizontalRun.start, constraintWidget11.getX());
        addTarget(this.end, this.start, 1, this.mDimension);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.mWidget.setX(dependencyNode.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    final void clear() {
        this.mRunGroup = null;
        this.start.clear();
        this.end.clear();
        this.mDimension.clear();
        this.mResolved = false;
    }

    final void reset() {
        this.mResolved = false;
        this.start.clear();
        this.start.resolved = false;
        this.end.clear();
        this.end.resolved = false;
        this.mDimension.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    final boolean supportsWrapComputation() {
        return this.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.mWidget.mMatchConstraintDefaultWidth == 0;
    }

    public final String toString() {
        return "HorizontalRun " + this.mWidget.getDebugName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0297, code lost:
    
        if (r4 != 1) goto L128;
     */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void update(androidx.constraintlayout.core.widgets.analyzer.Dependency r21) {
        /*
            Method dump skipped, instructions count: 1069
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun.update(androidx.constraintlayout.core.widgets.analyzer.Dependency):void");
    }
}
