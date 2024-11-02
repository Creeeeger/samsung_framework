package com.android.systemui.volume.util;

import android.content.Context;
import android.hardware.display.SemDlnaDevice;
import android.hardware.display.SemWifiDisplay;
import android.hardware.display.SemWifiDisplayStatus;
import android.view.Display;
import com.android.systemui.basic.util.LogWrapper;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DisplayManagerWrapper {
    public final Context context;
    public int displayCurrentVolume;
    public final LogWrapper logWrapper;
    public int minSmartViewVol = -1;
    public int maxSmartViewVol = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public DisplayManagerWrapper(Context context, LogWrapper logWrapper) {
        this.context = context;
        this.logWrapper = logWrapper;
    }

    public final Display getFrontCameraDisplay() {
        boolean z;
        SystemServiceExtension.INSTANCE.getClass();
        Display[] displays = SystemServiceExtension.getDisplayManager(this.context).getDisplays("com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY");
        if (displays.length == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return null;
        }
        return displays[0];
    }

    public final Display getFrontSubDisplay() {
        boolean z;
        SystemServiceExtension.INSTANCE.getClass();
        Display[] displays = SystemServiceExtension.getDisplayManager(this.context).getDisplays("com.samsung.android.hardware.display.category.BUILTIN");
        if (displays.length > 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            displays = null;
        }
        if (displays == null) {
            return null;
        }
        return displays[1];
    }

    public final String getSmartViewDeviceName() {
        SemDlnaDevice semGetActiveDlnaDevice;
        boolean z;
        SystemServiceExtension.INSTANCE.getClass();
        Context context = this.context;
        SemWifiDisplayStatus semGetWifiDisplayStatus = SystemServiceExtension.getDisplayManager(context).semGetWifiDisplayStatus();
        if (semGetWifiDisplayStatus != null) {
            if (semGetWifiDisplayStatus.getActiveDisplayState() == 2) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                semGetWifiDisplayStatus = null;
            }
            if (semGetWifiDisplayStatus != null) {
                SemWifiDisplay activeDisplay = semGetWifiDisplayStatus.getActiveDisplay();
                if (activeDisplay == null) {
                    return null;
                }
                return activeDisplay.getDeviceName();
            }
        }
        if (SystemServiceExtension.getDisplayManager(context).semGetActiveDlnaState() != 1 || (semGetActiveDlnaDevice = SystemServiceExtension.getDisplayManager(context).semGetActiveDlnaDevice()) == null) {
            return null;
        }
        return semGetActiveDlnaDevice.getDeviceName();
    }

    public final boolean isValidPlayerType() {
        int dlnaType;
        SystemServiceExtension.INSTANCE.getClass();
        SemDlnaDevice semGetActiveDlnaDevice = SystemServiceExtension.getDisplayManager(this.context).semGetActiveDlnaDevice();
        if (semGetActiveDlnaDevice != null && ((dlnaType = semGetActiveDlnaDevice.getDlnaType()) == 0 || dlnaType == 2 || dlnaType == 3)) {
            return true;
        }
        return false;
    }

    public final void toggleWifiDisplayMute() {
        SystemServiceExtension.INSTANCE.getClass();
        Context context = this.context;
        if (SystemServiceExtension.getDisplayManager(context).semGetWifiDisplayConfiguration("muvo") instanceof Boolean) {
            SystemServiceExtension.getDisplayManager(context).semSetWifiDisplayConfiguration("mkev", !((Boolean) r0).booleanValue());
        }
    }
}
