package com.android.systemui.controls.management;

import android.content.ComponentName;
import com.android.systemui.controls.controller.ControlsControllerImpl;
import com.android.systemui.controls.controller.CustomControlsController;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final /* synthetic */ class CustomControlsProviderSelectorActivity$onCreate$11 extends FunctionReferenceImpl implements Function1 {
    public CustomControlsProviderSelectorActivity$onCreate$11(Object obj) {
        super(1, obj, CustomControlsController.class, "getActiveFlag", "getActiveFlag(Landroid/content/ComponentName;)Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(((ControlsControllerImpl) ((CustomControlsController) this.receiver)).getActiveFlag((ComponentName) obj));
    }
}
