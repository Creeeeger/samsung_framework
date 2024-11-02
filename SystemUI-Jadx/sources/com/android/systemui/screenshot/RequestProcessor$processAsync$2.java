package com.android.systemui.screenshot;

import com.samsung.android.knox.custom.IKnoxCustomManager;
import java.util.function.Consumer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.screenshot.RequestProcessor$processAsync$2", f = "RequestProcessor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getAutoCallNumberAnswerMode}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class RequestProcessor$processAsync$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Consumer<ScreenshotData> $callback;
    final /* synthetic */ ScreenshotData $screenshot;
    int label;
    final /* synthetic */ RequestProcessor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestProcessor$processAsync$2(RequestProcessor requestProcessor, ScreenshotData screenshotData, Consumer<ScreenshotData> consumer, Continuation<? super RequestProcessor$processAsync$2> continuation) {
        super(2, continuation);
        this.this$0 = requestProcessor;
        this.$screenshot = screenshotData;
        this.$callback = consumer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RequestProcessor$processAsync$2(this.this$0, this.$screenshot, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RequestProcessor$processAsync$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            RequestProcessor requestProcessor = this.this$0;
            ScreenshotData screenshotData = this.$screenshot;
            this.label = 1;
            obj = requestProcessor.process(screenshotData, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        this.$callback.accept((ScreenshotData) obj);
        return Unit.INSTANCE;
    }
}
