package com.android.systemui.shade;

import com.android.systemui.Dependency;
import com.android.systemui.log.SecPanelLogger;
import com.android.systemui.log.SecPanelLoggerImpl;
import com.android.systemui.util.LogUtil;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeExpansionStateManager implements ShadeStateEvents {
    public float dragDownPxAmount;
    public boolean expanded;
    public float fraction;
    public boolean qsExpanded;
    public int state;
    public boolean tracking;
    public final CopyOnWriteArrayList expansionListeners = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList fullExpansionListeners = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList qsExpansionListeners = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList stateListeners = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList shadeStateEventsListeners = new CopyOnWriteArrayList();
    public final Lazy panelLogger$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.shade.ShadeExpansionStateManager$panelLogger$2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return (SecPanelLogger) Dependency.get(SecPanelLogger.class);
        }
    });
    public final StringBuilder logBuilder = new StringBuilder();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public final ShadeExpansionChangeEvent addExpansionListener(ShadeExpansionListener shadeExpansionListener) {
        this.expansionListeners.add(shadeExpansionListener);
        return new ShadeExpansionChangeEvent(this.fraction, this.expanded, this.tracking, this.dragDownPxAmount);
    }

    public final void addFullExpansionListener(ShadeFullExpansionListener shadeFullExpansionListener) {
        this.fullExpansionListeners.add(shadeFullExpansionListener);
        shadeFullExpansionListener.onShadeExpansionFullyChanged(this.qsExpanded);
    }

    public final void addQsExpansionListener(ShadeQsExpansionListener shadeQsExpansionListener) {
        this.qsExpansionListeners.add(shadeQsExpansionListener);
        shadeQsExpansionListener.onQsExpansionChanged(this.qsExpanded);
    }

    public final void updateStateInternal(int i) {
        String str;
        ShadeExpansionStateManagerKt.panelStateToString(this.state);
        ShadeExpansionStateManagerKt.panelStateToString(i);
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    str = "";
                } else {
                    str = "STATE_OPEN";
                }
            } else {
                str = "STATE_OPENING";
            }
        } else {
            str = "STATE_CLOSED";
        }
        StringBuilder sb = this.logBuilder;
        sb.setLength(0);
        sb.append("ShadeExpansionStateManager updateStateInternal : ".concat(str));
        sb.append(LogUtil.getCaller());
        ((SecPanelLoggerImpl) ((SecPanelLogger) this.panelLogger$delegate.getValue())).addPanelStateInfoLog(sb, true);
        this.state = i;
        Iterator it = this.stateListeners.iterator();
        while (it.hasNext()) {
            ((ShadeStateListener) it.next()).onPanelStateChanged(i);
        }
    }
}
