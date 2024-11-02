package com.android.wm.shell.controlpanel.activity;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TouchPad$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TouchPad f$0;

    public /* synthetic */ TouchPad$$ExternalSyntheticLambda0(TouchPad touchPad, int i) {
        this.$r8$classId = i;
        this.f$0 = touchPad;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                TouchPad touchPad = this.f$0;
                touchPad.startFadeInAnimation(touchPad.mTouchPadLine, true);
                return;
            default:
                TouchPad touchPad2 = this.f$0;
                View view = touchPad2.mOverlayView;
                if (view != null) {
                    view.setVisibility(8);
                    if (touchPad2.mOverlayView.isAttachedToWindow()) {
                        touchPad2.removeView();
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
