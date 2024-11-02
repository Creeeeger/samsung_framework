package com.android.systemui.controls.settings;

import android.content.pm.UserInfo;
import com.android.systemui.qs.SettingObserver;
import com.android.systemui.util.settings.SecureSettings;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.controls.settings.ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1", f = "ControlsSettingsRepositoryImpl.kt", l = {77}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $setting;
    final /* synthetic */ UserInfo $userInfo;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ControlsSettingsRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1(ControlsSettingsRepositoryImpl controlsSettingsRepositoryImpl, UserInfo userInfo, String str, Continuation<? super ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1> continuation) {
        super(2, continuation);
        this.this$0 = controlsSettingsRepositoryImpl;
        this.$userInfo = userInfo;
        this.$setting = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1 controlsSettingsRepositoryImpl$makeFlowForSetting$1$1 = new ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1(this.this$0, this.$userInfo, this.$setting, continuation);
        controlsSettingsRepositoryImpl$makeFlowForSetting$1$1.L$0 = obj;
        return controlsSettingsRepositoryImpl$makeFlowForSetting$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.systemui.controls.settings.ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1$observer$1, com.android.systemui.qs.SettingObserver] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
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
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final SecureSettings secureSettings = this.this$0.secureSettings;
            final int i2 = this.$userInfo.id;
            final String str = this.$setting;
            final ?? r4 = new SettingObserver(str, secureSettings, i2) { // from class: com.android.systemui.controls.settings.ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1$observer$1
                @Override // com.android.systemui.qs.SettingObserver
                public final void handleValueChanged(int i3, boolean z2) {
                    SendChannel sendChannel = producerScope;
                    boolean z3 = true;
                    if (i3 != 1) {
                        z3 = false;
                    }
                    ((ChannelCoroutine) sendChannel).mo2584trySendJP2dKIU(Boolean.valueOf(z3));
                }
            };
            r4.setListening(true);
            if (r4.getValue() == 1) {
                z = true;
            } else {
                z = false;
            }
            ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(Boolean.valueOf(z));
            Function0 function0 = new Function0() { // from class: com.android.systemui.controls.settings.ControlsSettingsRepositoryImpl$makeFlowForSetting$1$1.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    setListening(false);
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
