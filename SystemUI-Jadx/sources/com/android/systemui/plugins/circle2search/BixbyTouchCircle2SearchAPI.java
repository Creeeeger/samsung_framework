package com.android.systemui.plugins.circle2search;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BixbyTouchCircle2SearchAPI {
    public static final String BIXBY_TOUCH_PKG_NAME = "com.samsung.android.bixbytouch";
    private static final String BIXBY_TOUCH_SCROLL_DETECT_UI_SERVICE = "com.samsung.android.bixbytouch.service.ScrollDetectUIService";
    private static final String BIXBY_TOUCH_SHOW_CP_CARDS_ACTIVITY = "com.samsung.android.bixbytouch.activity.ShowCPCardsActivity";
    private static final String BIXBY_TOUCH_WELCOME_PAGE_ACTIVITY = "com.samsung.android.bixbytouch.activity.WelcomePageActivity";
    public static final boolean DEBUG = false;
    private static final int DEFAULT_SIZE_FOR_CHECK_RUNNING_TOP_ACTIVITY = 1;
    private static final int SIZE_FOR_CHECK_RUNNING_TOP_ACTIVITY_IN_GESTURE_MODE = 2;
    public static final String START_CIRCLE_TO_SEARCH_ACTION = "com.samsung.android.bixbytouch.ACTION_START_CIRCLE_TO_SEARCH";
    public static final String TAG = "BixbyTouchCircle2SearchAPI";
    public static final int VALUE_ON = 1;
    private static ActivityManager sActivityManager;

    private static ActivityManager getActivityManager(Context context) {
        if (sActivityManager == null) {
            sActivityManager = (ActivityManager) context.getSystemService("activity");
        }
        return sActivityManager;
    }

    public static void invokeCircle2Search(Context context) {
        try {
            Intent intent = new Intent(START_CIRCLE_TO_SEARCH_ACTION);
            intent.setPackage(BIXBY_TOUCH_PKG_NAME);
            context.startServiceAsUser(intent, UserHandle.CURRENT);
        } catch (Exception e) {
            Log.e(TAG, "invokeCircle2Search", e);
        }
    }

    public static boolean isLaunchingCircle2Search(Context context, boolean z) {
        int i;
        List<ActivityManager.RunningServiceInfo> runningServices;
        ActivityManager activityManager = getActivityManager(context);
        if (z) {
            i = 2;
        } else {
            i = 1;
        }
        boolean z2 = false;
        for (ActivityManager.RunningTaskInfo runningTaskInfo : activityManager.getRunningTasks(i)) {
            ComponentName componentName = runningTaskInfo.topActivity;
            if (componentName != null && BIXBY_TOUCH_PKG_NAME.equals(componentName.getPackageName()) && (BIXBY_TOUCH_SHOW_CP_CARDS_ACTIVITY.equals(componentName.getClassName()) || BIXBY_TOUCH_WELCOME_PAGE_ACTIVITY.equals(componentName.getClassName()))) {
                z2 = runningTaskInfo.isVisible();
            }
        }
        if (!z2 && (runningServices = getActivityManager(context).getRunningServices(Integer.MAX_VALUE)) != null) {
            Iterator<ActivityManager.RunningServiceInfo> it = runningServices.iterator();
            while (it.hasNext()) {
                if (BIXBY_TOUCH_SCROLL_DETECT_UI_SERVICE.equals(it.next().service.getClassName())) {
                    return true;
                }
            }
        }
        return z2;
    }
}
