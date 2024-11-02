package com.android.systemui.monet.palettes;

import com.android.systemui.monet.hct.Hct;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TonalPalette {
    public final double chroma;
    public final double hue;
    public final Hct keyColor;

    private TonalPalette(double d, double d2, Hct hct) {
        new HashMap();
        this.hue = d;
        this.chroma = d2;
        this.keyColor = hct;
    }

    public static TonalPalette fromHueAndChroma(double d, double d2) {
        Hct from = Hct.from(d, d2, 50.0d);
        Hct hct = from;
        double abs = Math.abs(from.chroma - d2);
        for (double d3 = 1.0d; d3 < 50.0d && Math.round(d2) != Math.round(hct.chroma); d3 += 1.0d) {
            Hct from2 = Hct.from(d, d2, d3 + 50.0d);
            double abs2 = Math.abs(from2.chroma - d2);
            if (abs2 < abs) {
                hct = from2;
                abs = abs2;
            }
            Hct from3 = Hct.from(d, d2, 50.0d - d3);
            double abs3 = Math.abs(from3.chroma - d2);
            if (abs3 < abs) {
                hct = from3;
                abs = abs3;
            }
        }
        return new TonalPalette(d, d2, hct);
    }
}
