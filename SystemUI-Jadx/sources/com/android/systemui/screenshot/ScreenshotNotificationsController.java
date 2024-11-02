package com.android.systemui.screenshot;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.UserHandle;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.android.systemui.R;
import com.android.systemui.SystemUIApplication;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenshotNotificationsController {
    public final Context mContext;
    public final NotificationManager mNotificationManager;

    public ScreenshotNotificationsController(Context context, WindowManager windowManager) {
        this.mContext = context;
        context.getResources();
        this.mNotificationManager = (NotificationManager) context.getSystemService(SubRoom.EXTRA_VALUE_NOTIFICATION);
        windowManager.getDefaultDisplay().getRealMetrics(new DisplayMetrics());
    }

    public final void notifyScreenshotError(int i) {
        Context context = this.mContext;
        Resources resources = context.getResources();
        String string = resources.getString(i);
        Notification.Builder color = new Notification.Builder(context, "ALR").setTicker(resources.getString(R.string.screenshot_failed_title)).setContentTitle(resources.getString(R.string.screenshot_failed_title)).setContentText(string).setSmallIcon(R.drawable.stat_notify_image_error).setWhen(System.currentTimeMillis()).setVisibility(1).setCategory("err").setAutoCancel(true).setColor(context.getColor(android.R.color.system_notification_accent_color));
        Intent createAdminSupportIntent = ((DevicePolicyManager) context.getSystemService("device_policy")).createAdminSupportIntent("policy_disable_screen_capture");
        if (createAdminSupportIntent != null) {
            color.setContentIntent(PendingIntent.getActivityAsUser(this.mContext, 0, createAdminSupportIntent, QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY, null, UserHandle.CURRENT));
        }
        SystemUIApplication.overrideNotificationAppName(context, color, true);
        this.mNotificationManager.notify(1, new Notification.BigTextStyle(color).bigText(string).build());
    }
}
