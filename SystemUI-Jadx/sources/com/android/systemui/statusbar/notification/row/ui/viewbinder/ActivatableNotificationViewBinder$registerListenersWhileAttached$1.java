package com.android.systemui.statusbar.notification.row.ui.viewbinder;

import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.notification.row.ui.viewbinder.ActivatableNotificationViewBinder", f = "ActivatableNotificationViewBinder.kt", l = {60}, m = "registerListenersWhileAttached")
/* loaded from: classes2.dex */
public final class ActivatableNotificationViewBinder$registerListenersWhileAttached$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ActivatableNotificationViewBinder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivatableNotificationViewBinder$registerListenersWhileAttached$1(ActivatableNotificationViewBinder activatableNotificationViewBinder, Continuation<? super ActivatableNotificationViewBinder$registerListenersWhileAttached$1> continuation) {
        super(continuation);
        this.this$0 = activatableNotificationViewBinder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
        return ActivatableNotificationViewBinder.access$registerListenersWhileAttached(this.this$0, null, null, this);
    }
}
