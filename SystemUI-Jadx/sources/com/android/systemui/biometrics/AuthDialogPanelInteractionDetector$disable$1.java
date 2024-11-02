package com.android.systemui.biometrics;

import com.android.systemui.shade.ShadeStateListener;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AuthDialogPanelInteractionDetector$disable$1 implements ShadeStateListener, FunctionAdapter {
    public final /* synthetic */ AuthDialogPanelInteractionDetector $tmp0;

    public AuthDialogPanelInteractionDetector$disable$1(AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector) {
        this.$tmp0 = authDialogPanelInteractionDetector;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ShadeStateListener) || !(obj instanceof FunctionAdapter)) {
            return false;
        }
        return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return new FunctionReferenceImpl(1, this.$tmp0, AuthDialogPanelInteractionDetector.class, "onPanelStateChanged", "onPanelStateChanged(I)V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // com.android.systemui.shade.ShadeStateListener
    public final void onPanelStateChanged(int i) {
        AuthDialogPanelInteractionDetector authDialogPanelInteractionDetector = this.$tmp0;
        authDialogPanelInteractionDetector.getClass();
        authDialogPanelInteractionDetector.mainExecutor.execute(new AuthDialogPanelInteractionDetector$onPanelStateChanged$1(authDialogPanelInteractionDetector, i));
    }
}
