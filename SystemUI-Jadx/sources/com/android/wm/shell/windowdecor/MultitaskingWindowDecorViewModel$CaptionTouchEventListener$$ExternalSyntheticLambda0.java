package com.android.wm.shell.windowdecor;

import android.content.Intent;
import android.os.UserHandle;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MultitaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ MultitaskingWindowDecorViewModel.CaptionTouchEventListener f$0;
    public final /* synthetic */ Intent f$1;

    public /* synthetic */ MultitaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda0(MultitaskingWindowDecorViewModel.CaptionTouchEventListener captionTouchEventListener, Intent intent) {
        this.f$0 = captionTouchEventListener;
        this.f$1 = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MultitaskingWindowDecorViewModel.CaptionTouchEventListener captionTouchEventListener = this.f$0;
        captionTouchEventListener.this$0.mContext.startServiceAsUser(this.f$1, UserHandle.CURRENT);
    }
}
