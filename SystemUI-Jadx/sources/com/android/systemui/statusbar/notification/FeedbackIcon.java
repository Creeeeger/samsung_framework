package com.android.systemui.statusbar.notification;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FeedbackIcon {
    public final int contentDescRes;
    public final int iconRes;

    public FeedbackIcon(int i, int i2) {
        this.iconRes = i;
        this.contentDescRes = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedbackIcon)) {
            return false;
        }
        FeedbackIcon feedbackIcon = (FeedbackIcon) obj;
        if (this.iconRes == feedbackIcon.iconRes && this.contentDescRes == feedbackIcon.contentDescRes) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.contentDescRes) + (Integer.hashCode(this.iconRes) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FeedbackIcon(iconRes=");
        sb.append(this.iconRes);
        sb.append(", contentDescRes=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.contentDescRes, ")");
    }
}
