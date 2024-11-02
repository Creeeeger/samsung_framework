package com.android.keyguard.emm;

import com.android.keyguard.emm.EngineeringModeManagerWrapper;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.keyguard.emm.EngineeringModeManagerWrapper$1$1", f = "EngineeringModeManagerWrapper.kt", l = {56}, m = "emit")
/* loaded from: classes.dex */
public final class EngineeringModeManagerWrapper$1$1$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ EngineeringModeManagerWrapper.AnonymousClass1.C00031 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineeringModeManagerWrapper$1$1$emit$1(EngineeringModeManagerWrapper.AnonymousClass1.C00031 c00031, Continuation<? super EngineeringModeManagerWrapper$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = c00031;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
        return this.this$0.emit(this);
    }
}
