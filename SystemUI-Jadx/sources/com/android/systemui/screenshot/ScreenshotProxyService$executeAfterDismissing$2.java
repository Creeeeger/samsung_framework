package com.android.systemui.screenshot;

import com.android.systemui.plugins.ActivityStarter;
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
@DebugMetadata(c = "com.android.systemui.screenshot.ScreenshotProxyService$executeAfterDismissing$2", f = "ScreenshotProxyService.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class ScreenshotProxyService$executeAfterDismissing$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ IOnDoneCallback $callback;
    int label;
    final /* synthetic */ ScreenshotProxyService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenshotProxyService$executeAfterDismissing$2(ScreenshotProxyService screenshotProxyService, IOnDoneCallback iOnDoneCallback, Continuation<? super ScreenshotProxyService$executeAfterDismissing$2> continuation) {
        super(2, continuation);
        this.this$0 = screenshotProxyService;
        this.$callback = iOnDoneCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ScreenshotProxyService$executeAfterDismissing$2(this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScreenshotProxyService$executeAfterDismissing$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            ActivityStarter activityStarter = this.this$0.activityStarter;
            final IOnDoneCallback iOnDoneCallback = this.$callback;
            activityStarter.executeRunnableDismissingKeyguard(new Runnable() { // from class: com.android.systemui.screenshot.ScreenshotProxyService$executeAfterDismissing$2.1
                @Override // java.lang.Runnable
                public final void run() {
                    IOnDoneCallback.this.onDone(true);
                }
            }, null, true, true, true);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
