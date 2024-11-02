package com.android.systemui.coverlauncher.widget;

import android.app.ActivityTaskManager;
import android.app.IActivityTaskManager;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.android.systemui.coverlauncher.utils.CoverLauncherPackageUtils;
import com.android.systemui.coverlauncher.utils.CoverLauncherWidgetOptions;
import com.android.systemui.coverlauncher.widget.CoverLauncherWidgetViewController;
import com.samsung.android.core.CoreSaLogger;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class CoverLauncherLargeWidgetProvider extends AppWidgetProvider {
    public static final HashMap sDimension = new HashMap();
    public static final HashMap sWidgetOptions = new HashMap();
    public CoverLauncherPackageUtils mCoverLauncherPackageUtil;

    public static void updateAppWidgetView(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        CoverLauncherWidgetViewController coverLauncherWidgetViewController = CoverLauncherWidgetViewController.getInstance(context);
        coverLauncherWidgetViewController.getClass();
        new Thread(new CoverLauncherWidgetViewController.AnonymousClass2(iArr, appWidgetManager)).start();
    }

    public int getProviderType() {
        return 0;
    }

    public HashMap getWidgetOptions() {
        return sWidgetOptions;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
    
        if (r0 != false) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0086  */
    @Override // android.appwidget.AppWidgetProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onAppWidgetOptionsChanged(android.content.Context r12, android.appwidget.AppWidgetManager r13, int r14, android.os.Bundle r15) {
        /*
            r11 = this;
            java.util.HashMap r0 = r11.getWidgetOptions()
            int r1 = r11.getProviderType()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r14)
            java.lang.Object r2 = r0.get(r2)
            com.android.systemui.coverlauncher.utils.CoverLauncherWidgetOptions r2 = (com.android.systemui.coverlauncher.utils.CoverLauncherWidgetOptions) r2
            r3 = 0
            if (r2 != 0) goto L23
            java.lang.Integer r2 = java.lang.Integer.valueOf(r14)
            com.android.systemui.coverlauncher.utils.CoverLauncherWidgetOptions r4 = new com.android.systemui.coverlauncher.utils.CoverLauncherWidgetOptions
            r5 = 0
            r4.<init>(r3, r5, r3, r1)
            r0.put(r2, r4)
            r2 = r4
        L23:
            java.lang.String r0 = "visible"
            boolean r0 = r15.getBoolean(r0, r3)
            boolean r1 = r2.mVisibleOption
            java.lang.String r4 = ", type="
            java.lang.String r5 = ", id="
            java.lang.String r6 = "CoverLauncherWidgetProvider"
            r7 = 1
            int r8 = r2.mType
            if (r0 == r1) goto L5a
            java.lang.String r1 = "visible changed to "
            java.lang.StringBuilder r1 = com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0.m(r1, r0, r5, r14, r4)
            androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0.m(r1, r8, r6)
            r2.mVisibleOption = r0
            if (r0 != 0) goto L46
            goto L58
        L46:
            android.content.ContentResolver r0 = r12.getContentResolver()
            java.lang.String r1 = "notification_badging"
            int r0 = android.provider.Settings.Secure.getInt(r0, r1, r3)
            if (r0 == 0) goto L55
            r0 = r7
            goto L56
        L55:
            r0 = r3
        L56:
            if (r0 == 0) goto L5a
        L58:
            r0 = r7
            goto L5b
        L5a:
            r0 = r3
        L5b:
            java.lang.String r1 = "appIconPackageName"
            java.lang.String r1 = r15.getString(r1)
            java.lang.String r9 = r2.mAppIconPkgOption
            boolean r9 = java.util.Objects.equals(r1, r9)
            if (r9 != 0) goto L86
            java.lang.String r9 = "appIcon pkg is updated to "
            java.lang.String r10 = " from"
            java.lang.StringBuilder r9 = androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0.m(r9, r1, r10)
            java.lang.String r10 = r2.mAppIconPkgOption
            r9.append(r10)
            r9.append(r5)
            r9.append(r14)
            r9.append(r4)
            androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0.m(r9, r8, r6)
            r2.mAppIconPkgOption = r1
            r1 = r7
            goto L87
        L86:
            r1 = r3
        L87:
            java.lang.String r9 = "config_ui_mode"
            int r15 = r15.getInt(r9, r3)
            int r3 = r2.mUiModeOption
            if (r15 == r3) goto L9d
            java.lang.String r1 = "Ui mode is changed to "
            java.lang.StringBuilder r1 = androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0.m(r1, r15, r5, r14, r4)
            androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0.m(r1, r8, r6)
            r2.mUiModeOption = r15
            goto L9e
        L9d:
            r7 = r1
        L9e:
            if (r7 == 0) goto La4
            r11.updateAppWidgetViewWithProvider(r12, r13)
            goto Lad
        La4:
            if (r0 == 0) goto Lad
            int[] r11 = new int[]{r14}
            updateAppWidgetView(r12, r13, r11)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider.onAppWidgetOptionsChanged(android.content.Context, android.appwidget.AppWidgetManager, int, android.os.Bundle):void");
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        Log.i("CoverLauncherWidgetProvider", "onDeleted, id=" + Arrays.toString(iArr) + ", type=" + getProviderType());
        for (int i : iArr) {
            getWidgetOptions().remove(Integer.valueOf(i));
        }
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, final Intent intent) {
        Bundle extras;
        PackageInfo packageInfo;
        super.onReceive(context, intent);
        String action = intent.getAction();
        Log.i("CoverLauncherWidgetProvider", "onReceive : " + action);
        if ("action_launch_app".equals(action)) {
            if (this.mCoverLauncherPackageUtil == null) {
                this.mCoverLauncherPackageUtil = new CoverLauncherPackageUtils(context);
            }
            final String stringExtra = intent.getStringExtra("key_package_name");
            CoverLauncherPackageUtils coverLauncherPackageUtils = this.mCoverLauncherPackageUtil;
            coverLauncherPackageUtils.getClass();
            try {
                packageInfo = coverLauncherPackageUtils.mPackageManager.getPackageInfo(stringExtra, 0);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("CoverLauncherPackageUtils", "Failed to get packageInfo " + stringExtra, e);
                coverLauncherPackageUtils.tryUpdateAppWidget();
                packageInfo = null;
            }
            if (packageInfo == null) {
                Log.i("CoverLauncherWidgetProvider", "packageInfo is null : " + stringExtra);
                updateAppWidgetViewWithProvider(context, AppWidgetManager.getInstance(context));
                return;
            }
            HashMap hashMap = sDimension;
            hashMap.clear();
            hashMap.put("app_name", packageInfo.packageName);
            CoreSaLogger.logForSystemUI("CVSE1045", hashMap);
            new Thread(new Runnable() { // from class: com.android.systemui.coverlauncher.widget.CoverLauncherLargeWidgetProvider.1
                @Override // java.lang.Runnable
                public final void run() {
                    IActivityTaskManager service = ActivityTaskManager.getService();
                    try {
                        service.startActivityForCoverLauncherAsUser(CoverLauncherLargeWidgetProvider.this.mCoverLauncherPackageUtil.mPackageManager.getLaunchIntentForPackage(stringExtra), "CoverLauncherWidgetProvider", intent.getIntExtra("key_profile_id", 0));
                    } catch (RemoteException e2) {
                        Log.e("CoverLauncherWidgetProvider", "Failed to launch package " + stringExtra, e2);
                    }
                }
            }).start();
            return;
        }
        if ("com.samsung.settings.ACTION_UPDATE_WIDGET".equals(action) && (extras = intent.getExtras()) != null) {
            int[] intArray = extras.getIntArray("appWidgetIds");
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            Log.i("CoverLauncherWidgetProvider", "update widget from settings, id=" + Arrays.toString(intArray));
            updateAppWidgetView(context, appWidgetManager, intArray);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        Log.i("CoverLauncherWidgetProvider", "onUpdate, id=" + Arrays.toString(iArr) + ", type=" + getProviderType());
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            HashMap widgetOptions = getWidgetOptions();
            int providerType = getProviderType();
            if (((CoverLauncherWidgetOptions) widgetOptions.get(Integer.valueOf(i2))) == null) {
                widgetOptions.put(Integer.valueOf(i2), new CoverLauncherWidgetOptions(false, null, 0, providerType));
            }
        }
        updateAppWidgetView(context, appWidgetManager, iArr);
    }

    public void updateAppWidgetViewWithProvider(Context context, AppWidgetManager appWidgetManager) {
        updateAppWidgetView(context, appWidgetManager, appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) CoverLauncherLargeWidgetProvider.class)));
    }
}
