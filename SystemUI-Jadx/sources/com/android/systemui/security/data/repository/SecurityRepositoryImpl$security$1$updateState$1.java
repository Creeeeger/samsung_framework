package com.android.systemui.security.data.repository;

import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.security.data.repository.SecurityRepositoryImpl$security$1", f = "SecurityRepository.kt", l = {45}, m = "invokeSuspend$updateState")
/* loaded from: classes2.dex */
public final class SecurityRepositoryImpl$security$1$updateState$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    public SecurityRepositoryImpl$security$1$updateState$1(Continuation<? super SecurityRepositoryImpl$security$1$updateState$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
        return SecurityRepositoryImpl$security$1.invokeSuspend$updateState(null, null, this);
    }
}
