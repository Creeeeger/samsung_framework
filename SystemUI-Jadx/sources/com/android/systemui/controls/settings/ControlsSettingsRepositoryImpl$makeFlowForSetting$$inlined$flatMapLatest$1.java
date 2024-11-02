package com.android.systemui.controls.settings;

import android.content.pm.UserInfo;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.controls.settings.ControlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1", f = "ControlsSettingsRepositoryImpl.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ControlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ String $setting$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ ControlsSettingsRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ControlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1(Continuation continuation, ControlsSettingsRepositoryImpl controlsSettingsRepositoryImpl, String str) {
        super(3, continuation);
        this.this$0 = controlsSettingsRepositoryImpl;
        this.$setting$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        ControlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1 controlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1 = new ControlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1((Continuation) obj3, this.this$0, this.$setting$inlined);
        controlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1.L$0 = (FlowCollector) obj;
        controlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1.L$1 = obj2;
        return controlsSettingsRepositoryImpl$makeFlowForSetting$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            UserInfo userInfo = (UserInfo) this.L$1;
            ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
            ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1 controlsSettingsRepositoryImpl$makeFlowForSetting$1$1 = new ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1(this.this$0, userInfo, this.$setting$inlined, null);
            conflatedCallbackFlow.getClass();
            Flow distinctUntilChanged = FlowKt.distinctUntilChanged(FlowKt.flowOn(ConflatedCallbackFlow.conflatedCallbackFlow(controlsSettingsRepositoryImpl$makeFlowForSetting$1$1), this.this$0.backgroundDispatcher));
            this.label = 1;
            if (FlowKt.emitAll(this, distinctUntilChanged, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
