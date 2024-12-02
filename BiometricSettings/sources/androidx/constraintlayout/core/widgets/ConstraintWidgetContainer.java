package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ConstraintWidgetContainer extends WidgetContainer {
    int mPaddingLeft;
    int mPaddingTop;
    private int mPass;
    BasicMeasure mBasicMeasureSolver = new BasicMeasure(this);
    public DependencyGraph mDependencyGraph = new DependencyGraph(this);
    protected BasicMeasure.Measurer mMeasurer = null;
    private boolean mIsRtl = false;
    protected LinearSystem mSystem = new LinearSystem();
    public int mHorizontalChainsSize = 0;
    public int mVerticalChainsSize = 0;
    ChainHead[] mVerticalChainsArray = new ChainHead[4];
    ChainHead[] mHorizontalChainsArray = new ChainHead[4];
    private int mOptimizationLevel = 257;
    private boolean mWidthMeasuredTooSmall = false;
    private boolean mHeightMeasuredTooSmall = false;
    private WeakReference<ConstraintAnchor> mVerticalWrapMin = null;
    private WeakReference<ConstraintAnchor> mHorizontalWrapMin = null;
    private WeakReference<ConstraintAnchor> mVerticalWrapMax = null;
    private WeakReference<ConstraintAnchor> mHorizontalWrapMax = null;
    HashSet<ConstraintWidget> mWidgetsToAdd = new HashSet<>();
    public BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();

    final void addChain(int i, ConstraintWidget constraintWidget) {
        if (i == 0) {
            int i2 = this.mHorizontalChainsSize + 1;
            ChainHead[] chainHeadArr = this.mHorizontalChainsArray;
            if (i2 >= chainHeadArr.length) {
                this.mHorizontalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
            }
            ChainHead[] chainHeadArr2 = this.mHorizontalChainsArray;
            int i3 = this.mHorizontalChainsSize;
            chainHeadArr2[i3] = new ChainHead(constraintWidget, 0, this.mIsRtl);
            this.mHorizontalChainsSize = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.mVerticalChainsSize + 1;
            ChainHead[] chainHeadArr3 = this.mVerticalChainsArray;
            if (i4 >= chainHeadArr3.length) {
                this.mVerticalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr3, chainHeadArr3.length * 2);
            }
            ChainHead[] chainHeadArr4 = this.mVerticalChainsArray;
            int i5 = this.mVerticalChainsSize;
            chainHeadArr4[i5] = new ChainHead(constraintWidget, 1, this.mIsRtl);
            this.mVerticalChainsSize = i5 + 1;
        }
    }

    public final void addChildrenToSolver(LinearSystem linearSystem) {
        boolean z;
        boolean optimizeFor = optimizeFor(64);
        addToSolver(linearSystem, optimizeFor);
        int size = this.mChildren.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            constraintWidget.setInBarrier(0, false);
            constraintWidget.setInBarrier(1, false);
            if (constraintWidget instanceof Barrier) {
                z2 = true;
            }
        }
        if (z2) {
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i2);
                if (constraintWidget2 instanceof Barrier) {
                    ((Barrier) constraintWidget2).markWidgets();
                }
            }
        }
        this.mWidgetsToAdd.clear();
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i3);
            constraintWidget3.getClass();
            if ((constraintWidget3 instanceof VirtualLayout) || (constraintWidget3 instanceof Guideline)) {
                if (constraintWidget3 instanceof VirtualLayout) {
                    this.mWidgetsToAdd.add(constraintWidget3);
                } else {
                    constraintWidget3.addToSolver(linearSystem, optimizeFor);
                }
            }
        }
        while (this.mWidgetsToAdd.size() > 0) {
            int size2 = this.mWidgetsToAdd.size();
            Iterator<ConstraintWidget> it = this.mWidgetsToAdd.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                VirtualLayout virtualLayout = (VirtualLayout) it.next();
                HashSet<ConstraintWidget> hashSet = this.mWidgetsToAdd;
                int i4 = 0;
                while (true) {
                    if (i4 >= virtualLayout.mWidgetsCount) {
                        z = false;
                        break;
                    } else {
                        if (hashSet.contains(virtualLayout.mWidgets[i4])) {
                            z = true;
                            break;
                        }
                        i4++;
                    }
                }
                if (z) {
                    virtualLayout.addToSolver(linearSystem, optimizeFor);
                    this.mWidgetsToAdd.remove(virtualLayout);
                    break;
                }
            }
            if (size2 == this.mWidgetsToAdd.size()) {
                Iterator<ConstraintWidget> it2 = this.mWidgetsToAdd.iterator();
                while (it2.hasNext()) {
                    it2.next().addToSolver(linearSystem, optimizeFor);
                }
                this.mWidgetsToAdd.clear();
            }
        }
        boolean z3 = LinearSystem.USE_DEPENDENCY_ORDERING;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (z3) {
            HashSet<ConstraintWidget> hashSet2 = new HashSet<>();
            for (int i5 = 0; i5 < size; i5++) {
                ConstraintWidget constraintWidget4 = this.mChildren.get(i5);
                constraintWidget4.getClass();
                if (!((constraintWidget4 instanceof VirtualLayout) || (constraintWidget4 instanceof Guideline))) {
                    hashSet2.add(constraintWidget4);
                }
            }
            addChildrenToSolverByDependency(this, linearSystem, hashSet2, this.mListDimensionBehaviors[0] == dimensionBehaviour ? 0 : 1, false);
            Iterator<ConstraintWidget> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                ConstraintWidget next = it3.next();
                Optimizer.checkMatchParent(this, linearSystem, next);
                next.addToSolver(linearSystem, optimizeFor);
            }
        } else {
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget5 = this.mChildren.get(i6);
                if (constraintWidget5 instanceof ConstraintWidgetContainer) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.mListDimensionBehaviors;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    if (dimensionBehaviour2 == dimensionBehaviour) {
                        constraintWidget5.setHorizontalDimensionBehaviour(dimensionBehaviour4);
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour) {
                        constraintWidget5.setVerticalDimensionBehaviour(dimensionBehaviour4);
                    }
                    constraintWidget5.addToSolver(linearSystem, optimizeFor);
                    if (dimensionBehaviour2 == dimensionBehaviour) {
                        constraintWidget5.setHorizontalDimensionBehaviour(dimensionBehaviour2);
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour) {
                        constraintWidget5.setVerticalDimensionBehaviour(dimensionBehaviour3);
                    }
                } else {
                    Optimizer.checkMatchParent(this, linearSystem, constraintWidget5);
                    if (!((constraintWidget5 instanceof VirtualLayout) || (constraintWidget5 instanceof Guideline))) {
                        constraintWidget5.addToSolver(linearSystem, optimizeFor);
                    }
                }
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem, null, 0);
        }
        if (this.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem, null, 1);
        }
    }

    public final void addHorizontalWrapMaxVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.mHorizontalWrapMax;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.mHorizontalWrapMax.get().getFinalValue()) {
            this.mHorizontalWrapMax = new WeakReference<>(constraintAnchor);
        }
    }

    public final void addHorizontalWrapMinVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.mHorizontalWrapMin;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.mHorizontalWrapMin.get().getFinalValue()) {
            this.mHorizontalWrapMin = new WeakReference<>(constraintAnchor);
        }
    }

    final void addVerticalWrapMaxVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.mVerticalWrapMax;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.mVerticalWrapMax.get().getFinalValue()) {
            this.mVerticalWrapMax = new WeakReference<>(constraintAnchor);
        }
    }

    final void addVerticalWrapMinVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.mVerticalWrapMin;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.mVerticalWrapMin.get().getFinalValue()) {
            this.mVerticalWrapMin = new WeakReference<>(constraintAnchor);
        }
    }

    public final void fillMetrics() {
        this.mSystem.getClass();
    }

    public final BasicMeasure.Measurer getMeasurer() {
        return this.mMeasurer;
    }

    public final int getOptimizationLevel() {
        return this.mOptimizationLevel;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void getSceneString(StringBuilder sb) {
        sb.append(this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.mWidth);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.mHeight);
        sb.append("\n");
        Iterator<ConstraintWidget> it = this.mChildren.iterator();
        while (it.hasNext()) {
            it.next().getSceneString(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    public final LinearSystem getSystem() {
        return this.mSystem;
    }

    public final boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public final boolean isRtl() {
        return this.mIsRtl;
    }

    public final boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0259  */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v20 */
    @Override // androidx.constraintlayout.core.widgets.WidgetContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void layout() {
        /*
            Method dump skipped, instructions count: 891
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidgetContainer.layout():void");
    }

    public final void measure(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.mPaddingLeft = i8;
        this.mPaddingTop = i9;
        this.mBasicMeasureSolver.solverMeasure(this, i, i2, i3, i4, i5);
    }

    public final boolean optimizeFor(int i) {
        return (this.mOptimizationLevel & i) == i;
    }

    @Override // androidx.constraintlayout.core.widgets.WidgetContainer, androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        super.reset();
    }

    public final void setMeasurer(BasicMeasure.Measurer measurer) {
        this.mMeasurer = measurer;
        this.mDependencyGraph.setMeasurer(measurer);
    }

    public final void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
        LinearSystem.USE_DEPENDENCY_ORDERING = optimizeFor(512);
    }

    public final void setPass(int i) {
        this.mPass = i;
    }

    public final void setRtl(boolean z) {
        this.mIsRtl = z;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void updateFromRuns(boolean z, boolean z2) {
        super.updateFromRuns(z, z2);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            this.mChildren.get(i).updateFromRuns(z, z2);
        }
    }

    public final void updateHierarchy() {
        this.mBasicMeasureSolver.updateHierarchy(this);
    }

    public static void measure(ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, BasicMeasure.Measure measure) {
        int i;
        int i2;
        if (measurer == null) {
            return;
        }
        if (constraintWidget.getVisibility() != 8 && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier)) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
            measure.horizontalBehavior = dimensionBehaviourArr[0];
            measure.verticalBehavior = dimensionBehaviourArr[1];
            measure.horizontalDimension = constraintWidget.getWidth();
            measure.verticalDimension = constraintWidget.getHeight();
            measure.measuredNeedsSolverPass = false;
            measure.measureStrategy = 0;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z = dimensionBehaviour == dimensionBehaviour2;
            boolean z2 = measure.verticalBehavior == dimensionBehaviour2;
            boolean z3 = z && constraintWidget.mDimensionRatio > 0.0f;
            boolean z4 = z2 && constraintWidget.mDimensionRatio > 0.0f;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
            if (z && constraintWidget.hasDanglingDimension(0) && constraintWidget.mMatchConstraintDefaultWidth == 0 && !z3) {
                measure.horizontalBehavior = dimensionBehaviour3;
                if (z2 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    measure.horizontalBehavior = dimensionBehaviour4;
                }
                z = false;
            }
            if (z2 && constraintWidget.hasDanglingDimension(1) && constraintWidget.mMatchConstraintDefaultHeight == 0 && !z4) {
                measure.verticalBehavior = dimensionBehaviour3;
                if (z && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                    measure.verticalBehavior = dimensionBehaviour4;
                }
                z2 = false;
            }
            if (constraintWidget.isResolvedHorizontally()) {
                measure.horizontalBehavior = dimensionBehaviour4;
                z = false;
            }
            if (constraintWidget.isResolvedVertically()) {
                measure.verticalBehavior = dimensionBehaviour4;
                z2 = false;
            }
            if (z3) {
                if (constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
                    measure.horizontalBehavior = dimensionBehaviour4;
                } else if (!z2) {
                    if (measure.verticalBehavior == dimensionBehaviour4) {
                        i2 = measure.verticalDimension;
                    } else {
                        measure.horizontalBehavior = dimensionBehaviour3;
                        measurer.measure(constraintWidget, measure);
                        i2 = measure.measuredHeight;
                    }
                    measure.horizontalBehavior = dimensionBehaviour4;
                    measure.horizontalDimension = (int) (constraintWidget.mDimensionRatio * i2);
                }
            }
            if (z4) {
                if (constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
                    measure.verticalBehavior = dimensionBehaviour4;
                } else if (!z) {
                    if (measure.horizontalBehavior == dimensionBehaviour4) {
                        i = measure.horizontalDimension;
                    } else {
                        measure.verticalBehavior = dimensionBehaviour3;
                        measurer.measure(constraintWidget, measure);
                        i = measure.measuredWidth;
                    }
                    measure.verticalBehavior = dimensionBehaviour4;
                    if (constraintWidget.mDimensionRatioSide == -1) {
                        measure.verticalDimension = (int) (i / constraintWidget.mDimensionRatio);
                    } else {
                        measure.verticalDimension = (int) (constraintWidget.mDimensionRatio * i);
                    }
                }
            }
            measurer.measure(constraintWidget, measure);
            constraintWidget.setWidth(measure.measuredWidth);
            constraintWidget.setHeight(measure.measuredHeight);
            constraintWidget.setHasBaseline(measure.measuredHasBaseline);
            constraintWidget.setBaselineDistance(measure.measuredBaseline);
            measure.measureStrategy = 0;
            return;
        }
        measure.measuredWidth = 0;
        measure.measuredHeight = 0;
    }
}
