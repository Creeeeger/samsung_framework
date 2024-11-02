package com.android.systemui.statusbar.phone.fragment;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarVisibilityModel {
    public static final Companion Companion = new Companion(null);
    public final boolean showClock;
    public final boolean showNotificationIcons;
    public final boolean showOngoingCallChip;
    public final boolean showSystemInfo;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static StatusBarVisibilityModel createModelFromFlags(int i, int i2) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4 = true;
            if ((8388608 & i) == 0) {
                z = true;
            } else {
                z = false;
            }
            if ((131072 & i) == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((67108864 & i) == 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((i & QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING) != 0 || (i2 & 2) != 0) {
                z4 = false;
            }
            return new StatusBarVisibilityModel(z, z2, z3, z4);
        }
    }

    public StatusBarVisibilityModel(boolean z, boolean z2, boolean z3, boolean z4) {
        this.showClock = z;
        this.showNotificationIcons = z2;
        this.showOngoingCallChip = z3;
        this.showSystemInfo = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StatusBarVisibilityModel)) {
            return false;
        }
        StatusBarVisibilityModel statusBarVisibilityModel = (StatusBarVisibilityModel) obj;
        if (this.showClock == statusBarVisibilityModel.showClock && this.showNotificationIcons == statusBarVisibilityModel.showNotificationIcons && this.showOngoingCallChip == statusBarVisibilityModel.showOngoingCallChip && this.showSystemInfo == statusBarVisibilityModel.showSystemInfo) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int i = 1;
        boolean z = this.showClock;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        boolean z2 = this.showNotificationIcons;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.showOngoingCallChip;
        int i6 = z3;
        if (z3 != 0) {
            i6 = 1;
        }
        int i7 = (i5 + i6) * 31;
        boolean z4 = this.showSystemInfo;
        if (!z4) {
            i = z4 ? 1 : 0;
        }
        return i7 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StatusBarVisibilityModel(showClock=");
        sb.append(this.showClock);
        sb.append(", showNotificationIcons=");
        sb.append(this.showNotificationIcons);
        sb.append(", showOngoingCallChip=");
        sb.append(this.showOngoingCallChip);
        sb.append(", showSystemInfo=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.showSystemInfo, ")");
    }
}
