package com.android.systemui.notetask.quickaffordance;

import android.os.UserManager;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
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
@DebugMetadata(c = "com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1", f = "NoteTaskQuickAffordanceConfig.kt", l = {158}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ KeyguardUpdateMonitor $monitor;
    final /* synthetic */ UserManager $this_createUserUnlockedFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1(UserManager userManager, KeyguardUpdateMonitor keyguardUpdateMonitor, Continuation<? super NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1> continuation) {
        super(2, continuation);
        this.$this_createUserUnlockedFlow = userManager;
        this.$monitor = keyguardUpdateMonitor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1 noteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1 = new NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1(this.$this_createUserUnlockedFlow, this.$monitor, continuation);
        noteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1.L$0 = obj;
        return noteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.keyguard.KeyguardUpdateMonitorCallback, com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1$callback$1] */
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
            ChannelsKt.trySendBlocking(producerScope, Boolean.valueOf(this.$this_createUserUnlockedFlow.isUserUnlocked()));
            final UserManager userManager = this.$this_createUserUnlockedFlow;
            final ?? r1 = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1$callback$1
                @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
                public final void onUserUnlocked() {
                    ChannelsKt.trySendBlocking(ProducerScope.this, Boolean.valueOf(userManager.isUserUnlocked()));
                }
            };
            this.$monitor.registerCallback(r1);
            final KeyguardUpdateMonitor keyguardUpdateMonitor = this.$monitor;
            Function0 function0 = new Function0() { // from class: com.android.systemui.notetask.quickaffordance.NoteTaskQuickAffordanceConfigKt$createUserUnlockedFlow$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    KeyguardUpdateMonitor.this.removeCallback(r1);
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
