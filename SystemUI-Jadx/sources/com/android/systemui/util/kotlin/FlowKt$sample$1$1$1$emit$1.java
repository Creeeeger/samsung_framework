package com.android.systemui.util.kotlin;

import com.android.systemui.util.kotlin.FlowKt$sample$1;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.util.kotlin.FlowKt$sample$1$1$1", f = "Flow.kt", l = {163, 163}, m = "emit")
/* loaded from: classes2.dex */
public final class FlowKt$sample$1$1$1$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FlowKt$sample$1.AnonymousClass1.C01501 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt$sample$1$1$1$emit$1(FlowKt$sample$1.AnonymousClass1.C01501 c01501, Continuation<? super FlowKt$sample$1$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = c01501;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
        return this.this$0.emit(null, this);
    }
}
