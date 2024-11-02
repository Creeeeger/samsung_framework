package com.android.systemui.statusbar.notification.logging;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationObjectUsage {
    public final int bigPicture;
    public final int extender;
    public final int extras;
    public final boolean hasCustomView;
    public final int largeIcon;
    public final int smallIcon;
    public final int style;
    public final int styleIcon;

    public NotificationObjectUsage(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.smallIcon = i;
        this.largeIcon = i2;
        this.extras = i3;
        this.style = i4;
        this.styleIcon = i5;
        this.bigPicture = i6;
        this.extender = i7;
        this.hasCustomView = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationObjectUsage)) {
            return false;
        }
        NotificationObjectUsage notificationObjectUsage = (NotificationObjectUsage) obj;
        if (this.smallIcon == notificationObjectUsage.smallIcon && this.largeIcon == notificationObjectUsage.largeIcon && this.extras == notificationObjectUsage.extras && this.style == notificationObjectUsage.style && this.styleIcon == notificationObjectUsage.styleIcon && this.bigPicture == notificationObjectUsage.bigPicture && this.extender == notificationObjectUsage.extender && this.hasCustomView == notificationObjectUsage.hasCustomView) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.extender, AppInfoViewData$$ExternalSyntheticOutline0.m(this.bigPicture, AppInfoViewData$$ExternalSyntheticOutline0.m(this.styleIcon, AppInfoViewData$$ExternalSyntheticOutline0.m(this.style, AppInfoViewData$$ExternalSyntheticOutline0.m(this.extras, AppInfoViewData$$ExternalSyntheticOutline0.m(this.largeIcon, Integer.hashCode(this.smallIcon) * 31, 31), 31), 31), 31), 31), 31);
        boolean z = this.hasCustomView;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NotificationObjectUsage(smallIcon=");
        sb.append(this.smallIcon);
        sb.append(", largeIcon=");
        sb.append(this.largeIcon);
        sb.append(", extras=");
        sb.append(this.extras);
        sb.append(", style=");
        sb.append(this.style);
        sb.append(", styleIcon=");
        sb.append(this.styleIcon);
        sb.append(", bigPicture=");
        sb.append(this.bigPicture);
        sb.append(", extender=");
        sb.append(this.extender);
        sb.append(", hasCustomView=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.hasCustomView, ")");
    }
}
