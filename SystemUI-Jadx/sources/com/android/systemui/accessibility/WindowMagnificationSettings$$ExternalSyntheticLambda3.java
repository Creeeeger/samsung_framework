package com.android.systemui.accessibility;

import android.graphics.Rect;
import android.view.WindowManager;
import com.android.systemui.accessibility.WindowMagnificationSettings;
import java.util.Collections;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class WindowMagnificationSettings$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ WindowMagnificationSettings$$ExternalSyntheticLambda3(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                WindowMagnificationSettings windowMagnificationSettings = (WindowMagnificationSettings) this.f$0;
                Rect draggableWindowBounds = windowMagnificationSettings.getDraggableWindowBounds();
                if (!windowMagnificationSettings.mDraggableWindowBounds.equals(draggableWindowBounds)) {
                    windowMagnificationSettings.mDraggableWindowBounds.set(draggableWindowBounds);
                    return;
                }
                return;
            case 1:
                WindowMagnificationSettings windowMagnificationSettings2 = (WindowMagnificationSettings) this.f$0;
                WindowManager.LayoutParams layoutParams = windowMagnificationSettings2.mParams;
                layoutParams.x = (windowMagnificationSettings2.mDraggableWindowBounds.width() - windowMagnificationSettings2.mSettingView.getWidth()) / 2;
                if (windowMagnificationSettings2.mSettingView.getWindowToken() != null) {
                    windowMagnificationSettings2.mWindowManager.updateViewLayout(windowMagnificationSettings2.mSettingView, layoutParams);
                    return;
                }
                return;
            case 2:
                ((WindowMagnificationSettings) this.f$0).mMagnifierSizeTv.performAccessibilityAction(64, null);
                return;
            case 3:
                WindowMagnificationSettings windowMagnificationSettings3 = (WindowMagnificationSettings) this.f$0;
                windowMagnificationSettings3.mSettingView.setSystemGestureExclusionRects(Collections.singletonList(new Rect(0, 0, windowMagnificationSettings3.mSettingView.getWidth(), windowMagnificationSettings3.mSettingView.getHeight())));
                return;
            default:
                ((WindowMagnificationSettings.AnonymousClass1) this.f$0).this$0.updateUIControlsIfNeeded();
                return;
        }
    }
}
