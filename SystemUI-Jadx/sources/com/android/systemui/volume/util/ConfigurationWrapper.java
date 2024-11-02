package com.android.systemui.volume.util;

import android.content.Context;
import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.volume.VolumeDependency;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConfigurationWrapper {
    public final Context context;
    public int density;
    public int displayType;
    public float fontScale;
    public Locale locale;
    public final LogWrapper log;
    public boolean nightMode;
    public int orientation;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public ConfigurationWrapper(VolumeDependency volumeDependency) {
        Context context = (Context) volumeDependency.get(Context.class);
        this.context = context;
        LogWrapper logWrapper = (LogWrapper) volumeDependency.get(LogWrapper.class);
        this.log = logWrapper;
        this.nightMode = ContextUtils.isNightMode(context);
        ContextUtils.INSTANCE.getClass();
        this.orientation = context.getResources().getConfiguration().orientation;
        this.density = context.getResources().getConfiguration().densityDpi;
        this.fontScale = context.getResources().getConfiguration().fontScale;
        this.locale = context.getResources().getConfiguration().locale;
        this.displayType = context.getResources().getConfiguration().semDisplayDeviceType;
        logWrapper.d("ConfigurationWrapper", String.valueOf(this));
    }

    public final boolean isDensityOrFontScaleChanged() {
        boolean z;
        ContextUtils.INSTANCE.getClass();
        Context context = this.context;
        int i = context.getResources().getConfiguration().densityDpi;
        float f = context.getResources().getConfiguration().fontScale;
        Locale locale = context.getResources().getConfiguration().locale;
        boolean isNightMode = ContextUtils.isNightMode(context);
        LogWrapper logWrapper = this.log;
        logWrapper.d("ConfigurationWrapper", "this=" + this + " / density=" + i + ", fontScale=" + f + ", locale=" + locale + ", nightMode=" + isNightMode);
        if (i == this.density) {
            if (f == this.fontScale) {
                z = true;
            } else {
                z = false;
            }
            if (z && locale == this.locale && isNightMode == this.nightMode) {
                return false;
            }
        }
        logWrapper.d("ConfigurationWrapper", "density or font or scale has been changed!");
        this.density = i;
        this.fontScale = f;
        this.locale = locale;
        this.nightMode = isNightMode;
        return true;
    }

    public final boolean isDisplayTypeChanged() {
        boolean z;
        ContextUtils.INSTANCE.getClass();
        Integer valueOf = Integer.valueOf(this.context.getResources().getConfiguration().semDisplayDeviceType);
        if (this.displayType != valueOf.intValue()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            valueOf = null;
        }
        if (valueOf == null) {
            return false;
        }
        this.displayType = valueOf.intValue();
        return true;
    }

    public final boolean isOrientationChanged() {
        boolean z;
        ContextUtils.INSTANCE.getClass();
        Integer valueOf = Integer.valueOf(this.context.getResources().getConfiguration().orientation);
        if (this.orientation != valueOf.intValue()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            valueOf = null;
        }
        if (valueOf == null) {
            return false;
        }
        this.orientation = valueOf.intValue();
        this.log.d("ConfigurationWrapper", "orientation has been changed!");
        return true;
    }

    public final String toString() {
        boolean z = this.nightMode;
        int i = this.orientation;
        int i2 = this.density;
        float f = this.fontScale;
        Locale locale = this.locale;
        int i3 = this.displayType;
        StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("[ nightMode=", z, ", orientation=", i, ", density=");
        m.append(i2);
        m.append(", fontScale=");
        m.append(f);
        m.append(", locale=");
        m.append(locale);
        m.append(", displayType=");
        m.append(i3);
        m.append(" ]");
        return m.toString();
    }
}
