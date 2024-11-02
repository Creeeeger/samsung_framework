package com.android.systemui.statusbar.notification.logging;

import android.os.Trace;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.logging.NotificationMemoryLogger$getAllNotificationsOnMainThread$1", f = "NotificationMemoryLogger.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class NotificationMemoryLogger$getAllNotificationsOnMainThread$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ NotificationMemoryLogger this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationMemoryLogger$getAllNotificationsOnMainThread$1(NotificationMemoryLogger notificationMemoryLogger, Continuation<? super NotificationMemoryLogger$getAllNotificationsOnMainThread$1> continuation) {
        super(2, continuation);
        this.this$0 = notificationMemoryLogger;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationMemoryLogger$getAllNotificationsOnMainThread$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationMemoryLogger$getAllNotificationsOnMainThread$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            NotificationMemoryLogger notificationMemoryLogger = this.this$0;
            if (Trace.isTagEnabled(4096L)) {
                Trace.traceBegin(4096L, "NML#getNotifications");
                try {
                    return notificationMemoryLogger.notificationPipeline.getAllNotifs();
                } finally {
                    Trace.traceEnd(4096L);
                }
            }
            return notificationMemoryLogger.notificationPipeline.getAllNotifs();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
