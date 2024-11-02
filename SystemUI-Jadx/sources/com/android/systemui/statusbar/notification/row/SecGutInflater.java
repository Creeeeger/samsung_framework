package com.android.systemui.statusbar.notification.row;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.systemui.R;
import com.android.systemui.statusbar.notification.row.NotificationGuts;
import com.android.systemui.statusbar.notification.row.NotificationMenuRow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecGutInflater {
    public static NotificationMenuRow.NotificationMenuItem createNotificationMenuItem(int i, Context context, int i2) {
        return new NotificationMenuRow.NotificationMenuItem(context, context.getResources().getString(i), (NotificationGuts.GutsContent) LayoutInflater.from(context).inflate(i2, (ViewGroup) null, false), R.drawable.quickpanel_ic_snooze);
    }
}
