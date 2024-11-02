package com.android.systemui.keyguard.data.repository;

import com.android.systemui.keyguard.shared.model.SettingsClockSize;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.repository.KeyguardClockRepository$getClockSize$2", f = "KeyguardClockRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardClockRepository$getClockSize$2 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ KeyguardClockRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardClockRepository$getClockSize$2(KeyguardClockRepository keyguardClockRepository, Continuation<? super KeyguardClockRepository$getClockSize$2> continuation) {
        super(2, continuation);
        this.this$0 = keyguardClockRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new KeyguardClockRepository$getClockSize$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KeyguardClockRepository$getClockSize$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.this$0.secureSettings.getIntForUser(1, -2, "lockscreen_use_double_line_clock") == 1) {
                return SettingsClockSize.DYNAMIC;
            }
            return SettingsClockSize.SMALL;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
