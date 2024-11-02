package com.android.systemui.biometrics;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.os.Handler;
import android.view.Display;
import android.view.DisplayInfo;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BiometricDisplayListener implements DisplayManager.DisplayListener {
    public final DisplayInfo cachedDisplayInfo;
    public final Context context;
    public final DisplayManager displayManager;
    public final Handler handler;
    public final Function0 onChanged;
    public final SensorType sensorType;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class SensorType {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Generic extends SensorType {
            public static final Generic INSTANCE = new Generic();

            private Generic() {
                super(null);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class SideFingerprint extends SensorType {
            public final FingerprintSensorPropertiesInternal properties;

            public SideFingerprint(FingerprintSensorPropertiesInternal fingerprintSensorPropertiesInternal) {
                super(null);
                this.properties = fingerprintSensorPropertiesInternal;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof SideFingerprint) && Intrinsics.areEqual(this.properties, ((SideFingerprint) obj).properties)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return this.properties.hashCode();
            }

            public final String toString() {
                return "SideFingerprint(properties=" + this.properties + ")";
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class UnderDisplayFingerprint extends SensorType {
            public static final UnderDisplayFingerprint INSTANCE = new UnderDisplayFingerprint();

            private UnderDisplayFingerprint() {
                super(null);
            }
        }

        private SensorType() {
        }

        public /* synthetic */ SensorType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public BiometricDisplayListener(Context context, DisplayManager displayManager, Handler handler, SensorType sensorType, Function0 function0) {
        this.context = context;
        this.displayManager = displayManager;
        this.handler = handler;
        this.sensorType = sensorType;
        this.onChanged = function0;
        this.cachedDisplayInfo = new DisplayInfo();
    }

    public final void enable() {
        Display display = this.context.getDisplay();
        if (display != null) {
            display.getDisplayInfo(this.cachedDisplayInfo);
        }
        this.displayManager.registerDisplayListener(this, this.handler, 4L);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        boolean z;
        int i2 = this.cachedDisplayInfo.rotation;
        Display display = this.context.getDisplay();
        if (display != null) {
            display.getDisplayInfo(this.cachedDisplayInfo);
        }
        if (i2 != this.cachedDisplayInfo.rotation) {
            z = true;
        } else {
            z = false;
        }
        if (this.sensorType instanceof SensorType.SideFingerprint) {
            this.onChanged.invoke();
        } else if (z) {
            this.onChanged.invoke();
        }
    }

    public /* synthetic */ BiometricDisplayListener(Context context, DisplayManager displayManager, Handler handler, SensorType sensorType, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, displayManager, handler, (i & 8) != 0 ? SensorType.Generic.INSTANCE : sensorType, function0);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
