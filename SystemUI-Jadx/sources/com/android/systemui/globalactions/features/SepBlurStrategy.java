package com.android.systemui.globalactions.features;

import android.view.SemBlurInfo;
import android.view.View;
import com.samsung.android.globalactions.presentation.strategies.ViewInflateStrategy;
import com.samsung.android.globalactions.util.ConditionChecker;
import com.samsung.android.globalactions.util.SystemConditions;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SepBlurStrategy implements ViewInflateStrategy {
    public final ConditionChecker mConditionChecker;

    public SepBlurStrategy(ConditionChecker conditionChecker) {
        this.mConditionChecker = conditionChecker;
    }

    public final void onInflateView(View view) {
        int i;
        SemBlurInfo.Builder builder = new SemBlurInfo.Builder(0);
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_WHITE_THEME)) {
            i = 12;
        } else {
            i = 15;
        }
        view.semSetBlurInfo(builder.setColorCurvePreset(i).build());
    }
}
