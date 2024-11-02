package com.android.systemui.keyguard.data.quickaffordance;

import com.android.systemui.settings.UserTrackerImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.quickaffordance.CameraQuickAffordanceConfig$isLaunchable$2", f = "CameraQuickAffordanceConfig.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class CameraQuickAffordanceConfig$isLaunchable$2 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ CameraQuickAffordanceConfig this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraQuickAffordanceConfig$isLaunchable$2(CameraQuickAffordanceConfig cameraQuickAffordanceConfig, Continuation<? super CameraQuickAffordanceConfig$isLaunchable$2> continuation) {
        super(2, continuation);
        this.this$0 = cameraQuickAffordanceConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CameraQuickAffordanceConfig$isLaunchable$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CameraQuickAffordanceConfig$isLaunchable$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            CameraQuickAffordanceConfig cameraQuickAffordanceConfig = this.this$0;
            if (!cameraQuickAffordanceConfig.devicePolicyManager.getCameraDisabled(null, ((UserTrackerImpl) cameraQuickAffordanceConfig.userTracker).getUserId())) {
                CameraQuickAffordanceConfig cameraQuickAffordanceConfig2 = this.this$0;
                if ((cameraQuickAffordanceConfig2.devicePolicyManager.getKeyguardDisabledFeatures(null, ((UserTrackerImpl) cameraQuickAffordanceConfig2.userTracker).getUserId()) & 2) == 0) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
