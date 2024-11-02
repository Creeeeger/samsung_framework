package com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel.WifiViewModel$isActivityContainerVisible$1", f = "WifiViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class WifiViewModel$isActivityContainerVisible$1 extends SuspendLambda implements Function3 {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;

    public WifiViewModel$isActivityContainerVisible$1(Continuation<? super WifiViewModel$isActivityContainerVisible$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        WifiViewModel$isActivityContainerVisible$1 wifiViewModel$isActivityContainerVisible$1 = new WifiViewModel$isActivityContainerVisible$1((Continuation) obj3);
        wifiViewModel$isActivityContainerVisible$1.Z$0 = booleanValue;
        wifiViewModel$isActivityContainerVisible$1.Z$1 = booleanValue2;
        return wifiViewModel$isActivityContainerVisible$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z2 = this.Z$0;
            boolean z3 = this.Z$1;
            if (!z2 && !z3) {
                z = false;
            } else {
                z = true;
            }
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
