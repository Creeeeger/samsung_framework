package com.android.systemui.biometrics.domain.interactor;

import com.android.systemui.common.coroutine.ChannelExt;
import com.android.systemui.unfold.updates.DeviceFoldStateProvider;
import com.android.systemui.unfold.updates.FoldStateProvider;
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
@DebugMetadata(c = "com.android.systemui.biometrics.domain.interactor.LogContextInteractorImpl$foldState$1", f = "LogContextInteractor.kt", l = {143}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class LogContextInteractorImpl$foldState$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ LogContextInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogContextInteractorImpl$foldState$1(LogContextInteractorImpl logContextInteractorImpl, Continuation<? super LogContextInteractorImpl$foldState$1> continuation) {
        super(2, continuation);
        this.this$0 = logContextInteractorImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        LogContextInteractorImpl$foldState$1 logContextInteractorImpl$foldState$1 = new LogContextInteractorImpl$foldState$1(this.this$0, continuation);
        logContextInteractorImpl$foldState$1.L$0 = obj;
        return logContextInteractorImpl$foldState$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LogContextInteractorImpl$foldState$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.biometrics.domain.interactor.LogContextInteractorImpl$foldState$1$callback$1, java.lang.Object] */
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
            final ?? r1 = new FoldStateProvider.FoldUpdatesListener() { // from class: com.android.systemui.biometrics.domain.interactor.LogContextInteractorImpl$foldState$1$callback$1
                @Override // com.android.systemui.unfold.updates.FoldStateProvider.FoldUpdatesListener
                public final void onFoldUpdate(int i2) {
                    Integer num;
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                num = null;
                            } else {
                                num = 3;
                            }
                        } else {
                            num = 2;
                        }
                    } else {
                        num = 1;
                    }
                    if (num != null) {
                        ChannelExt.trySendWithFailureLogging$default(ChannelExt.INSTANCE, ProducerScope.this, num, "ContextRepositoryImpl");
                    }
                }

                @Override // com.android.systemui.unfold.updates.FoldStateProvider.FoldUpdatesListener
                public final void onHingeAngleUpdate(float f) {
                }
            };
            ((DeviceFoldStateProvider) this.this$0.foldProvider).addCallback(r1);
            ChannelExt.trySendWithFailureLogging$default(ChannelExt.INSTANCE, producerScope, new Integer(0), "ContextRepositoryImpl");
            final LogContextInteractorImpl logContextInteractorImpl = this.this$0;
            Function0 function0 = new Function0() { // from class: com.android.systemui.biometrics.domain.interactor.LogContextInteractorImpl$foldState$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    ((DeviceFoldStateProvider) LogContextInteractorImpl.this.foldProvider).removeCallback(r1);
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
