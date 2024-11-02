package com.android.systemui.monet.hct;

import com.android.systemui.monet.utils.ColorUtils;
import com.android.systemui.monet.utils.MathUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Hct {
    public int argb;
    public double chroma;
    public double hue;
    public double tone;

    private Hct(int i) {
        this.argb = i;
        Cam16 fromInt = Cam16.fromInt(i);
        this.hue = fromInt.hue;
        this.chroma = fromInt.chroma;
        this.tone = (ColorUtils.labF(MathUtils.matrixMultiply(new double[]{ColorUtils.linearized((i >> 16) & 255), ColorUtils.linearized((i >> 8) & 255), ColorUtils.linearized(i & 255)}, ColorUtils.SRGB_TO_XYZ)[1] / 100.0d) * 116.0d) - 16.0d;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x01d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.systemui.monet.hct.Hct from(double r43, double r45, double r47) {
        /*
            Method dump skipped, instructions count: 1030
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.monet.hct.Hct.from(double, double, double):com.android.systemui.monet.hct.Hct");
    }

    public static Hct fromInt(int i) {
        return new Hct(i);
    }
}
