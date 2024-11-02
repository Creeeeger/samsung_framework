package com.android.systemui.subscreen;

import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.TaskInfo;
import android.content.ComponentName;
import android.os.RemoteException;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import com.android.systemui.subscreen.SubScreenManager;
import com.android.systemui.util.SettingsHelper;
import java.util.List;
import java.util.Stack;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SubScreenManager$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SubScreenManager$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ComponentName componentName;
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                SubScreenManager subScreenManager = (SubScreenManager) this.f$0;
                subScreenManager.getClass();
                Log.d("SubScreenManager", "requestPluginConnection() PluginFaceWidget is connected");
                subScreenManager.addPluginListener();
                return;
            case 1:
                SubScreenManager subScreenManager2 = (SubScreenManager) this.f$0;
                boolean z2 = true;
                List<ActivityManager.RunningTaskInfo> runningTasks = subScreenManager2.mActivityManager.getRunningTasks(1);
                if (!runningTasks.isEmpty() && (componentName = ((TaskInfo) runningTasks.get(0)).topActivity) != null) {
                    z2 = true ^ subScreenManager2.isShowWhenCoverLocked(componentName);
                }
                if (z2) {
                    subScreenManager2.startSubHomeActivity();
                    return;
                }
                return;
            case 2:
                SubScreenManager subScreenManager3 = (SubScreenManager) this.f$0;
                List<ActivityManager.RunningTaskInfo> runningTasks2 = subScreenManager3.mActivityManager.getRunningTasks(10);
                Stack stack = subScreenManager3.mTaskStack;
                stack.clear();
                for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks2) {
                    if (!"com.android.systemui.subscreen.SubHomeActivity".equals(runningTaskInfo.topActivity.getClassName())) {
                        String packageName = runningTaskInfo.topActivity.getPackageName();
                        try {
                            z = ActivityTaskManager.getService().isPackageEnabledForCoverLauncher(packageName, UserHandle.semGetCallingUserId());
                            Log.i("SubScreenManager", "Cover Launcher Check Top App pkg  " + packageName + " cover app Enabled  : " + z);
                        } catch (RemoteException e) {
                            Log.i("SubScreenManager", "isCoverLauncherActivity RemoteException " + e.getMessage());
                            z = false;
                        }
                        if (z) {
                            Log.i("SubScreenManager", "Push to Stack task : " + runningTaskInfo.topActivity);
                            stack.push(runningTaskInfo);
                        }
                    } else {
                        subScreenManager3.startSubHomeActivity();
                        return;
                    }
                }
                subScreenManager3.startSubHomeActivity();
                return;
            default:
                SubScreenManager.AnonymousClass4 anonymousClass4 = (SubScreenManager.AnonymousClass4) this.f$0;
                SubScreenManager subScreenManager4 = SubScreenManager.this;
                SubScreenManager.AnonymousClass5 anonymousClass5 = subScreenManager4.mHandler;
                if (anonymousClass5.hasMessages(1000)) {
                    anonymousClass5.removeMessages(1000);
                }
                int intValue = ((SettingsHelper) subScreenManager4.mSettingsHelperLazy.get()).mItemLists.get("cover_screen_timeout").getIntValue() * 1000;
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("sendTurnOffScreenSmartCover() send Message screen after ", intValue, " , ");
                m.append(subScreenManager4.mActivity);
                Log.i("SubScreenManager", m.toString());
                anonymousClass5.sendMessageDelayed(anonymousClass5.obtainMessage(1000), intValue);
                SubScreenManager subScreenManager5 = SubScreenManager.this;
                subScreenManager5.startSubHomeActivity(subScreenManager5.mSubDisplay);
                return;
        }
    }
}
