package com.android.systemui.statusbar.policy;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface DevicePostureController extends CallbackController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
        void onPostureChanged(int i);
    }

    static String devicePostureToString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("UNSUPPORTED POSTURE posture=", i);
                        }
                        return "DEVICE_POSTURE_FLIPPED";
                    }
                    return "DEVICE_POSTURE_OPENED";
                }
                return "DEVICE_POSTURE_HALF_OPENED";
            }
            return "DEVICE_POSTURE_CLOSED";
        }
        return "DEVICE_POSTURE_UNKNOWN";
    }
}
