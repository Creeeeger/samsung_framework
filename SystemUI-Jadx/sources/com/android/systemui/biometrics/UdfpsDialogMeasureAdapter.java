package com.android.systemui.biometrics;

import android.hardware.biometrics.SensorLocationInternal;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UdfpsDialogMeasureAdapter {
    public static final boolean DEBUG;
    public int mBottomSpacerHeight;
    public final FingerprintSensorPropertiesInternal mSensorProps;
    public final ViewGroup mView;
    public final WindowManager mWindowManager;

    static {
        boolean z;
        if (!Build.IS_USERDEBUG && !Build.IS_ENG) {
            z = false;
        } else {
            z = true;
        }
        DEBUG = z;
    }

    public UdfpsDialogMeasureAdapter(ViewGroup viewGroup, FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal) {
        this.mView = viewGroup;
        this.mSensorProps = fingerprintSensorPropertiesInternal;
        this.mWindowManager = (WindowManager) viewGroup.getContext().getSystemService(WindowManager.class);
    }

    public static int calculateBottomSpacerHeightForLandscape(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = ((((i + i2) + i3) + i4) - (i5 + i6)) - i7;
        if (DEBUG) {
            StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("Title height: ", i, ", Subtitle height: ", i2, ", Description height: ");
            AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i3, ", Top spacer height: ", i4, ", Text indicator height: ");
            AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i5, ", Button bar height: ", i6, ", Navbar bottom inset: ");
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(m, i7, ", Bottom spacer height (landscape): ", i8, "UdfpsDialogMeasurementAdapter");
        }
        return i8;
    }

    public static int calculateBottomSpacerHeightForPortrait(FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal, int i, int i2, int i3, int i4, int i5, float f) {
        SensorLocationInternal location = fingerprintSensorPropertiesInternal.getLocation();
        int i6 = (i - ((int) (location.sensorLocationY * f))) - ((int) (location.sensorRadius * f));
        int i7 = (((i6 - i2) - i3) - i4) - i5;
        if (DEBUG) {
            StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("Display height: ", i, ", Distance from bottom: ", i6, ", Bottom margin: ");
            AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i4, ", Navbar bottom inset: ", i5, ", Bottom spacer height (portrait): ");
            m.append(i7);
            m.append(", Scale Factor: ");
            m.append(f);
            Log.d("UdfpsDialogMeasurementAdapter", m.toString());
        }
        return i7;
    }

    public static int calculateHorizontalSpacerWidthForLandscape(FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal, int i, int i2, int i3, float f) {
        SensorLocationInternal location = fingerprintSensorPropertiesInternal.getLocation();
        int i4 = (i - ((int) (location.sensorLocationY * f))) - ((int) (location.sensorRadius * f));
        int i5 = (i4 - i2) - i3;
        if (DEBUG) {
            StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("Display width: ", i, ", Distance from edge: ", i4, ", Dialog margin: ");
            AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i2, ", Navbar horizontal inset: ", i3, ", Horizontal spacer width (landscape): ");
            m.append(i5);
            m.append(", Scale Factor: ");
            m.append(f);
            Log.d("UdfpsDialogMeasurementAdapter", m.toString());
        }
        return i5;
    }

    public final int getSensorDiameter(float f) {
        return (int) (f * this.mSensorProps.getLocation().sensorRadius * 2.0f);
    }

    public final int getViewHeightPx(int i) {
        View findViewById = this.mView.findViewById(i);
        if (findViewById != null && findViewById.getVisibility() != 8) {
            return findViewById.getMeasuredHeight();
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0140 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x024e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.systemui.biometrics.AuthDialog.LayoutParams onMeasureInternal(int r23, int r24, com.android.systemui.biometrics.AuthDialog.LayoutParams r25, float r26) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.UdfpsDialogMeasureAdapter.onMeasureInternal(int, int, com.android.systemui.biometrics.AuthDialog$LayoutParams, float):com.android.systemui.biometrics.AuthDialog$LayoutParams");
    }
}
