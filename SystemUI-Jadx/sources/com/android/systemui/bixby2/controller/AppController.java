package com.android.systemui.bixby2.controller;

import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.Instrumentation;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.QpRune;
import com.android.systemui.bixby2.CommandActionResponse;
import com.android.systemui.bixby2.actionresult.ActionResults;
import com.android.systemui.bixby2.util.ActivityLauncher;
import com.android.systemui.bixby2.util.PackageInfoBixby;
import com.android.systemui.bixby2.util.ParamsParser;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.shared.recents.model.Task$TaskKey;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.PackageManagerWrapper;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.samsung.android.desktopmode.SemDesktopModeState;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.multiwindow.MultiWindowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AppController {
    private static final int FOLDER_STATE_TENT_MODE = 1;
    private static final int INVALID_TASK = -1;
    private static final int MULTI_INSTANCE_CNT = 2;
    private static final int ORIENTATION_LANDSCAPE_270 = 3;
    private static final int ORIENTATION_LANDSCAPE_90 = 1;
    private static final int ORIENTATION_PORTRAIT_0 = 0;
    private static final int ORIENTATION_PORTRAIT_180 = 2;
    private static final int PROJECTION_AFFINITY_NAME_INDEX = 2;
    private static final int PROJECTION_COMPONENT_NAME_INDEX = 1;
    private static final int RESULT_NOT_FOUND = -1;
    private static final String TAG = "AppController";
    private static final String TASKLOCKDB = "content://com.android.quickstep.tasklock.TaskLockDB";
    private final BroadcastDispatcher mBroadcastDispatcher;
    private int mCurOrientation;
    private final DesktopManager mDesktopManager;
    private final DisplayLifecycle.Observer mDisplayLifeCycleObserver;
    private final DisplayLifecycle mDisplayLifecycle;
    List<String> mExceptionPackages;
    private final ActivityLauncher mLauncher;
    private final MultiWindowManager mMultiWindowManager;
    private final BroadcastReceiver mScreenReceiver;
    private SensorManager mSensorManager;
    private Sensor mSensorOrientation;
    private SensorEventListener mSensorOrientationListener;
    private Sensor mSensorTilt;
    private SensorEventListener mSensorTiltListener;
    private final Handler mwHandler;
    private ContentResolver mContentResolver = null;
    private boolean mSensorRegistered = false;
    private int mIsFlexMode = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class AppControlSensorOrientationListener implements SensorEventListener {
        public /* synthetic */ AppControlSensorOrientationListener(AppController appController, int i) {
            this();
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int i = (int) sensorEvent.values[0];
            ListPopupWindow$$ExternalSyntheticOutline0.m("AppControlSensorOrientationListener.onSensorChanged, Rotation: ", i, AppController.TAG);
            if (i >= 0 && i <= 3) {
                AppController.this.mCurOrientation = i;
            }
        }

        private AppControlSensorOrientationListener() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class AppControlSensorTiltListener implements SensorEventListener {
        public /* synthetic */ AppControlSensorTiltListener(AppController appController, int i) {
            this();
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int i = (int) sensorEvent.values[0];
            ListPopupWindow$$ExternalSyntheticOutline0.m("AppControlSensorTiltListener.onSensorChanged, Tilt: ", i, AppController.TAG);
            AppController.this.mIsFlexMode = i;
        }

        private AppControlSensorTiltListener() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }
    }

    public AppController(Context context, ActivityLauncher activityLauncher, DisplayLifecycle displayLifecycle, DesktopManager desktopManager, BroadcastDispatcher broadcastDispatcher) {
        this.mSensorManager = null;
        this.mSensorOrientation = null;
        int i = 0;
        this.mSensorTilt = null;
        DisplayLifecycle.Observer observer = new DisplayLifecycle.Observer() { // from class: com.android.systemui.bixby2.controller.AppController.3
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public void onFolderStateChanged(boolean z) {
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isFolderOpened = ", z, AppController.TAG);
                if (z) {
                    if (!AppController.this.mSensorRegistered) {
                        Log.d(AppController.TAG, "folderOpened : regist SensorManager ");
                        AppController.this.mSensorRegistered = true;
                        AppController.this.mSensorManager.registerListener(AppController.this.mSensorOrientationListener, AppController.this.mSensorOrientation, 3);
                        if (BasicRune.BASIC_FOLDABLE_TYPE_FLIP) {
                            AppController.this.mSensorManager.registerListener(AppController.this.mSensorTiltListener, AppController.this.mSensorTilt, 3);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (AppController.this.mSensorRegistered) {
                    Log.d(AppController.TAG, "folderClosed : unregist SensorManager ");
                    AppController.this.mSensorRegistered = false;
                    AppController.this.mSensorManager.unregisterListener(AppController.this.mSensorOrientationListener);
                    if (BasicRune.BASIC_FOLDABLE_TYPE_FLIP) {
                        AppController.this.mSensorManager.unregisterListener(AppController.this.mSensorTiltListener);
                    }
                }
            }

            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public /* bridge */ /* synthetic */ void onDisplayAdded(int i2) {
            }

            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public /* bridge */ /* synthetic */ void onDisplayChanged(int i2) {
            }

            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public /* bridge */ /* synthetic */ void onDisplayRemoved(int i2) {
            }
        };
        this.mDisplayLifeCycleObserver = observer;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.bixby2.controller.AppController.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (!"android.intent.action.SCREEN_ON".equals(action) && !"android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY".equals(action)) {
                    if ("android.intent.action.SCREEN_OFF".equals(action) || "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY".equals(action)) {
                        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("screen_off : action = ", action, AppController.TAG);
                        if ((!BasicRune.VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG || !AppController.this.isFolderClosed()) && AppController.this.mSensorRegistered) {
                            Log.d(AppController.TAG, "screen_off : unregist SensorManager ");
                            AppController.this.mSensorRegistered = false;
                            AppController.this.mSensorManager.unregisterListener(AppController.this.mSensorOrientationListener);
                            if (BasicRune.BASIC_FOLDABLE_TYPE_FLIP) {
                                AppController.this.mSensorManager.unregisterListener(AppController.this.mSensorTiltListener);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("screen_on : action = ", action, AppController.TAG);
                if ((!BasicRune.VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG || !AppController.this.isFolderClosed()) && !AppController.this.mSensorRegistered) {
                    Log.d(AppController.TAG, "screen_on : regist SensorManager ");
                    AppController.this.mSensorRegistered = true;
                    AppController.this.mSensorManager.registerListener(AppController.this.mSensorOrientationListener, AppController.this.mSensorOrientation, 3);
                    if (BasicRune.BASIC_FOLDABLE_TYPE_FLIP) {
                        AppController.this.mSensorManager.registerListener(AppController.this.mSensorTiltListener, AppController.this.mSensorTilt, 3);
                    }
                }
            }
        };
        this.mScreenReceiver = broadcastReceiver;
        ArrayList arrayList = new ArrayList();
        this.mExceptionPackages = arrayList;
        arrayList.add("com.samsung.android.bixby.agent");
        this.mExceptionPackages.add("com.sec.android.app.launcher");
        this.mExceptionPackages.add("com.sec.android.app.desktoplauncher");
        this.mExceptionPackages.add("com.sec.android.app.dexonpc");
        this.mExceptionPackages.add("com.sec.android.dexsystemui");
        this.mExceptionPackages.add("com.sec.android.desktopmode.uiservice");
        this.mLauncher = activityLauncher;
        this.mDesktopManager = desktopManager;
        this.mDisplayLifecycle = displayLifecycle;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mMultiWindowManager = new MultiWindowManager();
        this.mwHandler = new Handler(((Handler) Dependency.get(Dependency.MAIN_HANDLER)).getLooper());
        this.mCurOrientation = 0;
        this.mSensorOrientationListener = new AppControlSensorOrientationListener(this, i);
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mSensorOrientation = sensorManager.getDefaultSensor(27);
        if (BasicRune.BASIC_FOLDABLE_TYPE_FLIP) {
            this.mSensorTiltListener = new AppControlSensorTiltListener(this, i);
            this.mSensorTilt = this.mSensorManager.getDefaultSensor(65695);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY");
        intentFilter.addAction("android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY");
        broadcastDispatcher.registerReceiver(intentFilter, broadcastReceiver);
        if (QpRune.QUICK_PANEL_SUBSCREEN && displayLifecycle != null) {
            displayLifecycle.addObserver(observer);
        }
    }

    private boolean checkExceptionPackage(List<String> list, ActivityManager.RecentTaskInfo recentTaskInfo) {
        ComponentName componentName = recentTaskInfo.realActivity;
        if (componentName != null && list != null && list.contains(componentName.getPackageName())) {
            Log.d(TAG, "skip removeTask - " + recentTaskInfo.realActivity.getPackageName());
            return true;
        }
        return false;
    }

    private boolean checkFocusedAppOnDex(int i) {
        SemDesktopModeState semDesktopModeState = ((DesktopManagerImpl) this.mDesktopManager).getSemDesktopModeState();
        if (i == 2 && semDesktopModeState != null && semDesktopModeState.getEnabled() == 4 && !((DesktopManagerImpl) this.mDesktopManager).isStandalone()) {
            Log.d(TAG, "It is dex mode");
            return true;
        }
        return false;
    }

    private int checkPackageIncludedRecents(String str, ArrayList<String> arrayList, ArrayList<String> arrayList2, Context context) {
        if (str == null) {
            return -1;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (str.equals(arrayList.get(i))) {
                Log.d(TAG, "found Navi app in Recents List : ".concat(str));
                return i;
            }
        }
        return -1;
    }

    private boolean checkTaskLocked(ActivityManager.RecentTaskInfo recentTaskInfo, Task$TaskKey task$TaskKey) {
        if (task$TaskKey == null || !checkTaskLocked(task$TaskKey)) {
            return false;
        }
        if (recentTaskInfo.realActivity == null) {
            return true;
        }
        Log.d(TAG, "Task is locked, skip removeTask - " + recentTaskInfo.realActivity.getPackageName());
        return true;
    }

    private String getAffinityName(Task$TaskKey task$TaskKey) {
        ActivityInfo activityInfo;
        ComponentName component = task$TaskKey.baseIntent.getComponent();
        PackageManagerWrapper packageManagerWrapper = PackageManagerWrapper.sInstance;
        int myUserId = UserHandle.myUserId();
        packageManagerWrapper.getClass();
        try {
            activityInfo = PackageManagerWrapper.mIPackageManager.getActivityInfo(component, 128L, myUserId);
        } catch (RemoteException e) {
            e.printStackTrace();
            activityInfo = null;
        }
        if (activityInfo == null) {
            return null;
        }
        return activityInfo.taskAffinity;
    }

    private String getComponentName(Task$TaskKey task$TaskKey) {
        return task$TaskKey.baseIntent.getComponent().flattenToShortString();
    }

    private ActivityTaskManager.RootTaskInfo getFocusedStack() {
        try {
            return ActivityManager.getService().getFocusedRootTaskInfo();
        } catch (RemoteException e) {
            Log.w(TAG, e.toString());
            return null;
        }
    }

    private int getPackageToStartActivityFromRecents(Context context, ArrayList<String> arrayList, ArrayList<String> arrayList2, List<ActivityManager.RecentTaskInfo> list) {
        String str;
        int i = -1;
        for (ActivityManager.RecentTaskInfo recentTaskInfo : list) {
            ComponentName componentName = recentTaskInfo.origActivity;
            recentTaskInfo.configuration.windowConfiguration.getWindowingMode();
            ComponentName componentName2 = recentTaskInfo.realActivity;
            if (componentName2 != null) {
                str = componentName2.getPackageName();
            } else {
                ComponentName componentName3 = recentTaskInfo.origActivity;
                if (componentName3 != null) {
                    str = componentName3.getPackageName();
                } else {
                    RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("There is no packageName. taskId = "), recentTaskInfo.taskId, TAG);
                    str = null;
                }
            }
            i = checkPackageIncludedRecents(str, arrayList, arrayList2, context);
            if (i != -1) {
                break;
            }
        }
        ListPopupWindow$$ExternalSyntheticOutline0.m("getPackageToStartActivityFromRecents() retCnt = ", i, TAG);
        return i;
    }

    private boolean isLongLiveApp(String str) {
        List list;
        try {
            list = ActivityManager.getService().getLongLiveApps();
        } catch (RemoteException e) {
            Log.w(TAG, e.toString());
            list = null;
        }
        if (list != null) {
            Log.d(TAG, "isLongLiveApp: longLiveApps.size() = " + list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (str.equals((String) it.next())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private boolean isLongLiveAppDedicatedMemory(int i, int i2, String str) {
        List list;
        try {
            list = ActivityManager.getService().getLongLiveTaskIdsForUser(i);
        } catch (RemoteException e) {
            Log.w(TAG, e.toString());
            list = null;
        }
        if (list != null && list.contains(Integer.valueOf(i2))) {
            return true;
        }
        return false;
    }

    private void logTaskIdToRemove(ActivityManager.RecentTaskInfo recentTaskInfo) {
        if (recentTaskInfo.realActivity != null) {
            StringBuilder sb = new StringBuilder("removeTask - ");
            sb.append(recentTaskInfo.realActivity.getPackageName());
            sb.append("(");
            KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(sb, recentTaskInfo.taskId, ")", TAG);
            return;
        }
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("removeTask - "), recentTaskInfo.taskId, TAG);
    }

    public boolean checkAvailableCoverLauncher(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList = new ArrayList(ActivityTaskManager.getService().getCoverLauncherEnabledAppList(ActivityManager.getCurrentUser()).keySet());
        } catch (Exception e) {
            KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0.m(e, new StringBuilder("Can not retrieve app list : "), TAG);
        }
        boolean contains = arrayList.contains(str);
        Log.d(TAG, "contains = " + contains + ", mAllowedPackageList = " + arrayList);
        return contains;
    }

    public boolean checkCoverFlexMode(Context context) {
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("checkCoverFlexMode = "), this.mIsFlexMode, TAG);
        if (this.mIsFlexMode == 1) {
            try {
                ((PowerManager) context.getSystemService("power")).semGoToSleep(SystemClock.uptimeMillis());
            } catch (Exception e) {
                Log.e(TAG, e.getMessage());
            }
            return true;
        }
        return false;
    }

    public boolean checkIncludeCoverLauncher(String str) {
        int currentUser = ActivityManager.getCurrentUser();
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.addAll(ActivityTaskManager.getService().getCoverLauncherAvailableAppList(currentUser));
        } catch (RemoteException e) {
            Log.e(TAG, "Can not retrieve app list : " + e.getMessage());
        }
        boolean contains = arrayList.contains(str);
        Log.d(TAG, "appList = " + arrayList);
        Log.d(TAG, "contains = " + contains);
        return contains;
    }

    public boolean checkInstalledApp(Context context, String str) {
        if (str == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ParamsParser.getListInfoFromJson(arrayList, null, str);
        if (arrayList.isEmpty()) {
            return false;
        }
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                context.getPackageManager().getPackageInfo((String) it.next(), 1);
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.d(TAG, "not installed! ");
            return false;
        } catch (Exception unused2) {
            Log.d(TAG, "Exception! ");
            return false;
        }
    }

    public boolean checkOrientation() {
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("checkOrientation, mCurOrientation = "), this.mCurOrientation, TAG);
        int i = this.mCurOrientation;
        if (i != 0 && i != 2) {
            return false;
        }
        return true;
    }

    public boolean checkRunningInRecents(Context context, String str, ArrayList<String> arrayList) {
        int i;
        Log.d(TAG, "checkRunningInRecents()");
        List<ActivityManager.RecentTaskInfo> recentTasks = ((ActivityManager) context.getSystemService("activity")).getRecentTasks(100, 0);
        ArrayList arrayList2 = new ArrayList();
        if (str != null) {
            ParamsParser.getListInfoFromJson(arrayList2, null, str);
            if (arrayList2.isEmpty()) {
                return false;
            }
            arrayList.addAll(arrayList2);
        }
        if (this.mContentResolver == null) {
            this.mContentResolver = context.getContentResolver();
        }
        if (recentTasks != null) {
            i = 0;
            for (ActivityManager.RecentTaskInfo recentTaskInfo : recentTasks) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    if (str2.equals(recentTaskInfo.realActivity.getPackageName())) {
                        i++;
                        arrayList.remove(str2);
                    }
                }
            }
        } else {
            i = 0;
        }
        Log.d(TAG, "listPackageInfo.cnt = " + arrayList2.size() + ", matchCount = " + i);
        if (arrayList2.size() != i) {
            return false;
        }
        return true;
    }

    public boolean checkSettingsCoverLauncher(Context context) {
        int i = Settings.System.getInt(context.getContentResolver(), "large_cover_screen_apps", 0);
        ListPopupWindow$$ExternalSyntheticOutline0.m("checkSettingsCoverLauncher(), brightnessMode = ", i, TAG);
        if (i <= 0) {
            return false;
        }
        return true;
    }

    public String getPackageNameFromPdss(String str) {
        return ParamsParser.getPackageInfoFromJson(str).PackageName;
    }

    public boolean isDexMode() {
        SemDesktopModeState semDesktopModeState = ((DesktopManagerImpl) this.mDesktopManager).getSemDesktopModeState();
        if (semDesktopModeState != null && semDesktopModeState.getEnabled() == 4 && !((DesktopManagerImpl) this.mDesktopManager).isStandalone()) {
            Log.d(TAG, "It is dex mode");
            return true;
        }
        return false;
    }

    public boolean isFolderClosed() {
        return !this.mDisplayLifecycle.mIsFolderOpened;
    }

    public boolean launchApplication(final Context context, String str) {
        final boolean z;
        Log.d(TAG, "launchApplication(), newJSONStringValue = " + str);
        final PackageInfoBixby packageInfoFromJson = ParamsParser.getPackageInfoFromJson(str);
        String str2 = packageInfoFromJson.PackageName;
        try {
            context.getPackageManager().getPackageInfo(packageInfoFromJson.PackageName, 1);
            if (!TextUtils.isEmpty(packageInfoFromJson.ActivityName) && !TextUtils.isEmpty(packageInfoFromJson.PackageName)) {
                if (this.mIsFlexMode == 1) {
                    Log.d(TAG, "FOLDER_STATE_TENT_MODE");
                    final PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    if (powerManager != null && powerManager.isInteractive()) {
                        Log.d(TAG, "checkCoverFlexMode was not executed");
                        z = false;
                    } else {
                        z = true;
                    }
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.android.systemui.bixby2.controller.AppController.1
                        @Override // java.lang.Runnable
                        public void run() {
                            powerManager.semWakeUp(SystemClock.uptimeMillis(), QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE, "[Brief] Wakeup only");
                            ActivityLauncher activityLauncher = AppController.this.mLauncher;
                            Context context2 = context;
                            PackageInfoBixby packageInfoBixby = packageInfoFromJson;
                            activityLauncher.startActivityInBixby(context2, packageInfoBixby.PackageName, packageInfoBixby.ActivityName, packageInfoBixby.taskId, z);
                        }
                    }, 1500L);
                    return true;
                }
                if (!this.mLauncher.startActivityInBixby(context, packageInfoFromJson.PackageName, packageInfoFromJson.ActivityName, packageInfoFromJson.taskId, false)) {
                    return false;
                }
                return true;
            }
            Log.e(TAG, "wrong parameter was delivered");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.d(TAG, "NameNotFoundException! ");
            return false;
        } catch (Exception e) {
            Log.d(TAG, "Exception! " + e.toString());
            return false;
        }
    }

    public boolean openRecentsApp(Context context) {
        Log.d(TAG, "openRecentsApp()");
        final Instrumentation instrumentation = new Instrumentation();
        if (isDexMode()) {
            instrumentation.sendKeySync(new KeyEvent(0L, 0L, 0, 187, 0, 0, -1, 0, 72, 0, 2));
            instrumentation.sendKeySync(new KeyEvent(0L, 0L, 1, 187, 0, 0, -1, 0, 72, 0, 2));
            return true;
        }
        new Thread(new Runnable() { // from class: com.android.systemui.bixby2.controller.AppController.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(1000L);
                    instrumentation.sendKeyDownUpSync(187);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).start();
        return true;
    }

    public boolean removeAllTasks(Context context) {
        return removeAllTasks(context, false, null);
    }

    public boolean removeFocusedTask(Context context) {
        boolean removeFocusedTask;
        Log.d(TAG, "removeFocusedTask()");
        if (isDexMode()) {
            removeFocusedTask = this.mMultiWindowManager.removeFocusedTask(2);
        } else if (LsRune.SUBSCREEN_UI && isFolderClosed()) {
            removeFocusedTask = this.mMultiWindowManager.removeFocusedTask(1);
        } else {
            removeFocusedTask = this.mMultiWindowManager.removeFocusedTask(0);
        }
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("retValue = ", removeFocusedTask, TAG);
        return removeFocusedTask;
    }

    public boolean removeNavigationApp(Context context, String str) {
        Log.d(TAG, "removeNavigationApp");
        ArrayList arrayList = new ArrayList();
        ParamsParser.getListInfoFromJson(arrayList, null, str);
        int size = arrayList.size();
        ListPopupWindow$$ExternalSyntheticOutline0.m("total listPackageInfo's cnt = ", size, TAG);
        boolean z = false;
        for (int i = 0; i < size; i++) {
            try {
                context.getPackageManager().getPackageInfo((String) arrayList.get(i), 1);
                List<ActivityManager.RecentTaskInfo> taskInfoFromPackageName = this.mMultiWindowManager.getTaskInfoFromPackageName((String) arrayList.get(i));
                if (taskInfoFromPackageName != null) {
                    for (ActivityManager.RecentTaskInfo recentTaskInfo : taskInfoFromPackageName) {
                        Log.d(TAG, "remove taskId = " + recentTaskInfo.taskId + ", removeTask : " + ((String) arrayList.get(i)));
                        ActivityManagerWrapper activityManagerWrapper = ActivityManagerWrapper.sInstance;
                        int i2 = recentTaskInfo.taskId;
                        activityManagerWrapper.getClass();
                        ActivityManagerWrapper.removeTask(i2);
                        z = true;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e(TAG, "NameNotFoundException! : " + ((String) arrayList.get(i)));
            } catch (Exception unused2) {
                Log.e(TAG, "Exception! ");
            }
        }
        return z;
    }

    public boolean removeSearchedTask(Context context, String str) {
        List<ActivityManager.RecentTaskInfo> taskInfoFromPackageName;
        Log.d(TAG, "removeSearchedTask()");
        PackageInfoBixby packageInfoFromJson = ParamsParser.getPackageInfoFromJson(str);
        if (packageInfoFromJson == null) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(packageInfoFromJson.PackageName, 1);
            boolean z = false;
            for (int i = 0; i < 2 && (taskInfoFromPackageName = this.mMultiWindowManager.getTaskInfoFromPackageName(packageInfoFromJson.PackageName)) != null; i++) {
                if (i != 0) {
                    SystemClock.sleep(500L);
                }
                for (ActivityManager.RecentTaskInfo recentTaskInfo : taskInfoFromPackageName) {
                    Log.d(TAG, "recentTaskInfo = " + recentTaskInfo);
                    ActivityManagerWrapper activityManagerWrapper = ActivityManagerWrapper.sInstance;
                    int i2 = recentTaskInfo.taskId;
                    activityManagerWrapper.getClass();
                    ActivityManagerWrapper.removeTask(i2);
                    z = true;
                }
            }
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("retValue = ", z, TAG);
            return z;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.d(TAG, "NameNotFoundException! ");
            return false;
        } catch (Exception unused2) {
            Log.d(TAG, "Exception! ");
            return false;
        }
    }

    public boolean startNavigationApp(Context context, String str, CommandActionResponse commandActionResponse) {
        int i;
        Log.d(TAG, "startNavigationApp()");
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        int i2 = 0;
        List<ActivityManager.RecentTaskInfo> recentTasks = ((ActivityManager) context.getSystemService("activity")).getRecentTasks(100, 0);
        ParamsParser.getListInfoFromJson(arrayList, arrayList2, str);
        int size = arrayList.size();
        int size2 = arrayList2.size();
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("listPackageInfo's cnt = ", size, ",  listActivityInfo's cnt", size2, TAG);
        if (size != size2) {
            Log.e(TAG, "packageInfo's cnt and activityInfo's cnt are different!! ");
            return false;
        }
        if (size != 0 && size2 != 0) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                try {
                    context.getPackageManager().getPackageInfo(arrayList.get(i3), 1);
                    Log.d(TAG, "Exist in the phone : " + arrayList.get(i3));
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.d(TAG, "NameNotFoundException! : " + arrayList.get(i3));
                    arrayList.remove(i3);
                    arrayList2.remove(i3);
                    i3--;
                } catch (Exception unused2) {
                    Log.d(TAG, "Exception! ");
                }
                i3++;
            }
            int size3 = arrayList.size();
            ListPopupWindow$$ExternalSyntheticOutline0.m("installed listPackageInfo = ", size3, TAG);
            if (size3 > 0) {
                if (recentTasks != null) {
                    i = getPackageToStartActivityFromRecents(context, arrayList, arrayList2, recentTasks);
                } else {
                    i = 0;
                }
                if (i != -1) {
                    i2 = i;
                }
                String str2 = arrayList.get(i2);
                String str3 = arrayList2.get(i2);
                if (BasicRune.VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG && isFolderClosed()) {
                    boolean checkSettingsCoverLauncher = checkSettingsCoverLauncher(context);
                    boolean checkIncludeCoverLauncher = checkIncludeCoverLauncher(str2);
                    boolean checkAvailableCoverLauncher = checkAvailableCoverLauncher(str2);
                    commandActionResponse.responseCode = 1;
                    if (!checkIncludeCoverLauncher) {
                        commandActionResponse.responseMessage = ActionResults.RESULT_NOT_INCLUDE_COVERLAUNCHER;
                    } else if (!checkSettingsCoverLauncher) {
                        commandActionResponse.responseMessage = ActionResults.RESULT_SET_OFF_COVERLAUNCHER;
                    } else if (!checkAvailableCoverLauncher) {
                        commandActionResponse.responseMessage = ActionResults.RESULT_NOT_AVAILABLE_COVERLAUNCHER;
                    } else {
                        commandActionResponse.responseMessage = "success";
                    }
                }
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("to start app is : ", str2, TAG);
                if (!this.mLauncher.startActivityInBixby(context, str2, str3, 0, false)) {
                    commandActionResponse.responseCode = 2;
                    commandActionResponse.responseMessage = ActionResults.RESULT_FAIL;
                }
                return true;
            }
            Log.d(TAG, "There is no navi app in the phone");
            return false;
        }
        Log.e(TAG, "packageInfo's cnt or activityInfo's cnt is 0");
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0175, code lost:
    
        if (r7 != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean removeAllTasks(android.content.Context r20, boolean r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.bixby2.controller.AppController.removeAllTasks(android.content.Context, boolean, java.lang.String):boolean");
    }

    public boolean checkTaskLocked(Task$TaskKey task$TaskKey) {
        Cursor cursor = null;
        try {
            Cursor query = this.mContentResolver.query(Uri.parse(TASKLOCKDB), null, null, null, null);
            String componentName = getComponentName(task$TaskKey);
            String affinityName = getAffinityName(task$TaskKey);
            if (query != null) {
                Log.d(TAG, "isTaskLocked: getCount = " + query.getCount());
                while (query.moveToNext()) {
                    Log.d(TAG, "isTaskLocked: ColumnNames = " + query.getColumnNames());
                    if (query.getString(1) != null && query.getString(2) != null) {
                        if (query.getString(1).equals(componentName) && query.getString(2).equals(affinityName)) {
                            Log.d(TAG, "isTaskLocked: True " + componentName);
                            query.close();
                            return true;
                        }
                        if (query.getString(2).equals(affinityName)) {
                            Log.d(TAG, "isTaskLocked: True (only affinity matched)" + componentName);
                            query.close();
                            return true;
                        }
                    } else {
                        Log.d(TAG, "Component or Affinity name is null ");
                    }
                }
            }
            if (query == null) {
                return false;
            }
            query.close();
            return false;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }
}
