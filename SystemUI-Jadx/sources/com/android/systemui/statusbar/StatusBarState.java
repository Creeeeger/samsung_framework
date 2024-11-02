package com.android.systemui.statusbar;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarState {
    public static String toString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("UNKNOWN: ", i);
                }
                return "SHADE_LOCKED";
            }
            return "KEYGUARD";
        }
        return "SHADE";
    }
}
