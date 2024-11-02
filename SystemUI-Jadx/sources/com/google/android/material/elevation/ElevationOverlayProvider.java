package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import com.android.systemui.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ElevationOverlayProvider {
    public static final int OVERLAY_ACCENT_COLOR_ALPHA = (int) Math.round(5.1000000000000005d);
    public final int colorSurface;
    public final float displayDensity;
    public final int elevationOverlayAccentColor;
    public final int elevationOverlayColor;
    public final boolean elevationOverlayEnabled;

    public ElevationOverlayProvider(Context context) {
        this(MaterialAttributes.resolveBoolean(context, R.attr.elevationOverlayEnabled, false), MaterialColors.getColor(R.attr.elevationOverlayColor, context, 0), MaterialColors.getColor(R.attr.elevationOverlayAccentColor, context, 0), MaterialColors.getColor(R.attr.colorSurface, context, 0), context.getResources().getDisplayMetrics().density);
    }

    public final int compositeOverlayIfNeeded(float f, int i) {
        boolean z;
        float f2;
        int i2;
        if (this.elevationOverlayEnabled) {
            if (ColorUtils.setAlphaComponent(i, 255) == this.colorSurface) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (this.displayDensity > 0.0f && f > 0.0f) {
                    f2 = Math.min(((((float) Math.log1p(f / r1)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
                } else {
                    f2 = 0.0f;
                }
                int alpha = Color.alpha(i);
                int layer = MaterialColors.layer(f2, ColorUtils.setAlphaComponent(i, 255), this.elevationOverlayColor);
                if (f2 > 0.0f && (i2 = this.elevationOverlayAccentColor) != 0) {
                    layer = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i2, OVERLAY_ACCENT_COLOR_ALPHA), layer);
                }
                return ColorUtils.setAlphaComponent(layer, alpha);
            }
        }
        return i;
    }

    public ElevationOverlayProvider(boolean z, int i, int i2, int i3, float f) {
        this.elevationOverlayEnabled = z;
        this.elevationOverlayColor = i;
        this.elevationOverlayAccentColor = i2;
        this.colorSurface = i3;
        this.displayDensity = f;
    }
}
