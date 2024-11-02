package com.android.systemui.controls.management;

import android.content.ComponentName;
import com.android.systemui.controls.controller.ControlsControllerImpl;
import com.android.systemui.controls.controller.CustomControlsController;
import com.android.systemui.controls.controller.Favorites;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final /* synthetic */ class CustomControlsProviderSelectorActivity$onCreate$12 extends FunctionReferenceImpl implements Function2 {
    public CustomControlsProviderSelectorActivity$onCreate$12(Object obj) {
        super(2, obj, CustomControlsController.class, "setActiveFlag", "setActiveFlag(Landroid/content/ComponentName;Z)V", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        ((ControlsControllerImpl) ((CustomControlsController) this.receiver)).getClass();
        Favorites.INSTANCE.getClass();
        Favorites.setActiveFlag((ComponentName) obj, booleanValue);
        return Unit.INSTANCE;
    }
}
