package com.android.settingslib.graph;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import com.android.settingslib.Utils;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
class BluetoothDeviceLayerDrawable$BatteryMeterDrawable extends BatteryMeterDrawableBase {
    public final float mAspectRatio;
    int mFrameColor;

    public BluetoothDeviceLayerDrawable$BatteryMeterDrawable(Context context, int i, int i2) {
        super(context, i);
        Resources resources = context.getResources();
        final int i3 = 1;
        this.mButtonHeightFraction = resources.getFraction(R.fraction.bt_battery_button_height_fraction, 1, 1);
        this.mAspectRatio = resources.getFraction(R.fraction.bt_battery_ratio_fraction, 1, 1);
        final int i4 = 0;
        setColorFilter(new PorterDuffColorFilter(Utils.getColorAttrDefaultColor(android.R.attr.colorControlNormal, context, 0), PorterDuff.Mode.SRC_IN));
        this.mLevel = i2;
        unscheduleSelf(new Runnable() { // from class: com.android.settingslib.graph.BatteryMeterDrawableBase$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                switch (i4) {
                    case 0:
                    default:
                        this.invalidateSelf();
                        return;
                }
            }
        });
        scheduleSelf(new Runnable() { // from class: com.android.settingslib.graph.BatteryMeterDrawableBase$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                switch (i3) {
                    case 0:
                    default:
                        this.invalidateSelf();
                        return;
                }
            }
        }, 0L);
        this.mFrameColor = i;
    }

    @Override // com.android.settingslib.graph.BatteryMeterDrawableBase
    public final float getAspectRatio() {
        return this.mAspectRatio;
    }

    @Override // com.android.settingslib.graph.BatteryMeterDrawableBase
    public final float getRadiusRatio() {
        return 0.0f;
    }
}
