package com.android.systemui.blur;

import android.content.Context;
import android.view.Display;
import com.android.systemui.QpRune;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class QSColorCurve {
    public final Context context;
    public float curve;
    public float fraction;
    public float minX;
    public float minY;
    public float saturation;
    public float radius = 0.0f;
    public float maxX = 255.0f;
    public float maxY = 255.0f;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
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

    public QSColorCurve(Context context) {
        this.context = context;
    }

    public final boolean isCoverDisplay() {
        boolean z;
        if (!QpRune.QUICK_PANEL_SUBSCREEN_QUICK_PANEL_WINDOW) {
            return false;
        }
        Display display = this.context.getDisplay();
        if (display != null && display.getDisplayId() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final void setFraction(float f) {
        float f2;
        boolean z;
        float f3;
        this.fraction = f;
        float f4 = 200.0f;
        if (isCoverDisplay()) {
            f2 = 348.0f;
        } else if (QpRune.QUICK_PANEL_BLUR_MASSIVE) {
            f2 = 70.0f;
        } else if (QpRune.QUICK_TABLET) {
            f2 = 200.0f;
        } else {
            f2 = 400.0f;
        }
        float f5 = 0.0f;
        this.radius = ((f2 - 0.0f) * this.fraction) + 0.0f;
        isCoverDisplay();
        float f6 = this.fraction;
        this.saturation = 0.2f * f6;
        this.curve = f6 * (-1.0f);
        boolean isCoverDisplay = isCoverDisplay();
        boolean z2 = true;
        Context context = this.context;
        if (isCoverDisplay) {
            f3 = 25.0f;
        } else {
            if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                f3 = 15.0f;
            } else {
                f3 = 0.0f;
            }
        }
        this.minX = f3 * this.fraction;
        if (!isCoverDisplay()) {
            if (QpRune.QUICK_TABLET) {
                f5 = 20.0f;
            } else {
                f5 = 38.0f;
            }
        }
        float f7 = this.fraction;
        this.minY = f5 * f7;
        this.maxX = 255.0f - (f7 * 55.0f);
        if (isCoverDisplay()) {
            f4 = 165.0f;
        } else if (QpRune.QUICK_TABLET) {
            f4 = 180.0f;
        } else {
            if ((context.getResources().getConfiguration().uiMode & 48) != 32) {
                z2 = false;
            }
            if (z2) {
                f4 = 150.0f;
            }
        }
        this.maxY = 255.0f - ((255.0f - f4) * this.fraction);
    }
}
