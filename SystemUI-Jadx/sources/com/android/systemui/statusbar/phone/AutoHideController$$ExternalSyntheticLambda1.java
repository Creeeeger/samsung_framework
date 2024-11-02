package com.android.systemui.statusbar.phone;

import com.android.systemui.statusbar.AutoHideUiElement;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class AutoHideController$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ AutoHideController$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                AutoHideController autoHideController = (AutoHideController) this.f$0;
                AutoHideUiElement autoHideUiElement = (AutoHideUiElement) obj;
                autoHideController.getClass();
                if (autoHideUiElement != null && autoHideUiElement.isVisible()) {
                    autoHideController.mIsVisible = true;
                    return;
                }
                return;
            case 1:
                AutoHideController autoHideController2 = (AutoHideController) this.f$0;
                AutoHideController$$ExternalSyntheticLambda0 checkBarModesRunnable = autoHideController2.getCheckBarModesRunnable((AutoHideUiElement) obj);
                if (checkBarModesRunnable != null) {
                    autoHideController2.mHandler.removeCallbacks(checkBarModesRunnable);
                    return;
                }
                return;
            case 2:
                AutoHideController autoHideController3 = (AutoHideController) this.f$0;
                AutoHideController$$ExternalSyntheticLambda0 checkBarModesRunnable2 = autoHideController3.getCheckBarModesRunnable((AutoHideUiElement) obj);
                if (checkBarModesRunnable2 != null) {
                    autoHideController3.mHandler.postDelayed(checkBarModesRunnable2, 500L);
                    return;
                }
                return;
            case 3:
                AutoHideController autoHideController4 = (AutoHideController) this.f$0;
                AutoHideUiElement autoHideUiElement2 = (AutoHideUiElement) obj;
                if (autoHideUiElement2 != null) {
                    autoHideController4.mShouldHide = autoHideUiElement2.shouldHideOnTouch() & autoHideController4.mShouldHide;
                    return;
                } else {
                    autoHideController4.getClass();
                    return;
                }
            case 4:
                AutoHideController autoHideController5 = (AutoHideController) this.f$0;
                AutoHideController$$ExternalSyntheticLambda0 checkBarModesRunnable3 = autoHideController5.getCheckBarModesRunnable((AutoHideUiElement) obj);
                if (checkBarModesRunnable3 != null) {
                    autoHideController5.mHandler.post(checkBarModesRunnable3);
                    return;
                }
                return;
            default:
                Consumer consumer = (Consumer) this.f$0;
                AutoHideUiElement autoHideUiElement3 = (AutoHideUiElement) obj;
                if (autoHideUiElement3 != null) {
                    consumer.accept(autoHideUiElement3);
                    return;
                }
                return;
        }
    }
}
