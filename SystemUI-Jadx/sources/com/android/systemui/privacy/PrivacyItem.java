package com.android.systemui.privacy;

import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import com.android.app.motiontool.TraceMetadata$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PrivacyItem {
    public final PrivacyApplication application;
    public final String log;
    public final boolean paused;
    public final PrivacyType privacyType;
    public final long timeStampElapsed;

    public PrivacyItem(PrivacyType privacyType, PrivacyApplication privacyApplication, long j, boolean z) {
        this.privacyType = privacyType;
        this.application = privacyApplication;
        this.timeStampElapsed = j;
        this.paused = z;
        StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("(", privacyType.getLogName(), ", ");
        m.append(privacyApplication.packageName);
        m.append("(");
        m.append(privacyApplication.uid);
        m.append("), ");
        m.append(j);
        m.append(", paused=");
        m.append(z);
        m.append(")");
        this.log = m.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivacyItem)) {
            return false;
        }
        PrivacyItem privacyItem = (PrivacyItem) obj;
        if (this.privacyType == privacyItem.privacyType && Intrinsics.areEqual(this.application, privacyItem.application) && this.timeStampElapsed == privacyItem.timeStampElapsed && this.paused == privacyItem.paused) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = TraceMetadata$$ExternalSyntheticOutline0.m(this.timeStampElapsed, (this.application.hashCode() + (this.privacyType.hashCode() * 31)) * 31, 31);
        boolean z = this.paused;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        return "PrivacyItem(privacyType=" + this.privacyType + ", application=" + this.application + ", timeStampElapsed=" + this.timeStampElapsed + ", paused=" + this.paused + ")";
    }

    public /* synthetic */ PrivacyItem(PrivacyType privacyType, PrivacyApplication privacyApplication, long j, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(privacyType, privacyApplication, (i & 4) != 0 ? -1L : j, (i & 8) != 0 ? false : z);
    }
}
