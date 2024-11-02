package com.android.wm.shell.windowdecor;

import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                MultitaskingWindowDecorViewModel.m2475$$Nest$mupdateColorThemeState(MultitaskingWindowDecorViewModel.this);
                return;
            case 1:
                MultitaskingWindowDecorViewModel.m2476$$Nest$mupdateFullscreenHandlerState(MultitaskingWindowDecorViewModel.this);
                return;
            default:
                ((MultitaskingWindowDecorViewModel.CaptionTouchEventListener) this.f$0).dismissPopup();
                return;
        }
    }
}
