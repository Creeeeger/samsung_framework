package com.android.systemui.statusbar.policy;

import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSClockBellSound {
    public final String DateText;
    public final boolean Demo;
    public final String QuickStarDateText;
    public final String ShortDateText;
    public final boolean ShowSecondsClock;
    public final String TimeContentDescription;
    public final String TimeText;
    public final String TimeTextWithSeconds;

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

    public QSClockBellSound(String str, String str2, String str3, String str4, boolean z, String str5, boolean z2, String str6) {
        this.TimeText = str;
        this.TimeContentDescription = str2;
        this.DateText = str3;
        this.ShortDateText = str4;
        this.Demo = z;
        this.TimeTextWithSeconds = str5;
        this.ShowSecondsClock = z2;
        this.QuickStarDateText = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QSClockBellSound)) {
            return false;
        }
        QSClockBellSound qSClockBellSound = (QSClockBellSound) obj;
        if (Intrinsics.areEqual(this.TimeText, qSClockBellSound.TimeText) && Intrinsics.areEqual(this.TimeContentDescription, qSClockBellSound.TimeContentDescription) && Intrinsics.areEqual(this.DateText, qSClockBellSound.DateText) && Intrinsics.areEqual(this.ShortDateText, qSClockBellSound.ShortDateText) && this.Demo == qSClockBellSound.Demo && Intrinsics.areEqual(this.TimeTextWithSeconds, qSClockBellSound.TimeTextWithSeconds) && this.ShowSecondsClock == qSClockBellSound.ShowSecondsClock && Intrinsics.areEqual(this.QuickStarDateText, qSClockBellSound.QuickStarDateText)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.ShortDateText, AppInfo$$ExternalSyntheticOutline0.m(this.DateText, AppInfo$$ExternalSyntheticOutline0.m(this.TimeContentDescription, this.TimeText.hashCode() * 31, 31), 31), 31);
        int i = 1;
        boolean z = this.Demo;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int m2 = AppInfo$$ExternalSyntheticOutline0.m(this.TimeTextWithSeconds, (m + i2) * 31, 31);
        boolean z2 = this.ShowSecondsClock;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return this.QuickStarDateText.hashCode() + ((m2 + i) * 31);
    }

    public final String toString() {
        return "QSClockBellSound - TimeText:" + this.TimeText + ", TimeContentDescription:" + this.TimeContentDescription + ", DateText:" + this.DateText + ", ShortDateText:" + this.ShortDateText + ", Demo:" + this.Demo + ", QuickStar-Second(" + this.ShowSecondsClock + "|" + this.TimeTextWithSeconds + "), QuickStar-DateText:" + this.QuickStarDateText;
    }
}
