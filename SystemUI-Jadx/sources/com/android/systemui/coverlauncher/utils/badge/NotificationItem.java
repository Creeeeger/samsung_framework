package com.android.systemui.coverlauncher.utils.badge;

import java.io.Serializable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class NotificationItem implements Serializable {
    public int count;
    public String info;
    public String key;

    public NotificationItem(String str, String str2, int i) {
        this.key = str;
        this.info = str2;
        this.count = Math.max(1, i);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof NotificationItem)) {
            return false;
        }
        return ((NotificationItem) obj).key.equals(this.key);
    }

    public final String toString() {
        return "key=" + this.key + ", count=" + this.count;
    }
}
