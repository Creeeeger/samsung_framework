package com.android.systemui.biometrics;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import com.android.settingslib.udfps.UdfpsOverlayParams;
import com.android.systemui.R;
import com.android.systemui.biometrics.UdfpsController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class UdfpsController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ UdfpsController$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                UdfpsController udfpsController = (UdfpsController) this.f$0;
                Point point = (Point) this.f$1;
                UdfpsControllerOverlay udfpsControllerOverlay = udfpsController.mOverlay;
                if (udfpsControllerOverlay == null) {
                    Log.e("UdfpsController", "touch outside sensor area receivedbut serverRequest is null");
                    return;
                }
                boolean z2 = udfpsControllerOverlay.touchExplorationEnabled;
                int i = point.x;
                int i2 = point.y;
                UdfpsOverlayParams udfpsOverlayParams = udfpsControllerOverlay.overlayParams;
                udfpsControllerOverlay.udfpsUtils.getClass();
                if (z2) {
                    String[] stringArray = udfpsControllerOverlay.context.getResources().getStringArray(R.array.udfps_accessibility_touch_hints);
                    if (stringArray.length != 4) {
                        Log.e("UdfpsUtils", "expected exactly 4 touch hints, got " + stringArray.length + "?");
                        return;
                    }
                    float f = udfpsOverlayParams.scaleFactor;
                    Rect rect = udfpsOverlayParams.sensorBounds;
                    float centerX = rect.centerX() / f;
                    double atan2 = Math.atan2((rect.centerY() / f) - i2, i - centerX);
                    if (atan2 < 0.0d) {
                        atan2 += 6.283185307179586d;
                    }
                    double length = 360.0d / stringArray.length;
                    int degrees = ((int) ((((length / 2.0d) + Math.toDegrees(atan2)) % 360.0d) / length)) % stringArray.length;
                    int i3 = udfpsOverlayParams.rotation;
                    if (i3 == 1) {
                        degrees = (degrees + 1) % stringArray.length;
                    }
                    if (i3 == 3) {
                        degrees = (degrees + 3) % stringArray.length;
                    }
                    String str = stringArray[degrees];
                    return;
                }
                return;
            default:
                UdfpsController.UdfpsOverlayController udfpsOverlayController = (UdfpsController.UdfpsOverlayController) this.f$0;
                String str2 = (String) this.f$1;
                UdfpsControllerOverlay udfpsControllerOverlay2 = UdfpsController.this.mOverlay;
                if (udfpsControllerOverlay2 != null) {
                    UdfpsView udfpsView = udfpsControllerOverlay2.overlayView;
                    if (udfpsView != null) {
                        z = false;
                    }
                    if (!z) {
                        udfpsView.debugMessage = str2;
                        udfpsView.postInvalidate();
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
