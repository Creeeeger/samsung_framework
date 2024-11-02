package com.android.systemui.biometrics.udfps;

import android.graphics.Point;
import android.graphics.Rect;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.android.systemui.biometrics.EllipseOverlapDetectorParams;
import kotlin.internal.ProgressionUtilKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EllipseOverlapDetector implements OverlapDetector {
    public final EllipseOverlapDetectorParams params;

    public EllipseOverlapDetector(EllipseOverlapDetectorParams ellipseOverlapDetectorParams) {
        this.params = ellipseOverlapDetectorParams;
    }

    @Override // com.android.systemui.biometrics.udfps.OverlapDetector
    public final boolean isGoodOverlap(NormalizedTouchData normalizedTouchData, Rect rect, Rect rect2) {
        EllipseOverlapDetectorParams ellipseOverlapDetectorParams;
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        String str2;
        SensorPixelPosition sensorPixelPosition;
        int i5;
        int i6;
        boolean z;
        boolean z2;
        Rect rect3 = rect;
        if (normalizedTouchData.isWithinBounds(rect)) {
            return true;
        }
        boolean z3 = false;
        if (!normalizedTouchData.isWithinBounds(rect2)) {
            return false;
        }
        int i7 = rect3.top;
        int i8 = rect3.bottom;
        EllipseOverlapDetectorParams ellipseOverlapDetectorParams2 = this.params;
        int i9 = ellipseOverlapDetectorParams2.stepSize;
        String str3 = ".";
        String str4 = "Step must be positive, was: ";
        if (i9 > 0) {
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(i7, i8, i9);
            if (i7 <= progressionLastElement) {
                i = 0;
                i2 = 0;
                while (true) {
                    int i10 = rect3.left;
                    int i11 = rect3.right;
                    int i12 = ellipseOverlapDetectorParams2.stepSize;
                    if (i12 > 0) {
                        int progressionLastElement2 = ProgressionUtilKt.getProgressionLastElement(i10, i11, i12);
                        if (i10 <= progressionLastElement2) {
                            while (true) {
                                int centerX = rect.centerX();
                                int centerY = rect.centerY();
                                int width = rect.width() / 2;
                                int i13 = centerX - i10;
                                int i14 = centerY - i7;
                                int i15 = (i14 * i14) + (i13 * i13);
                                float f = i15;
                                str = str3;
                                str2 = str4;
                                float f2 = width * ellipseOverlapDetectorParams2.targetSize;
                                if (f <= f2 * f2) {
                                    sensorPixelPosition = SensorPixelPosition.TARGET;
                                } else if (i15 <= width * width) {
                                    sensorPixelPosition = SensorPixelPosition.SENSOR;
                                } else {
                                    sensorPixelPosition = SensorPixelPosition.OUTSIDE;
                                }
                                if (sensorPixelPosition != SensorPixelPosition.OUTSIDE) {
                                    int i16 = i + 1;
                                    Point point = new Point(i10, i7);
                                    double d = normalizedTouchData.orientation;
                                    float cos = (float) Math.cos(d);
                                    float f3 = point.x;
                                    ellipseOverlapDetectorParams = ellipseOverlapDetectorParams2;
                                    float f4 = normalizedTouchData.x;
                                    float f5 = (f3 - f4) * cos;
                                    i5 = i10;
                                    i6 = progressionLastElement2;
                                    float sin = (float) Math.sin(d);
                                    float f6 = point.y;
                                    i4 = i9;
                                    float f7 = normalizedTouchData.y;
                                    float f8 = (f6 - f7) * sin;
                                    i3 = i7;
                                    boolean z4 = z3;
                                    float sin2 = (point.x - f4) * ((float) Math.sin(d));
                                    float cos2 = (point.y - f7) * ((float) Math.cos(d));
                                    float f9 = f5 + f8;
                                    float f10 = 2;
                                    float f11 = normalizedTouchData.minor / f10;
                                    float f12 = sin2 - cos2;
                                    float f13 = normalizedTouchData.major / f10;
                                    if (((f12 * f12) / (f13 * f13)) + ((f9 * f9) / (f11 * f11)) <= 1.0f) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (z) {
                                        i2++;
                                        if (sensorPixelPosition == SensorPixelPosition.TARGET) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        z3 = z4 | z2;
                                    } else {
                                        z3 = z4;
                                    }
                                    i = i16;
                                } else {
                                    ellipseOverlapDetectorParams = ellipseOverlapDetectorParams2;
                                    i4 = i9;
                                    i5 = i10;
                                    i6 = progressionLastElement2;
                                    i3 = i7;
                                }
                                int i17 = i5;
                                if (i17 == i6) {
                                    break;
                                }
                                str3 = str;
                                progressionLastElement2 = i6;
                                i7 = i3;
                                ellipseOverlapDetectorParams2 = ellipseOverlapDetectorParams;
                                i9 = i4;
                                str4 = str2;
                                i10 = i17 + i12;
                            }
                        } else {
                            i3 = i7;
                            ellipseOverlapDetectorParams = ellipseOverlapDetectorParams2;
                            i4 = i9;
                            str = str3;
                            str2 = str4;
                        }
                        if (i3 == progressionLastElement) {
                            break;
                        }
                        i7 = i3 + i4;
                        str3 = str;
                        rect3 = rect;
                        str4 = str2;
                        ellipseOverlapDetectorParams2 = ellipseOverlapDetectorParams;
                        i9 = i4;
                    } else {
                        throw new IllegalArgumentException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m(str4, i12, str3));
                    }
                }
            } else {
                ellipseOverlapDetectorParams = ellipseOverlapDetectorParams2;
                z3 = false;
                i = 0;
                i2 = 0;
            }
            if (i2 / i >= ellipseOverlapDetectorParams.minOverlap && z3) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException(LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("Step must be positive, was: ", i9, "."));
    }
}
