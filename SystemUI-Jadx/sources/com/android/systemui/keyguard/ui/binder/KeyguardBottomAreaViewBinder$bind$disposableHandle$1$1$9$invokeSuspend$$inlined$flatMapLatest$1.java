package com.android.systemui.keyguard.ui.binder;

import com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$indicationAreaTranslationY$$inlined$map$1;
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
@DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1", f = "KeyguardBottomAreaViewBinder.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ KeyguardBottomAreaViewModel $viewModel$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1(Continuation continuation, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel) {
        super(3, continuation);
        this.$viewModel$inlined = keyguardBottomAreaViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1 keyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1 = new KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1((Continuation) obj3, this.$viewModel$inlined);
        keyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1.L$0 = (FlowCollector) obj;
        keyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1.L$1 = obj2;
        return keyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
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
            int intValue = ((Number) this.L$1).intValue();
            KeyguardBottomAreaViewModel keyguardBottomAreaViewModel = this.$viewModel$inlined;
            Flow distinctUntilChanged = FlowKt.distinctUntilChanged(new KeyguardBottomAreaViewModel$indicationAreaTranslationY$$inlined$map$1(keyguardBottomAreaViewModel.keyguardInteractor.dozeAmount, keyguardBottomAreaViewModel, intValue));
            this.label = 1;
            if (FlowKt.emitAll(this, distinctUntilChanged, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
