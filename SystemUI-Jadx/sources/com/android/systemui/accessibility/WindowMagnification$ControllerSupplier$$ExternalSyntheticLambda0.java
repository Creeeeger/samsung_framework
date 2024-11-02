package com.android.systemui.accessibility;

import android.view.WindowManagerGlobal;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class WindowMagnification$ControllerSupplier$$ExternalSyntheticLambda0 implements Supplier {
    @Override // java.util.function.Supplier
    public final Object get() {
        return WindowManagerGlobal.getWindowSession();
    }
}
