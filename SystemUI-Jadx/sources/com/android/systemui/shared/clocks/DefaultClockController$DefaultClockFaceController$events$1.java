package com.android.systemui.shared.clocks;

import android.graphics.Rect;
import com.android.systemui.plugins.ClockFaceEvents;
import com.android.systemui.shared.clocks.DefaultClockController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DefaultClockController$DefaultClockFaceController$events$1 implements ClockFaceEvents {
    public final /* synthetic */ DefaultClockController.DefaultClockFaceController this$0;

    public DefaultClockController$DefaultClockFaceController$events$1(DefaultClockController.DefaultClockFaceController defaultClockFaceController) {
        this.this$0 = defaultClockFaceController;
    }

    @Override // com.android.systemui.plugins.ClockFaceEvents
    public final void onFontSettingChanged(float f) {
        DefaultClockController.DefaultClockFaceController defaultClockFaceController = this.this$0;
        defaultClockFaceController.view.setTextSize(0, f);
        defaultClockFaceController.recomputePadding(defaultClockFaceController.targetRegion);
    }

    @Override // com.android.systemui.plugins.ClockFaceEvents
    public final void onRegionDarknessChanged(boolean z) {
        DefaultClockController.DefaultClockFaceController defaultClockFaceController = this.this$0;
        defaultClockFaceController.isRegionDark = z;
        defaultClockFaceController.updateColor();
    }

    @Override // com.android.systemui.plugins.ClockFaceEvents
    public final void onTargetRegionChanged(Rect rect) {
        DefaultClockController.DefaultClockFaceController defaultClockFaceController = this.this$0;
        defaultClockFaceController.targetRegion = rect;
        defaultClockFaceController.recomputePadding(rect);
    }

    @Override // com.android.systemui.plugins.ClockFaceEvents
    public final void onTimeTick() {
        this.this$0.view.refreshTime();
    }
}
