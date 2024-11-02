package com.android.systemui.monet;

import com.android.internal.graphics.cam.Cam;
import com.android.systemui.monet.ColorScheme;
import java.util.List;
import kotlin.Pair;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface Hue {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class DefaultImpls {
        public static double getHueRotation(float f, List list) {
            Number number;
            int i = 0;
            if (f >= 0.0f && f < 360.0f) {
                number = Float.valueOf(f);
            } else {
                number = 0;
            }
            float floatValue = number.floatValue();
            int size = list.size() - 2;
            if (size >= 0) {
                while (true) {
                    float intValue = ((Number) ((Pair) list.get(i)).getFirst()).intValue();
                    int i2 = i + 1;
                    float intValue2 = ((Number) ((Pair) list.get(i2)).getFirst()).intValue();
                    if (intValue <= floatValue && floatValue < intValue2) {
                        ColorScheme.Companion companion = ColorScheme.Companion;
                        double doubleValue = ((Number) ((Pair) list.get(i)).getSecond()).doubleValue() + floatValue;
                        companion.getClass();
                        return ColorScheme.Companion.wrapDegreesDouble(doubleValue);
                    }
                    if (i == size) {
                        break;
                    }
                    i = i2;
                }
            }
            return f;
        }
    }

    double get(Cam cam);
}
