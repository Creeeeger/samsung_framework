package com.android.systemui.qs.bar;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VideoCallMicModeStates {
    public final boolean micModeEnabled;
    public final boolean videoCallEnabled;
    public final boolean voIpTranslatorEnabled;

    public VideoCallMicModeStates(boolean z, boolean z2, boolean z3) {
        this.videoCallEnabled = z;
        this.voIpTranslatorEnabled = z2;
        this.micModeEnabled = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoCallMicModeStates)) {
            return false;
        }
        VideoCallMicModeStates videoCallMicModeStates = (VideoCallMicModeStates) obj;
        if (this.videoCallEnabled == videoCallMicModeStates.videoCallEnabled && this.voIpTranslatorEnabled == videoCallMicModeStates.voIpTranslatorEnabled && this.micModeEnabled == videoCallMicModeStates.micModeEnabled) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int i = 1;
        boolean z = this.videoCallEnabled;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        boolean z2 = this.voIpTranslatorEnabled;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.micModeEnabled;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        return i5 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VideoCallMicModeStates(videoCallEnabled=");
        sb.append(this.videoCallEnabled);
        sb.append(", voIpTranslatorEnabled=");
        sb.append(this.voIpTranslatorEnabled);
        sb.append(", micModeEnabled=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.micModeEnabled, ")");
    }
}
