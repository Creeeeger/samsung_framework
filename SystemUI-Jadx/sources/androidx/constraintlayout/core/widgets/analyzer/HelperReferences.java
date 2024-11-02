package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HelperReferences extends WidgetRun {
    public HelperReferences(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    public final void addDependency(DependencyNode dependencyNode) {
        DependencyNode dependencyNode2 = this.start;
        ((ArrayList) dependencyNode2.dependencies).add(dependencyNode);
        ((ArrayList) dependencyNode.targets).add(dependencyNode2);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void apply() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget instanceof Barrier) {
            DependencyNode dependencyNode = this.start;
            dependencyNode.delegateToWidgetRun = true;
            Barrier barrier = (Barrier) constraintWidget;
            int i = barrier.mBarrierType;
            boolean z = barrier.mAllowsGoneWidget;
            int i2 = 0;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            dependencyNode.type = DependencyNode.Type.BOTTOM;
                            while (i2 < barrier.mWidgetsCount) {
                                ConstraintWidget constraintWidget2 = barrier.mWidgets[i2];
                                if (z || constraintWidget2.mVisibility != 8) {
                                    DependencyNode dependencyNode2 = constraintWidget2.verticalRun.end;
                                    ((ArrayList) dependencyNode2.dependencies).add(dependencyNode);
                                    ((ArrayList) dependencyNode.targets).add(dependencyNode2);
                                }
                                i2++;
                            }
                            addDependency(this.widget.verticalRun.start);
                            addDependency(this.widget.verticalRun.end);
                            return;
                        }
                        return;
                    }
                    dependencyNode.type = DependencyNode.Type.TOP;
                    while (i2 < barrier.mWidgetsCount) {
                        ConstraintWidget constraintWidget3 = barrier.mWidgets[i2];
                        if (z || constraintWidget3.mVisibility != 8) {
                            DependencyNode dependencyNode3 = constraintWidget3.verticalRun.start;
                            ((ArrayList) dependencyNode3.dependencies).add(dependencyNode);
                            ((ArrayList) dependencyNode.targets).add(dependencyNode3);
                        }
                        i2++;
                    }
                    addDependency(this.widget.verticalRun.start);
                    addDependency(this.widget.verticalRun.end);
                    return;
                }
                dependencyNode.type = DependencyNode.Type.RIGHT;
                while (i2 < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget4 = barrier.mWidgets[i2];
                    if (z || constraintWidget4.mVisibility != 8) {
                        DependencyNode dependencyNode4 = constraintWidget4.horizontalRun.end;
                        ((ArrayList) dependencyNode4.dependencies).add(dependencyNode);
                        ((ArrayList) dependencyNode.targets).add(dependencyNode4);
                    }
                    i2++;
                }
                addDependency(this.widget.horizontalRun.start);
                addDependency(this.widget.horizontalRun.end);
                return;
            }
            dependencyNode.type = DependencyNode.Type.LEFT;
            while (i2 < barrier.mWidgetsCount) {
                ConstraintWidget constraintWidget5 = barrier.mWidgets[i2];
                if (z || constraintWidget5.mVisibility != 8) {
                    DependencyNode dependencyNode5 = constraintWidget5.horizontalRun.start;
                    ((ArrayList) dependencyNode5.dependencies).add(dependencyNode);
                    ((ArrayList) dependencyNode.targets).add(dependencyNode5);
                }
                i2++;
            }
            addDependency(this.widget.horizontalRun.start);
            addDependency(this.widget.horizontalRun.end);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void applyToWidget() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget instanceof Barrier) {
            int i = ((Barrier) constraintWidget).mBarrierType;
            DependencyNode dependencyNode = this.start;
            if (i != 0 && i != 1) {
                constraintWidget.mY = dependencyNode.value;
            } else {
                constraintWidget.mX = dependencyNode.value;
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void clear() {
        this.runGroup = null;
        this.start.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean supportsWrapComputation() {
        return false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void update(Dependency dependency) {
        Barrier barrier = (Barrier) this.widget;
        int i = barrier.mBarrierType;
        DependencyNode dependencyNode = this.start;
        Iterator it = ((ArrayList) dependencyNode.targets).iterator();
        int i2 = 0;
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = ((DependencyNode) it.next()).value;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (i != 0 && i != 2) {
            dependencyNode.resolve(i2 + barrier.mMargin);
        } else {
            dependencyNode.resolve(i3 + barrier.mMargin);
        }
    }
}
