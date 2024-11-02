package com.android.systemui.notetask.quickaffordance;

import android.content.Context;
import android.hardware.BatteryState;
import android.hardware.input.InputSettings;
import com.android.systemui.stylus.StylusManager;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1", f = "NoteTaskQuickAffordanceConfig.kt", l = {170}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Context $context;
    final /* synthetic */ StylusManager $this_createStylusEverUsedFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1(Context context, StylusManager stylusManager, Continuation<? super NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$this_createStylusEverUsedFlow = stylusManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1 noteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1 = new NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1(this.$context, this.$this_createStylusEverUsedFlow, continuation);
        noteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1.L$0 = obj;
        return noteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1$callback$1, java.lang.Object] */
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
            ChannelsKt.trySendBlocking(producerScope, Boolean.valueOf(InputSettings.isStylusEverUsed(this.$context)));
            final Context context = this.$context;
            final ?? r1 = new StylusManager.StylusCallback() { // from class: com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1$callback$1
                @Override // com.android.systemui.stylus.StylusManager.StylusCallback
                public final void onStylusFirstUsed() {
                    ChannelsKt.trySendBlocking(ProducerScope.this, Boolean.valueOf(InputSettings.isStylusEverUsed(context)));
                }

                @Override // com.android.systemui.stylus.StylusManager.StylusCallback
                public final void onStylusAdded(int i2) {
                }

                @Override // com.android.systemui.stylus.StylusManager.StylusCallback
                public final void onStylusBluetoothChargingStateChanged() {
                }

                @Override // com.android.systemui.stylus.StylusManager.StylusCallback
                public final void onStylusBluetoothConnected() {
                }

                @Override // com.android.systemui.stylus.StylusManager.StylusCallback
                public final void onStylusBluetoothDisconnected() {
                }

                @Override // com.android.systemui.stylus.StylusManager.StylusCallback
                public final void onStylusRemoved() {
                }

                @Override // com.android.systemui.stylus.StylusManager.StylusCallback
                public final void onStylusUsiBatteryStateChanged(int i2, BatteryState batteryState) {
                }
            };
            this.$this_createStylusEverUsedFlow.stylusCallbacks.add(r1);
            final StylusManager stylusManager = this.$this_createStylusEverUsedFlow;
            Function0 function0 = new Function0() { // from class: com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createStylusEverUsedFlow$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    StylusManager stylusManager2 = StylusManager.this;
                    stylusManager2.stylusCallbacks.remove(r1);
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
