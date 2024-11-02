package com.android.systemui.globalactions.features;

import android.view.SemBlurInfo;
import android.view.View;
import com.samsung.android.globalactions.presentation.strategies.ViewInflateStrategy;
import com.samsung.android.globalactions.util.ConditionChecker;
import com.samsung.android.globalactions.util.ScreenCaptureUtil;
import com.samsung.android.globalactions.util.SystemConditions;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CapturedBlurStrategy implements ViewInflateStrategy {
    public final ScreenCaptureUtil mCaptureUtil;
    public final ConditionChecker mConditionChecker;

    public CapturedBlurStrategy(ScreenCaptureUtil screenCaptureUtil, ConditionChecker conditionChecker) {
        this.mCaptureUtil = screenCaptureUtil;
        this.mConditionChecker = conditionChecker;
    }

    public final void onInflateView(View view) {
        int i;
        SemBlurInfo.Builder bitmap = new SemBlurInfo.Builder(1).setBitmap(this.mCaptureUtil.takeScreenShot());
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_WHITE_THEME)) {
            i = 12;
        } else {
            i = 15;
        }
        view.semSetBlurInfo(bitmap.setColorCurvePreset(i).setRadius(60).build());
    }
}
