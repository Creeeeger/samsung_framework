package com.android.systemui.statusbar.pipeline.wifi.data.repository.prod;

import com.android.systemui.statusbar.pipeline.wifi.shared.WifiInputLogger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$hideDuringMobileSwitching$3", f = "WifiRepositoryImpl.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class WifiRepositoryImpl$hideDuringMobileSwitching$3 extends SuspendLambda implements Function2 {
    final /* synthetic */ WifiInputLogger $logger;
    /* synthetic */ boolean Z$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiRepositoryImpl$hideDuringMobileSwitching$3(WifiInputLogger wifiInputLogger, Continuation<? super WifiRepositoryImpl$hideDuringMobileSwitching$3> continuation) {
        super(2, continuation);
        this.$logger = wifiInputLogger;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WifiRepositoryImpl$hideDuringMobileSwitching$3 wifiRepositoryImpl$hideDuringMobileSwitching$3 = new WifiRepositoryImpl$hideDuringMobileSwitching$3(this.$logger, continuation);
        wifiRepositoryImpl$hideDuringMobileSwitching$3.Z$0 = ((Boolean) obj).booleanValue();
        return wifiRepositoryImpl$hideDuringMobileSwitching$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WifiRepositoryImpl$hideDuringMobileSwitching$3) create(Boolean.valueOf(((Boolean) obj).booleanValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.$logger.logHideDuringMobileSwitching(this.Z$0);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
