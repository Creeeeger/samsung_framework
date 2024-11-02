package com.samsung.android.settingslib.applications;

import android.icu.text.UnicodeSet;
import android.icu.text.UnicodeSetSpanner;
import android.icu.util.MeasureUnit;
import java.lang.reflect.Constructor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AppFileSizeFormatter {
    public static final MeasureUnit PETABYTE;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class RoundedBytesResult {
        public final int fractionDigits;
        public final MeasureUnit units;
        public final float value;

        private RoundedBytesResult(float f, MeasureUnit measureUnit, int i, long j) {
            this.value = f;
            this.units = measureUnit;
            this.fractionDigits = i;
        }

        public static RoundedBytesResult roundBytes(long j) {
            boolean z;
            long j2;
            int i = 0;
            if (j < 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                j = -j;
            }
            float f = (float) j;
            MeasureUnit measureUnit = MeasureUnit.BYTE;
            if (f > 900.0f) {
                measureUnit = MeasureUnit.KILOBYTE;
                f /= 1000.0f;
                j2 = 1000;
            } else {
                j2 = 1;
            }
            if (f > 900.0f) {
                measureUnit = MeasureUnit.MEGABYTE;
                j2 *= 1000;
                f /= 1000.0f;
            }
            if (f > 900.0f) {
                measureUnit = MeasureUnit.GIGABYTE;
                j2 *= 1000;
                f /= 1000.0f;
            }
            if (f > 900.0f) {
                measureUnit = MeasureUnit.TERABYTE;
                j2 *= 1000;
                f /= 1000.0f;
            }
            if (f > 900.0f) {
                measureUnit = AppFileSizeFormatter.PETABYTE;
                j2 *= 1000;
                f /= 1000.0f;
            }
            MeasureUnit measureUnit2 = measureUnit;
            if (j2 != 1 && f < 100.0f) {
                int i2 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
                i = 2;
            }
            int i3 = i;
            if (z) {
                f = -f;
            }
            return new RoundedBytesResult(f, measureUnit2, i3, 0L);
        }
    }

    static {
        new UnicodeSetSpanner(new UnicodeSet("[[:Zs:][:Cf:]]").freeze());
        try {
            Constructor declaredConstructor = MeasureUnit.class.getDeclaredConstructor(String.class, String.class);
            declaredConstructor.setAccessible(true);
            PETABYTE = (MeasureUnit) declaredConstructor.newInstance("digital", "petabyte");
        } catch (ReflectiveOperationException e) {
            throw new RuntimeException("Failed to create petabyte MeasureUnit", e);
        }
    }
}
