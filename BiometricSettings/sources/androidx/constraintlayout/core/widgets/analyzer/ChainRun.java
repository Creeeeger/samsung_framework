package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ChainRun extends WidgetRun {
    private int mChainStyle;
    ArrayList<WidgetRun> mWidgets;

    public ChainRun(int i, ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.mWidgets = new ArrayList<>();
        this.orientation = i;
        ConstraintWidget constraintWidget2 = this.mWidget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(i);
        while (previousChainMember != null) {
            constraintWidget2 = previousChainMember;
            previousChainMember = previousChainMember.getPreviousChainMember(this.orientation);
        }
        this.mWidget = constraintWidget2;
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int i2 = this.orientation;
        arrayList.add(i2 == 0 ? constraintWidget2.mHorizontalRun : i2 == 1 ? constraintWidget2.mVerticalRun : null);
        ConstraintWidget nextChainMember = constraintWidget2.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            ArrayList<WidgetRun> arrayList2 = this.mWidgets;
            int i3 = this.orientation;
            arrayList2.add(i3 == 0 ? nextChainMember.mHorizontalRun : i3 == 1 ? nextChainMember.mVerticalRun : null);
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            int i4 = this.orientation;
            if (i4 == 0) {
                next.mWidget.horizontalChainRun = this;
            } else if (i4 == 1) {
                next.mWidget.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.mWidget.mParent).isRtl()) && this.mWidgets.size() > 1) {
            ArrayList<WidgetRun> arrayList3 = this.mWidgets;
            this.mWidget = arrayList3.get(arrayList3.size() - 1).mWidget;
        }
        this.mChainStyle = this.orientation == 0 ? this.mWidget.getHorizontalChainStyle() : this.mWidget.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.mWidgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.mWidgets.get(size);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    final void apply() {
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.mWidgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.mWidgets.get(0).mWidget;
        ConstraintWidget constraintWidget2 = this.mWidgets.get(size - 1).mWidget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = WidgetRun.getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                WidgetRun.addTarget(this.start, target, margin);
            }
            DependencyNode target2 = WidgetRun.getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                WidgetRun.addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = WidgetRun.getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                WidgetRun.addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = WidgetRun.getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                WidgetRun.addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void applyToWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            this.mWidgets.get(i).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    final void clear() {
        this.mRunGroup = null;
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final long getWrapDimension() {
        int size = this.mWidgets.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r4.end.mMargin + this.mWidgets.get(i).getWrapDimension() + j + r4.start.mMargin;
        }
        return j;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    final boolean supportsWrapComputation() {
        int size = this.mWidgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.mWidgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            sb.append("<");
            sb.append(next);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:287:0x03fd, code lost:
    
        r9 = r9 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e8  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void update(androidx.constraintlayout.core.widgets.analyzer.Dependency r28) {
        /*
            Method dump skipped, instructions count: 1060
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.ChainRun.update(androidx.constraintlayout.core.widgets.analyzer.Dependency):void");
    }
}
