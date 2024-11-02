package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.app.NotificationManager;
import android.net.Uri;
import com.android.systemui.plugins.subscreen.SubRoom;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NotificationManagerWrapper {
    private static final NotificationManagerWrapper sInstance = new NotificationManagerWrapper();
    private static final NotificationManager mNotificationManager = (NotificationManager) AppGlobals.getInitialApplication().getSystemService(SubRoom.EXTRA_VALUE_NOTIFICATION);

    private NotificationManagerWrapper() {
    }

    public static NotificationManagerWrapper getInstance() {
        return sInstance;
    }

    public int getZenMode() {
        return mNotificationManager.getZenMode();
    }

    public void setZenMode(int i, Uri uri, String str) {
        mNotificationManager.setZenMode(i, uri, str);
    }
}
