package com.android.wm.shell.freeform;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import com.samsung.android.multiwindow.SmartPopupViewUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SmartPopupViewService extends NotificationListenerService {
    public static final /* synthetic */ int $r8$clinit = 0;
    public SmartPopupViewPackageListObserver mSmartPopupViewPackageListObserver;
    public int mZenMode = 0;
    public AnonymousClass1 mPackageRemovedReceiver = null;
    public final List mEnabledList = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SmartPopupViewPackageListObserver extends ContentObserver {
        public final Uri mSmartPopupViewPackageListUri;
        public final Uri mZenModeUri;

        public SmartPopupViewPackageListObserver() {
            super(null);
            Uri uriFor = Settings.Secure.getUriFor("floating_noti_package_list");
            this.mSmartPopupViewPackageListUri = uriFor;
            Uri uriFor2 = Settings.Global.getUriFor("zen_mode");
            this.mZenModeUri = uriFor2;
            loadingEnabledListFromDB();
            SmartPopupViewService.this.getContentResolver().registerContentObserver(uriFor, false, this, -1);
            int i = Settings.Global.getInt(SmartPopupViewService.this.getContentResolver(), "zen_mode", 0);
            if (SmartPopupViewService.this.mZenMode != i) {
                SmartPopupViewService.this.mZenMode = i;
            }
            SmartPopupViewService.this.getContentResolver().registerContentObserver(uriFor2, false, this, -1);
        }

        public final void loadingEnabledListFromDB() {
            List packageStrListFromDB = SmartPopupViewUtil.getPackageStrListFromDB(SmartPopupViewService.this.getContext());
            Iterator it = ((ArrayList) SmartPopupViewService.this.mEnabledList).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!packageStrListFromDB.contains(str)) {
                    FreeformContainerManager.getInstance(SmartPopupViewService.this).mH.sendMessage(24, str);
                }
            }
            ((ArrayList) SmartPopupViewService.this.mEnabledList).clear();
            ((ArrayList) SmartPopupViewService.this.mEnabledList).addAll(packageStrListFromDB);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            if (this.mSmartPopupViewPackageListUri.equals(uri)) {
                loadingEnabledListFromDB();
            }
            if (this.mZenModeUri.equals(uri)) {
                int i = Settings.Global.getInt(SmartPopupViewService.this.getContentResolver(), "zen_mode", 0);
                SmartPopupViewService smartPopupViewService = SmartPopupViewService.this;
                if (smartPopupViewService.mZenMode != i) {
                    smartPopupViewService.mZenMode = i;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.wm.shell.freeform.SmartPopupViewService$1] */
    @Override // android.service.notification.NotificationListenerService, android.app.Service
    public final IBinder onBind(Intent intent) {
        Log.i("FreeformContainer", "[SmartPopupViewService] onBind()");
        try {
            registerAsSystemService(this, new ComponentName(this, (Class<?>) SmartPopupViewService.class), -2);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        this.mSmartPopupViewPackageListObserver = new SmartPopupViewPackageListObserver();
        this.mPackageRemovedReceiver = new BroadcastReceiver() { // from class: com.android.wm.shell.freeform.SmartPopupViewService.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent2) {
                String action = intent2.getAction();
                boolean booleanExtra = intent2.getBooleanExtra("android.intent.extra.REPLACING", false);
                if ("android.intent.action.PACKAGE_REMOVED".equals(action) && !booleanExtra) {
                    Uri data = intent2.getData();
                    Objects.requireNonNull(data);
                    String[] split = data.toString().split(":");
                    for (String str : split) {
                    }
                    String str2 = split[1];
                    if (str2 != null) {
                        SmartPopupViewService smartPopupViewService = SmartPopupViewService.this;
                        int i = SmartPopupViewService.$r8$clinit;
                        if (((ArrayList) smartPopupViewService.mEnabledList).contains(str2)) {
                            Log.i("FreeformContainer", "[SmartPopupViewService] mPackageRemovedReceiver remove : ".concat(str2));
                            ((ArrayList) SmartPopupViewService.this.mEnabledList).remove(str2);
                            SmartPopupViewUtil.putPackageStrListToDB(SmartPopupViewService.this.getContext(), SmartPopupViewService.this.mEnabledList);
                        }
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.mPackageRemovedReceiver, intentFilter, 2);
        FreeformContainerManager.getInstance(this).mH.sendMessage(21);
        return super.onBind(intent);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // android.service.notification.NotificationListenerService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onNotificationPosted(android.service.notification.StatusBarNotification r7, android.service.notification.NotificationListenerService.RankingMap r8) {
        /*
            r6 = this;
            java.lang.String r0 = r7.getPackageName()
            android.app.Notification r1 = r7.getNotification()
            java.lang.String r2 = r7.getKey()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "[SmartPopupViewService] onNotificationPosted: "
            r3.<init>(r4)
            r3.append(r7)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "FreeformContainer"
            android.util.Log.i(r4, r3)
            android.service.notification.NotificationListenerService$Ranking r3 = new android.service.notification.NotificationListenerService$Ranking
            r3.<init>()
            java.lang.String r7 = r7.getKey()
            r8.getRanking(r7, r3)
            int r7 = r6.mZenMode
            r8 = 1
            r5 = 0
            if (r7 == 0) goto L3b
            int r7 = r3.getSuppressedVisualEffects()
            r7 = r7 & 16
            if (r7 == 0) goto L3b
            r7 = r8
            goto L3c
        L3b:
            r7 = r5
        L3c:
            if (r7 == 0) goto L56
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r8 = "[SmartPopupViewService] SuppressedVisibleEffects now. mZenMode="
            r7.<init>(r8)
            int r6 = r6.mZenMode
            java.lang.String r6 = android.provider.Settings.Global.zenModeToString(r6)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            android.util.Log.d(r4, r6)
            return
        L56:
            if (r0 == 0) goto Lb4
            if (r1 == 0) goto Lb4
            if (r2 != 0) goto L5d
            goto Lb4
        L5d:
            java.util.List r7 = r6.mEnabledList
            java.util.ArrayList r7 = (java.util.ArrayList) r7
            boolean r7 = r7.contains(r0)
            if (r7 != 0) goto L68
            goto Lb9
        L68:
            android.app.PendingIntent r7 = r1.contentIntent
            if (r7 == 0) goto Lb0
            boolean r3 = r7.isActivity()
            if (r3 != 0) goto L73
            goto Lb0
        L73:
            java.lang.String r7 = r1.category
            if (r7 == 0) goto L8c
            java.lang.String r3 = "progress"
            boolean r7 = r7.equals(r3)
            if (r7 != 0) goto Lb9
            java.lang.String r7 = r1.category
            java.lang.String r3 = "service"
            boolean r7 = r7.equals(r3)
            if (r7 == 0) goto L8c
            goto Lb9
        L8c:
            boolean r7 = r1.isGroupSummary()
            if (r7 == 0) goto L98
            java.lang.String r7 = "[SmartPopupViewService] isSmartPopupViewTarget: group summary notification is not target"
            android.util.Log.w(r4, r7)
            goto Lb9
        L98:
            boolean r7 = r1.isForegroundService()
            if (r7 == 0) goto La4
            java.lang.String r7 = "[SmartPopupViewService] isSmartPopupViewTarget: forgroundservice notification is not target"
            android.util.Log.w(r4, r7)
            goto Lb9
        La4:
            boolean r7 = r1.isBubbleNotification()
            if (r7 == 0) goto Lba
            java.lang.String r7 = "[SmartPopupViewService] isSmartPopupViewTarget: Freeform notification is not target"
            android.util.Log.w(r4, r7)
            goto Lb9
        Lb0:
            java.util.Objects.toString(r7)
            goto Lb9
        Lb4:
            java.lang.String r7 = "[SmartPopupViewService] isSmartPopupViewTarget: there is empty parameter"
            android.util.Log.w(r4, r7)
        Lb9:
            r8 = r5
        Lba:
            if (r8 == 0) goto Lce
            com.android.wm.shell.freeform.FreeformContainerManager r6 = com.android.wm.shell.freeform.FreeformContainerManager.getInstance(r6)
            com.android.wm.shell.freeform.SmartPopupViewItem r7 = new com.android.wm.shell.freeform.SmartPopupViewItem
            android.content.Context r8 = r6.mContext
            r7.<init>(r8, r0, r1, r2)
            com.android.wm.shell.freeform.FreeformContainerManager$H r6 = r6.mH
            r8 = 23
            r6.sendMessage(r8, r7)
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.freeform.SmartPopupViewService.onNotificationPosted(android.service.notification.StatusBarNotification, android.service.notification.NotificationListenerService$RankingMap):void");
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        Log.i("FreeformContainer", "[SmartPopupViewService] onNotificationRemoved: " + statusBarNotification);
        FreeformContainerManager.getInstance(this).mH.sendMessage(24, statusBarNotification.getPackageName());
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        Log.i("FreeformContainer", "[SmartPopupViewService] onUnbind()");
        getContentResolver().unregisterContentObserver(this.mSmartPopupViewPackageListObserver);
        unregisterReceiver(this.mPackageRemovedReceiver);
        FreeformContainerManager.getInstance(this).mH.sendMessage(22);
        try {
            unregisterAsSystemService();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return super.onUnbind(intent);
    }
}
