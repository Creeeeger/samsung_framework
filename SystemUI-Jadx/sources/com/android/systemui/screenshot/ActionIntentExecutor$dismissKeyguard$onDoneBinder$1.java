package com.android.systemui.screenshot;

import com.android.systemui.screenshot.IOnDoneCallback;
import kotlin.Unit;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.JobSupportKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActionIntentExecutor$dismissKeyguard$onDoneBinder$1 extends IOnDoneCallback.Stub {
    public final /* synthetic */ CompletableDeferred $completion;

    public ActionIntentExecutor$dismissKeyguard$onDoneBinder$1(CompletableDeferred completableDeferred) {
        this.$completion = completableDeferred;
    }

    @Override // com.android.systemui.screenshot.IOnDoneCallback
    public final void onDone(boolean z) {
        Object tryMakeCompleting;
        CompletableDeferred completableDeferred = this.$completion;
        Unit unit = Unit.INSTANCE;
        CompletableDeferredImpl completableDeferredImpl = (CompletableDeferredImpl) completableDeferred;
        do {
            tryMakeCompleting = completableDeferredImpl.tryMakeCompleting(completableDeferredImpl.getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines(), unit);
            if (tryMakeCompleting == JobSupportKt.COMPLETING_ALREADY || tryMakeCompleting == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                return;
            }
        } while (tryMakeCompleting == JobSupportKt.COMPLETING_RETRY);
    }
}
