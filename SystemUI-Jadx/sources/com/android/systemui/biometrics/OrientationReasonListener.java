package com.android.systemui.biometrics;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.os.Handler;
import com.android.systemui.biometrics.BiometricDisplayListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class OrientationReasonListener {
    public final BiometricDisplayListener orientationListener;
    public int reason;

    public OrientationReasonListener(Context context, DisplayManager displayManager, Handler handler, FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal, final Function1 function1, int i) {
        this.reason = i;
        this.orientationListener = new BiometricDisplayListener(context, displayManager, handler, new BiometricDisplayListener.SensorType.SideFingerprint(fingerprintSensorPropertiesInternal), new Function0() { // from class: com.android.systemui.biometrics.OrientationReasonListener$orientationListener$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Function1.this.invoke(Integer.valueOf(this.reason));
                return Unit.INSTANCE;
            }
        });
    }
}
