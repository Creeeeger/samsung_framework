package com.android.systemui.assist;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.RemoteException;
import com.android.systemui.BootCompleteCache;
import com.android.systemui.BootCompleteCacheImpl;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import com.samsung.android.desktopsystemui.sharedlib.system.PackageManagerWrapper;
import com.samsung.android.nexus.video.VideoPlayer;
import dagger.Lazy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PhoneStateMonitor {
    public static final String[] DEFAULT_HOME_CHANGE_ACTIONS = {PackageManagerWrapper.ACTION_PREFERRED_ACTIVITY_CHANGED, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED"};
    public final Handler mBgHandler;
    public final Lazy mCentralSurfacesOptionalLazy;
    public final Context mContext;
    public ComponentName mDefaultHome = getCurrentDefaultHome();
    public boolean mLauncherShowing;
    public final StatusBarStateController mStatusBarStateController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.assist.PhoneStateMonitor$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            PhoneStateMonitor.this.mBgHandler.post(new PhoneStateMonitor$$ExternalSyntheticLambda2(this, 1));
        }
    }

    public PhoneStateMonitor(Context context, BroadcastDispatcher broadcastDispatcher, Lazy lazy, BootCompleteCache bootCompleteCache, Handler handler, StatusBarStateController statusBarStateController) {
        ComponentName componentName;
        this.mContext = context;
        this.mCentralSurfacesOptionalLazy = lazy;
        this.mStatusBarStateController = statusBarStateController;
        this.mBgHandler = handler;
        PhoneStateMonitor$$ExternalSyntheticLambda0 phoneStateMonitor$$ExternalSyntheticLambda0 = new PhoneStateMonitor$$ExternalSyntheticLambda0(this);
        BootCompleteCacheImpl bootCompleteCacheImpl = (BootCompleteCacheImpl) bootCompleteCache;
        if (!bootCompleteCacheImpl.bootComplete.get()) {
            synchronized (bootCompleteCacheImpl.listeners) {
                if (!bootCompleteCacheImpl.bootComplete.get()) {
                    ((ArrayList) bootCompleteCacheImpl.listeners).add(new WeakReference(phoneStateMonitor$$ExternalSyntheticLambda0));
                }
            }
        }
        IntentFilter intentFilter = new IntentFilter();
        String[] strArr = DEFAULT_HOME_CHANGE_ACTIONS;
        boolean z = false;
        for (int i = 0; i < 4; i++) {
            intentFilter.addAction(strArr[i]);
        }
        broadcastDispatcher.registerReceiver(intentFilter, new AnonymousClass1());
        ActivityManager.RunningTaskInfo runningTask = ActivityManagerWrapper.sInstance.getRunningTask();
        if (runningTask != null && (componentName = runningTask.topActivity) != null) {
            z = componentName.equals(this.mDefaultHome);
        }
        this.mLauncherShowing = z;
        TaskStackChangeListeners.INSTANCE.registerTaskStackListener(new TaskStackChangeListener() { // from class: com.android.systemui.assist.PhoneStateMonitor.2
            @Override // com.android.systemui.shared.system.TaskStackChangeListener
            public final void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) {
                boolean z2;
                ComponentName componentName2;
                PhoneStateMonitor phoneStateMonitor = PhoneStateMonitor.this;
                phoneStateMonitor.getClass();
                if (runningTaskInfo != null && (componentName2 = runningTaskInfo.topActivity) != null) {
                    z2 = componentName2.equals(phoneStateMonitor.mDefaultHome);
                } else {
                    z2 = false;
                }
                phoneStateMonitor.mLauncherShowing = z2;
            }
        });
    }

    public static ComponentName getCurrentDefaultHome() {
        ComponentName componentName;
        ArrayList arrayList = new ArrayList();
        com.android.systemui.shared.system.PackageManagerWrapper.sInstance.getClass();
        try {
            componentName = com.android.systemui.shared.system.PackageManagerWrapper.mIPackageManager.getHomeActivities(arrayList);
        } catch (RemoteException e) {
            e.printStackTrace();
            componentName = null;
        }
        if (componentName != null) {
            return componentName;
        }
        Iterator it = arrayList.iterator();
        int i = VideoPlayer.MEDIA_ERROR_SYSTEM;
        while (true) {
            ComponentName componentName2 = null;
            while (it.hasNext()) {
                ResolveInfo resolveInfo = (ResolveInfo) it.next();
                int i2 = resolveInfo.priority;
                if (i2 > i) {
                    componentName2 = resolveInfo.activityInfo.getComponentName();
                    i = resolveInfo.priority;
                } else if (i2 == i) {
                    break;
                }
            }
            return componentName2;
        }
    }

    public final int getPhoneState() {
        boolean z;
        StatusBarStateController statusBarStateController = this.mStatusBarStateController;
        int state = statusBarStateController.getState();
        boolean z2 = false;
        if (state != 1 && state != 2) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            if (statusBarStateController.isDozing()) {
                return 1;
            }
            if (((Boolean) ((Optional) this.mCentralSurfacesOptionalLazy.get()).map(new PhoneStateMonitor$$ExternalSyntheticLambda1()).orElse(Boolean.FALSE)).booleanValue()) {
                return 3;
            }
            KeyguardManager keyguardManager = (KeyguardManager) this.mContext.getSystemService(KeyguardManager.class);
            if (keyguardManager != null && keyguardManager.isKeyguardLocked()) {
                z2 = true;
            }
            if (z2) {
                return 2;
            }
            return 4;
        }
        if (this.mLauncherShowing) {
            return 5;
        }
        return 9;
    }
}
