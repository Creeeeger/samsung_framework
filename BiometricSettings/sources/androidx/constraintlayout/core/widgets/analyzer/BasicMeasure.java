package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class BasicMeasure {
    private ConstraintWidgetContainer mConstraintWidgetContainer;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>();
    private Measure mMeasure = new Measure();

    public static class Measure {
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measureStrategy;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    public interface Measurer {
        void didMeasures();

        void measure(ConstraintWidget constraintWidget, Measure measure);
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mConstraintWidgetContainer = constraintWidgetContainer;
    }

    private boolean measure(int i, ConstraintWidget constraintWidget, Measurer measurer) {
        Measure measure = this.mMeasure;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        measure.horizontalBehavior = dimensionBehaviourArr[0];
        measure.verticalBehavior = dimensionBehaviourArr[1];
        measure.horizontalDimension = constraintWidget.getWidth();
        this.mMeasure.verticalDimension = constraintWidget.getHeight();
        Measure measure2 = this.mMeasure;
        measure2.measuredNeedsSolverPass = false;
        measure2.measureStrategy = i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure2.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour == dimensionBehaviour2;
        boolean z2 = measure2.verticalBehavior == dimensionBehaviour2;
        boolean z3 = z && constraintWidget.mDimensionRatio > 0.0f;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > 0.0f;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (z3 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            measure2.horizontalBehavior = dimensionBehaviour3;
        }
        if (z4 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            measure2.verticalBehavior = dimensionBehaviour3;
        }
        measurer.measure(constraintWidget, measure2);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
        Measure measure3 = this.mMeasure;
        measure3.measureStrategy = 0;
        return measure3.measuredNeedsSolverPass;
    }

    private void solveLinearSystem(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3) {
        constraintWidgetContainer.getClass();
        int minWidth = constraintWidgetContainer.getMinWidth();
        int minHeight = constraintWidgetContainer.getMinHeight();
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setWidth(i2);
        constraintWidgetContainer.setHeight(i3);
        constraintWidgetContainer.setMinWidth(minWidth);
        constraintWidgetContainer.setMinHeight(minHeight);
        this.mConstraintWidgetContainer.setPass(i);
        this.mConstraintWidgetContainer.layout();
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01be A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void solverMeasure(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r23, int r24, int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 903
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.solverMeasure(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer, int, int, int, int, int):void");
    }

    public final void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        ArrayList<ConstraintWidget> arrayList = this.mVariableDimensionsWidgets;
        arrayList.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i);
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour == dimensionBehaviour2 || dimensionBehaviourArr[1] == dimensionBehaviour2) {
                arrayList.add(constraintWidget);
            }
        }
        constraintWidgetContainer.mDependencyGraph.invalidateGraph();
    }
}
