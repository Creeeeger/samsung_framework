package com.android.systemui.plugins;

import android.graphics.drawable.Drawable;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ClockProvider {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static ClockController createClock(ClockProvider clockProvider, String str) {
            return clockProvider.createClock(new ClockSettings(str, null));
        }
    }

    ClockController createClock(ClockSettings clockSettings);

    ClockController createClock(String str);

    Drawable getClockThumbnail(String str);

    List<ClockMetadata> getClocks();
}
