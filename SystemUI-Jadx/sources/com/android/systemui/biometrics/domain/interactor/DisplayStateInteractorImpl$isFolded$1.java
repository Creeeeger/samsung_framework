package com.android.systemui.biometrics.domain.interactor;

import com.android.systemui.common.coroutine.ChannelExt;
import com.android.systemui.unfold.compat.ScreenSizeFoldProvider;
import com.android.systemui.unfold.updates.FoldProvider;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.biometrics.domain.interactor.DisplayStateInteractorImpl$isFolded$1", f = "DisplayStateInteractor.kt", l = {84}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DisplayStateInteractorImpl$isFolded$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Executor $mainExecutor;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DisplayStateInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisplayStateInteractorImpl$isFolded$1(DisplayStateInteractorImpl displayStateInteractorImpl, Executor executor, Continuation<? super DisplayStateInteractorImpl$isFolded$1> continuation) {
        super(2, continuation);
        this.this$0 = displayStateInteractorImpl;
        this.$mainExecutor = executor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DisplayStateInteractorImpl$isFolded$1 displayStateInteractorImpl$isFolded$1 = new DisplayStateInteractorImpl$isFolded$1(this.this$0, this.$mainExecutor, continuation);
        displayStateInteractorImpl$isFolded$1.L$0 = obj;
        return displayStateInteractorImpl$isFolded$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DisplayStateInteractorImpl$isFolded$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.systemui.unfold.updates.FoldProvider$FoldCallback, com.android.systemui.biometrics.domain.interactor.DisplayStateInteractorImpl$isFolded$1$callback$1] */
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
            final Function1 function1 = new Function1() { // from class: com.android.systemui.biometrics.domain.interactor.DisplayStateInteractorImpl$isFolded$1$sendFoldStateUpdate$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    boolean booleanValue = ((Boolean) obj2).booleanValue();
                    ChannelExt channelExt = ChannelExt.INSTANCE;
                    channelExt.getClass();
                    ChannelExt.trySendWithFailureLogging(ProducerScope.this, Boolean.valueOf(booleanValue), "DisplayStateInteractor", "Error sending fold state update to " + booleanValue);
                    return Unit.INSTANCE;
                }
            };
            final ?? r3 = new FoldProvider.FoldCallback() { // from class: com.android.systemui.biometrics.domain.interactor.DisplayStateInteractorImpl$isFolded$1$callback$1
                @Override // com.android.systemui.unfold.updates.FoldProvider.FoldCallback
                public final void onFoldUpdated(boolean z) {
                    Function1.this.invoke(Boolean.valueOf(z));
                }
            };
            function1.invoke(Boolean.FALSE);
            this.this$0.screenSizeFoldProvider.registerCallback(r3, this.$mainExecutor);
            final DisplayStateInteractorImpl displayStateInteractorImpl = this.this$0;
            Function0 function0 = new Function0() { // from class: com.android.systemui.biometrics.domain.interactor.DisplayStateInteractorImpl$isFolded$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    ScreenSizeFoldProvider screenSizeFoldProvider = DisplayStateInteractorImpl.this.screenSizeFoldProvider;
                    ((ArrayList) screenSizeFoldProvider.callbacks).remove(r3);
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
