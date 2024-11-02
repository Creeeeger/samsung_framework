package com.android.systemui.monet.scheme;

import com.android.systemui.monet.hct.Hct;
import com.android.systemui.monet.palettes.TonalPalette;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SchemeMonochrome extends DynamicScheme {
    public SchemeMonochrome(Hct hct, boolean z, double d) {
        super(hct, Variant.MONOCHROME, z, d, TonalPalette.fromHueAndChroma(hct.hue, 0.0d), TonalPalette.fromHueAndChroma(hct.hue, 0.0d), TonalPalette.fromHueAndChroma(hct.hue, 0.0d), TonalPalette.fromHueAndChroma(hct.hue, 0.0d), TonalPalette.fromHueAndChroma(hct.hue, 0.0d));
    }
}
