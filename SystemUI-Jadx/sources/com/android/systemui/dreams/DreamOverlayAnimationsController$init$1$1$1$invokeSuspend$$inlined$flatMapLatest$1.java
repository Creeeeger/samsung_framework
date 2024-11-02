package com.android.systemui.dreams;

import com.android.systemui.dreams.DreamOverlayAnimationsController;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.dreams.DreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1", f = "DreamOverlayAnimationsController.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ DreamOverlayAnimationsController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1(Continuation continuation, DreamOverlayAnimationsController dreamOverlayAnimationsController) {
        super(3, continuation);
        this.this$0 = dreamOverlayAnimationsController;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        DreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1 dreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1 = new DreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1((Continuation) obj3, this.this$0);
        dreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1.L$0 = (FlowCollector) obj;
        dreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1.L$1 = obj2;
        return dreamOverlayAnimationsController$init$1$1$1$invokeSuspend$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
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
            FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 dreamOverlayTranslationY = this.this$0.transitionViewModel.dreamOverlayTranslationY(((DreamOverlayAnimationsController.ConfigurationBasedDimensions) this.L$1).translationYPx);
            this.label = 1;
            if (FlowKt.emitAll(this, dreamOverlayTranslationY, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
