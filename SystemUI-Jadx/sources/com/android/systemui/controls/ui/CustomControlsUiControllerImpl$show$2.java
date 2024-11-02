package com.android.systemui.controls.ui;

import android.util.Log;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final /* synthetic */ class CustomControlsUiControllerImpl$show$2 extends FunctionReferenceImpl implements Function2 {
    public CustomControlsUiControllerImpl$show$2(Object obj) {
        super(2, obj, CustomControlsUiControllerImpl.class, "showSeedingView", "showSeedingView(Ljava/util/List;Ljava/util/List;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CustomControlsUiControllerImpl customControlsUiControllerImpl = (CustomControlsUiControllerImpl) this.receiver;
        int i = CustomControlsUiControllerImpl.$r8$clinit;
        customControlsUiControllerImpl.getClass();
        Log.d("CustomControlsUiControllerImpl", "showSeedingView()");
        return Unit.INSTANCE;
    }
}
