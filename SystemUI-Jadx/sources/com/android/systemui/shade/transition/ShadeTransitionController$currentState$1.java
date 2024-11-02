package com.android.systemui.shade.transition;

import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ShadeTransitionController$currentState$1 implements ShadeExpansionListener, FunctionAdapter {
    public final /* synthetic */ ShadeTransitionController $tmp0;

    public ShadeTransitionController$currentState$1(ShadeTransitionController shadeTransitionController) {
        this.$tmp0 = shadeTransitionController;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ShadeExpansionListener) || !(obj instanceof FunctionAdapter)) {
            return false;
        }
        return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return new FunctionReferenceImpl(1, this.$tmp0, ShadeTransitionController.class, "onPanelExpansionChanged", "onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // com.android.systemui.shade.ShadeExpansionListener
    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        ShadeTransitionController shadeTransitionController = this.$tmp0;
        shadeTransitionController.lastShadeExpansionChangeEvent = shadeExpansionChangeEvent;
        ScrimShadeTransitionController scrimShadeTransitionController = shadeTransitionController.scrimShadeTransitionController;
        scrimShadeTransitionController.lastExpansionEvent = shadeExpansionChangeEvent;
        scrimShadeTransitionController.onStateChanged();
    }
}
