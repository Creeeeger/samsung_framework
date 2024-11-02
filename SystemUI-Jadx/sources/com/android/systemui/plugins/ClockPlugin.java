package com.android.systemui.plugins;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.view.View;
import com.android.systemui.plugins.annotations.ProvidesInterface;
import java.util.TimeZone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(action = ClockPlugin.ACTION, version = 5)
@Deprecated
/* loaded from: classes2.dex */
public interface ClockPlugin extends Plugin {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_CLOCK";
    public static final int VERSION = 5;

    default View getBigClockView() {
        return null;
    }

    String getName();

    int getPreferredY(int i);

    Bitmap getPreview(int i, int i2);

    Bitmap getThumbnail();

    String getTitle();

    View getView();

    void onDestroyView();

    void setStyle(Paint.Style style);

    void setTextColor(int i);

    default boolean shouldShowStatusArea() {
        return true;
    }

    default void onTimeFormatChanged(String str) {
    }

    default void onTimeZoneChanged(TimeZone timeZone) {
    }

    default void setDarkAmount(float f) {
    }

    default void onTimeTick() {
    }

    default void setColorPalette(boolean z, int[] iArr) {
    }
}
