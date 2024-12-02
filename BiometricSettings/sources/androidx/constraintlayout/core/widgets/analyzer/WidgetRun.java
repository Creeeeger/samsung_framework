package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour mDimensionBehavior;
    RunGroup mRunGroup;
    ConstraintWidget mWidget;
    public int matchConstraintsType;
    DimensionDependency mDimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean mResolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    enum RunType {
        NONE,
        /* JADX INFO: Fake field, exist only in values array */
        EF1,
        /* JADX INFO: Fake field, exist only in values array */
        EF2,
        CENTER;

        RunType() {
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.mWidget = constraintWidget;
    }

    protected static void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        ((ArrayList) dependencyNode.mTargets).add(dependencyNode2);
        dependencyNode.mMargin = i;
        ((ArrayList) dependencyNode2.mDependencies).add(dependencyNode);
    }

    protected static DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        int ordinal = constraintAnchor2.mType.ordinal();
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        if (ordinal == 1) {
            return constraintWidget.mHorizontalRun.start;
        }
        if (ordinal == 2) {
            return constraintWidget.mVerticalRun.start;
        }
        if (ordinal == 3) {
            return constraintWidget.mHorizontalRun.end;
        }
        if (ordinal == 4) {
            return constraintWidget.mVerticalRun.end;
        }
        if (ordinal != 5) {
            return null;
        }
        return constraintWidget.mVerticalRun.baseline;
    }

    abstract void apply();

    abstract void applyToWidget();

    abstract void clear();

    protected final int getLimitedDimension(int i, int i2) {
        int max;
        if (i2 == 0) {
            ConstraintWidget constraintWidget = this.mWidget;
            int i3 = constraintWidget.mMatchConstraintMaxWidth;
            max = Math.max(constraintWidget.mMatchConstraintMinWidth, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max == i) {
                return i;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.mWidget;
            int i4 = constraintWidget2.mMatchConstraintMaxHeight;
            max = Math.max(constraintWidget2.mMatchConstraintMinHeight, i);
            if (i4 > 0) {
                max = Math.min(i4, i);
            }
            if (max == i) {
                return i;
            }
        }
        return max;
    }

    public long getWrapDimension() {
        if (this.mDimension.resolved) {
            return r2.value;
        }
        return 0L;
    }

    public final boolean isResolved() {
        return this.mResolved;
    }

    abstract boolean supportsWrapComputation();

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        if (r10.matchConstraintsType == 3) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void updateRunCenter(androidx.constraintlayout.core.widgets.ConstraintAnchor r13, androidx.constraintlayout.core.widgets.ConstraintAnchor r14, int r15) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.WidgetRun.updateRunCenter(androidx.constraintlayout.core.widgets.ConstraintAnchor, androidx.constraintlayout.core.widgets.ConstraintAnchor, int):void");
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        ((ArrayList) dependencyNode.mTargets).add(dependencyNode2);
        ((ArrayList) dependencyNode.mTargets).add(this.mDimension);
        dependencyNode.mMarginFactor = i;
        dependencyNode.mMarginDependency = dimensionDependency;
        ((ArrayList) dependencyNode2.mDependencies).add(dependencyNode);
        ((ArrayList) dimensionDependency.mDependencies).add(dependencyNode);
    }

    protected static DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = i == 0 ? constraintWidget.mHorizontalRun : constraintWidget.mVerticalRun;
        int ordinal = constraintAnchor2.mType.ordinal();
        if (ordinal == 1 || ordinal == 2) {
            return widgetRun.start;
        }
        if (ordinal == 3 || ordinal == 4) {
            return widgetRun.end;
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }
}
