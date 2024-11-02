package com.android.systemui.keyguard.data.repository;

import com.android.systemui.common.coroutine.ChannelExt;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1", f = "DeviceEntryFaceAuthRepository.kt", l = {197}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ KeyguardBypassController $it;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1(KeyguardBypassController keyguardBypassController, Continuation<? super DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1> continuation) {
        super(2, continuation);
        this.$it = keyguardBypassController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1 deviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1 = new DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1(this.$it, continuation);
        deviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1.L$0 = obj;
        return deviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1$callback$1, com.android.systemui.statusbar.phone.KeyguardBypassController$OnBypassStateChangedListener] */
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
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final ?? r1 = new KeyguardBypassController.OnBypassStateChangedListener() { // from class: com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1$callback$1
                @Override // com.android.systemui.statusbar.phone.KeyguardBypassController.OnBypassStateChangedListener
                public final void onBypassStateChanged(boolean z) {
                    ChannelExt channelExt = ChannelExt.INSTANCE;
                    Boolean valueOf = Boolean.valueOf(z);
                    channelExt.getClass();
                    ChannelExt.trySendWithFailureLogging(ProducerScope.this, valueOf, "DeviceEntryFaceAuthRepository", "BypassStateChanged");
                }
            };
            this.$it.registerOnBypassStateChangedListener(r1);
            ChannelExt channelExt = ChannelExt.INSTANCE;
            Boolean valueOf = Boolean.valueOf(this.$it.getBypassEnabled());
            channelExt.getClass();
            ChannelExt.trySendWithFailureLogging(producerScope, valueOf, "DeviceEntryFaceAuthRepository", "BypassStateChanged");
            final KeyguardBypassController keyguardBypassController = this.$it;
            Function0 function0 = new Function0() { // from class: com.android.systemui.keyguard.data.repository.DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    KeyguardBypassController keyguardBypassController2 = KeyguardBypassController.this;
                    DeviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1$callback$1 deviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1$callback$1 = r1;
                    ArrayList arrayList = (ArrayList) keyguardBypassController2.listeners;
                    arrayList.remove(deviceEntryFaceAuthRepositoryImpl$isBypassEnabled$1$1$callback$1);
                    if (arrayList.isEmpty()) {
                        ((KeyguardStateControllerImpl) keyguardBypassController2.mKeyguardStateController).removeCallback(keyguardBypassController2.faceAuthEnabledChangedCallback);
                    }
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
