package com.android.systemui.classifier;

import android.provider.DeviceConfig;
import com.android.systemui.classifier.FalsingClassifier;
import com.android.systemui.util.DeviceConfigProxy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DiagonalClassifier extends FalsingClassifier {
    public final float mHorizontalAngleRange;
    public final float mVerticalAngleRange;

    public DiagonalClassifier(FalsingDataProvider falsingDataProvider, DeviceConfigProxy deviceConfigProxy) {
        super(falsingDataProvider);
        deviceConfigProxy.getClass();
        this.mHorizontalAngleRange = DeviceConfig.getFloat("systemui", "brightline_falsing_diagonal_horizontal_angle_range", 0.08726646f);
        this.mVerticalAngleRange = DeviceConfig.getFloat("systemui", "brightline_falsing_diagonal_horizontal_angle_range", 0.08726646f);
    }

    public static boolean angleBetween(float f, float f2, float f3) {
        if (f2 < 0.0f) {
            f2 = (f2 % 6.2831855f) + 6.2831855f;
        } else if (f2 > 6.2831855f) {
            f2 %= 6.2831855f;
        }
        if (f3 < 0.0f) {
            f3 = (f3 % 6.2831855f) + 6.2831855f;
        } else if (f3 > 6.2831855f) {
            f3 %= 6.2831855f;
        }
        if (f2 > f3) {
            if (f >= f2 || f <= f3) {
                return true;
            }
            return false;
        }
        if (f >= f2 && f <= f3) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.classifier.FalsingClassifier
    public final FalsingClassifier.Result calculateFalsingResult(int i) {
        boolean z;
        FalsingDataProvider falsingDataProvider = this.mDataProvider;
        falsingDataProvider.recalculateData();
        float f = falsingDataProvider.mAngle;
        if (f == Float.MAX_VALUE) {
            return FalsingClassifier.Result.passed(0.0d);
        }
        if (i != 5 && i != 6) {
            float f2 = this.mHorizontalAngleRange;
            float f3 = 0.7853982f - f2;
            float f4 = f2 + 0.7853982f;
            if (!falsingDataProvider.isHorizontal()) {
                float f5 = this.mVerticalAngleRange;
                f3 = 0.7853982f - f5;
                f4 = f5 + 0.7853982f;
            }
            if (!angleBetween(f, f3, f4) && !angleBetween(f, f3 + 1.5707964f, f4 + 1.5707964f) && !angleBetween(f, f3 - 1.5707964f, f4 - 1.5707964f) && !angleBetween(f, f3 + 3.1415927f, f4 + 3.1415927f)) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                falsingDataProvider.recalculateData();
                return falsed(0.5d, String.format(null, "{angle=%f, vertical=%s}", Float.valueOf(falsingDataProvider.mAngle), Boolean.valueOf(!falsingDataProvider.isHorizontal())));
            }
            return FalsingClassifier.Result.passed(0.5d);
        }
        return FalsingClassifier.Result.passed(0.0d);
    }
}
