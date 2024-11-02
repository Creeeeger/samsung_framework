package com.android.systemui.accessibility;

import android.graphics.Insets;
import android.graphics.Rect;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowMetrics;
import android.view.accessibility.IWindowMagnificationConnectionCallback;
import com.android.internal.view.TooltipPopup;
import com.android.systemui.R;
import com.samsung.android.widget.SemTipPopup;
import java.text.NumberFormat;
import java.util.Collections;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class WindowMagnificationController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WindowMagnificationController f$0;

    public /* synthetic */ WindowMagnificationController$$ExternalSyntheticLambda0(WindowMagnificationController windowMagnificationController, int i) {
        this.$r8$classId = i;
        this.f$0 = windowMagnificationController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        IWindowMagnificationConnectionCallback iWindowMagnificationConnectionCallback;
        int i2;
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                WindowMagnificationController windowMagnificationController = this.f$0;
                windowMagnificationController.getClass();
                SemTipPopup semTipPopup = new SemTipPopup(windowMagnificationController.mDragView);
                windowMagnificationController.mTipPopup = semTipPopup;
                semTipPopup.setExpanded(true);
                windowMagnificationController.mTipPopup.setMessage(windowMagnificationController.mContext.getString(R.string.accessibility_magnification_tooltip_description));
                SemTipPopup semTipPopup2 = windowMagnificationController.mTipPopup;
                if (windowMagnificationController.mMirrorView.getLayoutDirection() == 0) {
                    i = 3;
                } else {
                    i = 2;
                }
                semTipPopup2.show(i);
                windowMagnificationController.mTipPopupCnt++;
                return;
            case 1:
                this.f$0.getClass();
                return;
            case 2:
                WindowMagnificationController windowMagnificationController2 = this.f$0;
                TooltipPopup tooltipPopup = windowMagnificationController2.mTooltipPopup;
                if (tooltipPopup != null && tooltipPopup.isShowing()) {
                    windowMagnificationController2.mTooltipPopup.hide();
                    return;
                }
                return;
            case 3:
                WindowMagnificationController windowMagnificationController3 = this.f$0;
                if (windowMagnificationController3.mMirrorView != null) {
                    Rect rect = new Rect(windowMagnificationController3.mMirrorViewBounds);
                    windowMagnificationController3.mMirrorView.getBoundsOnScreen(windowMagnificationController3.mMirrorViewBounds);
                    if (rect.width() != windowMagnificationController3.mMirrorViewBounds.width() || rect.height() != windowMagnificationController3.mMirrorViewBounds.height()) {
                        windowMagnificationController3.mMirrorView.setSystemGestureExclusionRects(Collections.singletonList(new Rect(0, 0, windowMagnificationController3.mMirrorViewBounds.width(), windowMagnificationController3.mMirrorViewBounds.height())));
                    }
                    windowMagnificationController3.updateSysUIState(false);
                    WindowMagnifierCallback windowMagnifierCallback = windowMagnificationController3.mWindowMagnifierCallback;
                    int i3 = windowMagnificationController3.mDisplayId;
                    Rect rect2 = windowMagnificationController3.mMirrorViewBounds;
                    WindowMagnificationConnectionImpl windowMagnificationConnectionImpl = WindowMagnification.this.mWindowMagnificationConnectionImpl;
                    if (windowMagnificationConnectionImpl != null && (iWindowMagnificationConnectionCallback = windowMagnificationConnectionImpl.mConnectionCallback) != null) {
                        try {
                            iWindowMagnificationConnectionCallback.onWindowMagnifierBoundsChanged(i3, rect2);
                            return;
                        } catch (RemoteException e) {
                            Log.e("WindowMagnificationConnectionImpl", "Failed to inform bounds changed", e);
                            return;
                        }
                    }
                    return;
                }
                return;
            case 4:
                WindowMagnificationController windowMagnificationController4 = this.f$0;
                if (windowMagnificationController4.isActivated()) {
                    View view = windowMagnificationController4.mMirrorView;
                    float f = windowMagnificationController4.mScale;
                    Locale locale = windowMagnificationController4.mContext.getResources().getConfiguration().getLocales().get(0);
                    if (!locale.equals(windowMagnificationController4.mLocale)) {
                        windowMagnificationController4.mLocale = locale;
                        windowMagnificationController4.mPercentFormat = NumberFormat.getPercentInstance(locale);
                    }
                    view.setStateDescription(windowMagnificationController4.mPercentFormat.format(f));
                    return;
                }
                return;
            case 5:
                WindowMagnificationController windowMagnificationController5 = this.f$0;
                WindowMetrics currentWindowMetrics = windowMagnificationController5.mWm.getCurrentWindowMetrics();
                Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemGestures());
                if (insets.bottom != 0) {
                    i2 = currentWindowMetrics.getBounds().bottom - insets.bottom;
                } else {
                    i2 = -1;
                }
                if (i2 != windowMagnificationController5.mSystemGestureTop) {
                    windowMagnificationController5.mSystemGestureTop = i2;
                } else {
                    z = false;
                }
                if (z) {
                    windowMagnificationController5.updateSysUIState(false);
                    return;
                }
                return;
            default:
                this.f$0.applyTapExcludeRegion();
                return;
        }
    }
}
