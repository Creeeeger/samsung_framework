package com.android.systemui.plugins;

import android.content.res.Resources;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ClockEvents {
    void onColorPaletteChanged(Resources resources);

    void onLocaleChanged(Locale locale);

    void onSeedColorChanged(Integer num);

    void onTimeFormatChanged(boolean z);

    void onTimeZoneChanged(TimeZone timeZone);

    void onWeatherDataChanged(WeatherData weatherData);
}
