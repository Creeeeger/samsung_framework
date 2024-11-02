package com.android.systemui.demomode;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;
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

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.demomode.DemoModeController$demoFlowForCommand$1", f = "DemoModeController.kt", l = {160}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DemoModeController$demoFlowForCommand$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $command;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DemoModeController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DemoModeController$demoFlowForCommand$1(DemoModeController demoModeController, String str, Continuation<? super DemoModeController$demoFlowForCommand$1> continuation) {
        super(2, continuation);
        this.this$0 = demoModeController;
        this.$command = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DemoModeController$demoFlowForCommand$1 demoModeController$demoFlowForCommand$1 = new DemoModeController$demoFlowForCommand$1(this.this$0, this.$command, continuation);
        demoModeController$demoFlowForCommand$1.L$0 = obj;
        return demoModeController$demoFlowForCommand$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DemoModeController$demoFlowForCommand$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.demomode.DemoModeController$demoFlowForCommand$1$callback$1, com.android.systemui.demomode.DemoMode] */
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
            final String str = this.$command;
            final ?? r1 = new DemoMode() { // from class: com.android.systemui.demomode.DemoModeController$demoFlowForCommand$1$callback$1
                @Override // com.android.systemui.demomode.DemoMode
                public final List demoCommands() {
                    return Collections.singletonList(str);
                }

                @Override // com.android.systemui.demomode.DemoModeCommandReceiver
                public final void dispatchDemoCommand(Bundle bundle, String str2) {
                    ((ChannelCoroutine) producerScope).mo2584trySendJP2dKIU(bundle);
                }
            };
            this.this$0.addCallback((DemoMode) r1);
            final DemoModeController demoModeController = this.this$0;
            Function0 function0 = new Function0() { // from class: com.android.systemui.demomode.DemoModeController$demoFlowForCommand$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    DemoModeController.this.removeCallback((DemoMode) r1);
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
