package com.android.systemui.bixby2.controller;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.ActivityThread;
import android.app.IActivityTaskManager;
import android.app.WindowConfiguration;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.window.RemoteTransition;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.SystemUIAppComponentFactoryBase;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import com.android.systemui.bixby2.CommandActionResponse;
import com.android.systemui.bixby2.actionresult.ActionResults;
import com.android.systemui.bixby2.util.PackageInfoBixby;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class MWBixbyController {
    private static final float DEFAULT_SPLIT_RATIO = 0.5f;
    private static final int INVALID_TASK = -1;
    protected static final String MultiWindowType = "MultiWindow";
    protected static final String PopupType = "Popup";
    public static final int SPLIT_STATE_NONE = 0;
    public static final int SPLIT_STATE_THREE = 2;
    public static final int SPLIT_STATE_TWO = 1;
    protected static final String STR_SPLIT_BOTTOM = "bottom";
    protected static final String STR_SPLIT_LEFT = "left";
    protected static final String STR_SPLIT_RIGHT = "right";
    protected static final String STR_SPLIT_TOP = "top";
    private static final String TAG = "MWBixbyController";
    private ShellExecutor mExecutor;
    private SplitScreenController mSplitScreenController;
    private final ArrayList<ActivityManager.RunningTaskInfo> mVisibleTasks = new ArrayList<>();
    protected MultiWindowManager mMultiWindowManager = MultiWindowManager.getInstance();
    protected IActivityTaskManager mIActivityTaskManager = ActivityTaskManager.getService();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public @interface SplitState {
    }

    private String checkSupportsMultiWindow(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z) {
        if (runningTaskInfo == null) {
            return ActionResults.RESULT_NO_EXIST_FOREGROUND_APP;
        }
        if (isHomeOrRecentsTaskInfo(runningTaskInfo)) {
            runningTaskInfo.getActivityType();
            return ActionResults.RESULT_NO_EXIST_FOREGROUND_APP;
        }
        if (!runningTaskInfo.originallySupportedMultiWindow) {
            if (z) {
                return ActionResults.RESULT_NO_SUPPORT_SPLIT_FOREGROUND_APP;
            }
            return ActionResults.RESULT_NO_SUPPORT_POPUP_FOREGROUND_APP;
        }
        return "success";
    }

    public static int convertToStagePosition(String str) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1383228885:
                if (str.equals(STR_SPLIT_BOTTOM)) {
                    c = 0;
                    break;
                }
                break;
            case 115029:
                if (str.equals(STR_SPLIT_TOP)) {
                    c = 1;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(STR_SPLIT_LEFT)) {
                    c = 2;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(STR_SPLIT_RIGHT)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 64;
            case 1:
                return 16;
            case 2:
                return 8;
            case 3:
                return 32;
            default:
                return 0;
        }
    }

    private ActivityManager.RunningTaskInfo findTaskInfoByPackageName(String str) {
        Iterator<ActivityManager.RunningTaskInfo> it = this.mVisibleTasks.iterator();
        while (it.hasNext()) {
            ActivityManager.RunningTaskInfo next = it.next();
            if (next.baseIntent.getComponent() != null && str.equals(next.baseIntent.getComponent().getPackageName())) {
                return next;
            }
            ComponentName componentName = next.baseActivity;
            if (componentName != null && str.equals(componentName.getPackageName())) {
                return next;
            }
            ComponentName componentName2 = next.topActivity;
            if (componentName2 != null && str.equals(componentName2.getPackageName())) {
                return next;
            }
        }
        return null;
    }

    private ActivityManager.RunningTaskInfo findTopTaskInfoByStagePosition(int i) {
        Iterator<ActivityManager.RunningTaskInfo> it = this.mVisibleTasks.iterator();
        while (it.hasNext()) {
            ActivityManager.RunningTaskInfo next = it.next();
            if (next.configuration.windowConfiguration.getStagePosition() == i) {
                return next;
            }
        }
        return null;
    }

    private ActivityInfo getActivityInfo(Context context, String str, String str2) {
        try {
            return context.getPackageManager().getActivityInfo(new ComponentName(str, str2), 128);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    private int getCurrentSplitState() {
        if (this.mSplitScreenController.isMultiSplitScreenVisible()) {
            return 2;
        }
        return isSplitScreenVisible() ? 1 : 0;
    }

    private int getMainStagePositionExt() {
        int[] iArr = new int[1];
        try {
            this.mExecutor.executeBlocking(new MWBixbyController$$ExternalSyntheticLambda3(this, iArr, 1));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return iArr[0];
    }

    private ActivityManager.RunningTaskInfo getTopRunningTaskInfo() {
        if (this.mVisibleTasks.isEmpty()) {
            return null;
        }
        return this.mVisibleTasks.get(0);
    }

    private ActivityManager.RunningTaskInfo getTopVisibleFullscreenTaskInfo() {
        Iterator<ActivityManager.RunningTaskInfo> it = this.mVisibleTasks.iterator();
        while (it.hasNext()) {
            ActivityManager.RunningTaskInfo next = it.next();
            if (next.getWindowingMode() == 1) {
                return next;
            }
        }
        return null;
    }

    private boolean isHomeOrRecentsTaskInfo(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (runningTaskInfo.getActivityType() != 2 && runningTaskInfo.getActivityType() != 3) {
            return false;
        }
        return true;
    }

    private boolean isSplitScreenVisible() {
        Boolean[] boolArr = new Boolean[1];
        try {
            this.mExecutor.executeBlocking(new MWBixbyController$$ExternalSyntheticLambda5(this, boolArr, 1));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return boolArr[0].booleanValue();
    }

    private boolean isSupportMultiWindow(Context context, String str) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(str);
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 131072);
        String str2 = TAG;
        Log.d(str2, "ris = " + queryIntentActivities);
        if (queryIntentActivities == null) {
            return false;
        }
        Iterator<ResolveInfo> it = queryIntentActivities.iterator();
        if (!it.hasNext()) {
            return false;
        }
        int supportedMultiWindowModes = this.mMultiWindowManager.getSupportedMultiWindowModes(it.next());
        ListPopupWindow$$ExternalSyntheticOutline0.m("MultiWindowModes = ", supportedMultiWindowModes, str2);
        if ((supportedMultiWindowModes & 2) == 0) {
            return false;
        }
        return true;
    }

    private boolean isVerticalDivision() {
        Boolean[] boolArr = new Boolean[1];
        try {
            this.mExecutor.executeBlocking(new MWBixbyController$$ExternalSyntheticLambda5(this, boolArr, 0));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return boolArr[0].booleanValue();
    }

    public /* synthetic */ void lambda$changeLayoutOfSplitScreen$1() {
        this.mSplitScreenController.rotateMultiSplitWithTransition();
    }

    public /* synthetic */ void lambda$exchangePositionOfSplitScreen$0() {
        this.mSplitScreenController.swapTasksInSplitScreenMode();
    }

    public /* synthetic */ void lambda$getMainStagePositionExt$6(int[] iArr) {
        iArr[0] = this.mSplitScreenController.getMainStagePositionExt();
    }

    public /* synthetic */ void lambda$isSplitScreenVisible$5(Boolean[] boolArr) {
        boolArr[0] = Boolean.valueOf(this.mSplitScreenController.isSplitScreenVisible());
    }

    public /* synthetic */ void lambda$isVerticalDivision$8(Boolean[] boolArr) {
        boolArr[0] = Boolean.valueOf(this.mSplitScreenController.isVerticalDivision());
    }

    public /* synthetic */ void lambda$startIntent$3(Intent intent, UserHandle userHandle, int i, int i2) {
        this.mSplitScreenController.startIntent(intent, userHandle, i, i2);
    }

    public /* synthetic */ void lambda$startIntents$4(Intent intent, Intent intent2, UserHandle userHandle, UserHandle userHandle2, int i, float f, int i2) {
        this.mSplitScreenController.startIntents(intent, intent2, userHandle, userHandle2, i, f, i2, null);
    }

    public /* synthetic */ void lambda$startTargetTaskToFreeform$2(ActivityManager.RunningTaskInfo runningTaskInfo) {
        this.mSplitScreenController.moveSplitToFreeform(runningTaskInfo.token, null, false);
    }

    public /* synthetic */ void lambda$startTasks$7(int i, Bundle bundle, int i2, Bundle bundle2, int i3, float f, RemoteTransition remoteTransition) {
        this.mSplitScreenController.startTasks(i, bundle, i2, bundle2, i3, f, remoteTransition, null);
    }

    private Intent makeLaunchIntent(String str, String str2) {
        if (str != null && str2 != null) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(new ComponentName(str, str2));
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setFlags(270532608);
            return intent;
        }
        return null;
    }

    private void moveTaskToFront(int i, Context context) {
        try {
            this.mIActivityTaskManager.moveTaskToFront(ActivityThread.currentActivityThread().getApplicationThread(), context.getPackageName(), i, 0, (Bundle) null);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private boolean startActivityByBixby(Context context, String str, String str2) {
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        makeBasic.setForceLaunchWindowingMode(1);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(new ComponentName(str, str2));
        intent.putExtra("from-bixby", true);
        intent.setFlags(270532608);
        try {
            context.startActivity(intent, makeBasic.toBundle());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private String startFreeform(Context context, String str, String str2) {
        updateVisibleTasks();
        if (str == null && str2 == null) {
            return startTopTaskToFreeform();
        }
        if (str != null && str2 != null) {
            if (!isSupportMultiWindow(context, str)) {
                return ActionResults.RESULT_NO_SUPPORT_POPUP;
            }
            ActivityManager.RunningTaskInfo visibleSingleInstance = getVisibleSingleInstance(getActivityInfo(context, str, str2));
            if (visibleSingleInstance != null) {
                startTargetTaskToFreeform(visibleSingleInstance);
                return "success";
            }
            try {
                Intent makeLaunchIntent = makeLaunchIntent(str, str2);
                ActivityOptions makeBasic = ActivityOptions.makeBasic();
                makeBasic.setLaunchWindowingMode(5);
                context.startActivity(makeLaunchIntent, makeBasic.toBundle());
                return "success";
            } catch (Exception unused) {
                return ActionResults.RESULT_NO_SUPPORT_POPUP;
            }
        }
        return ActionResults.RESULT_FAIL;
    }

    private void startIntent(final Intent intent, final UserHandle userHandle, final int i, final int i2) {
        ((HandlerExecutor) this.mExecutor).execute(new Runnable() { // from class: com.android.systemui.bixby2.controller.MWBixbyController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MWBixbyController.this.lambda$startIntent$3(intent, userHandle, i, i2);
            }
        });
    }

    private void startIntents(final Intent intent, final Intent intent2, final UserHandle userHandle, final UserHandle userHandle2, final int i, final float f, final int i2) {
        ((HandlerExecutor) this.mExecutor).execute(new Runnable() { // from class: com.android.systemui.bixby2.controller.MWBixbyController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MWBixbyController.this.lambda$startIntents$4(intent, intent2, userHandle, userHandle2, i, f, i2);
            }
        });
    }

    private String startSplitScreen(Context context, String str, String str2, String str3, String str4) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        updateVisibleTasks();
        if (str == null && str2 == null && str3 == null && str4 == null) {
            return startTopTaskToSplit();
        }
        if (!TextUtils.isEmpty(str) && !isSupportMultiWindow(context, str)) {
            return ActionResults.RESULT_NO_SUPPORT_SPLIT_FIRST_APP;
        }
        if (!TextUtils.isEmpty(str3) && !isSupportMultiWindow(context, str3)) {
            return ActionResults.RESULT_NO_SUPPORT_SPLIT_SECOND_APP;
        }
        Intent makeLaunchIntent = makeLaunchIntent(str, str2);
        Intent makeLaunchIntent2 = makeLaunchIntent(str3, str4);
        if (makeLaunchIntent != null && makeLaunchIntent2 != null) {
            UserHandle userHandle = UserHandle.CURRENT;
            startIntents(makeLaunchIntent, makeLaunchIntent2, userHandle, userHandle, 1, 0.5f, -1);
            return "success";
        }
        if (str != null) {
            runningTaskInfo = findTaskInfoByPackageName(str);
        } else {
            runningTaskInfo = null;
        }
        if (runningTaskInfo != null && WindowConfiguration.isSplitScreenWindowingMode(runningTaskInfo.configuration.windowConfiguration)) {
            moveTaskToFront(runningTaskInfo.taskId, context);
            return "success";
        }
        if (!isSplitScreenVisible()) {
            String checkSupportsMultiWindow = checkSupportsMultiWindow(getTopVisibleFullscreenTaskInfo(), true);
            if (!checkSupportsMultiWindow.equals("success")) {
                return checkSupportsMultiWindow;
            }
        }
        if (makeLaunchIntent != null) {
            return startSplitScreenSingleIntent(context, makeLaunchIntent, str, str2, 0);
        }
        return startSplitScreenSingleIntent(context, makeLaunchIntent2, str3, str4, 1);
    }

    private String startSplitScreenSingleIntent(Context context, Intent intent, String str, String str2, int i) {
        if (getVisibleSingleInstance(getActivityInfo(context, str, str2)) != null) {
            return ActionResults.RESULT_NO_SUPPORT_MULTIWINDOW;
        }
        startIntent(intent, UserHandle.CURRENT, i, -1);
        return "success";
    }

    private String startTargetTaskToFreeform(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        makeBasic.setLaunchWindowingMode(5);
        try {
            if (WindowConfiguration.isSplitScreenWindowingMode(runningTaskInfo.configuration.windowConfiguration)) {
                ((HandlerExecutor) this.mExecutor).execute(new MWBixbyController$$ExternalSyntheticLambda3(this, runningTaskInfo, 0));
                return "success";
            }
            this.mIActivityTaskManager.startActivityFromRecents(runningTaskInfo.taskId, makeBasic.toBundle());
            return "success";
        } catch (RemoteException unused) {
            return ActionResults.RESULT_NO_SUPPORT_POPUP;
        }
    }

    private void startTasks(final int i, final Bundle bundle, final int i2, final Bundle bundle2, final int i3, final float f, final RemoteTransition remoteTransition) {
        ((HandlerExecutor) this.mExecutor).execute(new Runnable() { // from class: com.android.systemui.bixby2.controller.MWBixbyController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MWBixbyController.this.lambda$startTasks$7(i, bundle, i2, bundle2, i3, f, remoteTransition);
            }
        });
    }

    private String startTopTaskToFreeform() {
        ActivityManager.RunningTaskInfo topRunningTaskInfo = getTopRunningTaskInfo();
        String checkSupportsMultiWindow = checkSupportsMultiWindow(topRunningTaskInfo, false);
        if (!checkSupportsMultiWindow.equals("success")) {
            return checkSupportsMultiWindow;
        }
        return startTargetTaskToFreeform(topRunningTaskInfo);
    }

    private String startTopTaskToSplit() {
        ActivityManager.RunningTaskInfo topVisibleFullscreenTaskInfo = getTopVisibleFullscreenTaskInfo();
        String checkSupportsMultiWindow = checkSupportsMultiWindow(topVisibleFullscreenTaskInfo, true);
        if (!checkSupportsMultiWindow.equals("success")) {
            return checkSupportsMultiWindow;
        }
        startTasks(topVisibleFullscreenTaskInfo.taskId, null, -1, null, -1, 0.0f, null);
        return "success";
    }

    private void updateVisibleTasks() {
        this.mVisibleTasks.clear();
        this.mVisibleTasks.addAll(this.mMultiWindowManager.getVisibleTasks());
    }

    public String changeLayoutOfSplitScreen(PackageInfoBixby packageInfoBixby) {
        String str = packageInfoBixby.Position;
        Log.d(TAG, "changeLayoutOfSplitScreen,  position = " + str);
        if (TextUtils.isEmpty(str) || getCurrentSplitState() != 1) {
            return ActionResults.RESULT_FAIL;
        }
        if ((isVerticalDivision() && str.equals(STR_SPLIT_TOP)) || (!isVerticalDivision() && str.equals(STR_SPLIT_LEFT))) {
            ((HandlerExecutor) this.mExecutor).execute(new MWBixbyController$$ExternalSyntheticLambda4(this, 0));
            return "success";
        }
        return "success";
    }

    public CommandActionResponse checkSplitState() {
        String str;
        int currentSplitState = getCurrentSplitState();
        if (currentSplitState == 1) {
            int mainStagePositionExt = getMainStagePositionExt();
            if (mainStagePositionExt != 16 && mainStagePositionExt != 64) {
                str = ActionResults.RESULT_SPLIT_STATE_LEFT_RIGHT;
            } else {
                str = ActionResults.RESULT_SPLIT_STATE_TOP_BOTTOM;
            }
        } else if (currentSplitState == 2) {
            str = ActionResults.RESULT_SPLIT_STATE_3SPLIT;
        } else {
            str = ActionResults.RESULT_SPLIT_STATE_NONE;
        }
        return new CommandActionResponse(1, str);
    }

    public CommandActionResponse checkSupportMultiSplit() {
        String str;
        if (CoreRune.MW_MULTI_SPLIT) {
            str = ActionResults.RESULT_SUPPORT_MULTI_SPLIT;
        } else {
            str = ActionResults.RESULT_SUPPORT_SPLIT;
        }
        return new CommandActionResponse(1, str);
    }

    public CommandActionResponse checkSupportMultiWindow(Context context, PackageInfoBixby packageInfoBixby) {
        String str;
        String str2 = packageInfoBixby.PackageName;
        String str3 = packageInfoBixby.Type;
        String str4 = TAG;
        Log.d(str4, "checkSupportMultiWindow()   type = " + str3 + ", packageName = " + str2);
        if (!TextUtils.isEmpty(str2) && isSupportMultiWindow(context, str2)) {
            Log.d(str4, "checkSupportMultiWindow - RESULT_RESIZABLE");
            str = ActionResults.RESULT_RESIZABLE;
        } else {
            str = ActionResults.RESULT_UNRESIZABLE;
        }
        return new CommandActionResponse(1, str);
    }

    public CommandActionResponse checkTopFullscreenHomeOrRecents() {
        boolean z;
        String str;
        updateVisibleTasks();
        Iterator<ActivityManager.RunningTaskInfo> it = this.mVisibleTasks.iterator();
        while (true) {
            if (it.hasNext()) {
                ActivityManager.RunningTaskInfo next = it.next();
                if (next.getWindowingMode() == 1 && isHomeOrRecentsTaskInfo(next)) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            str = ActionResults.RESULT_LAUNCHER_VISIBLE;
        } else {
            str = ActionResults.RESULT_LAUNCHER_INVISIBLE;
        }
        return new CommandActionResponse(1, str);
    }

    public String exchangePositionOfSplitScreen(PackageInfoBixby packageInfoBixby) {
        String str = packageInfoBixby.Position;
        Log.d(TAG, "exchangePositionOfSplitScreen,  position = " + str);
        if (TextUtils.isEmpty(str) || !isSplitScreenVisible()) {
            return ActionResults.RESULT_FAIL;
        }
        ((HandlerExecutor) this.mExecutor).execute(new MWBixbyController$$ExternalSyntheticLambda4(this, 1));
        return "success";
    }

    public CommandActionResponse getPackageNameInSplit(PackageInfoBixby packageInfoBixby) {
        String str;
        String str2 = packageInfoBixby.Position;
        String str3 = TAG;
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getPackageInSplit position = ", str2, str3);
        updateVisibleTasks();
        ActivityManager.RunningTaskInfo findTopTaskInfoByStagePosition = findTopTaskInfoByStagePosition(convertToStagePosition(str2));
        if (findTopTaskInfoByStagePosition == null) {
            return new CommandActionResponse(1, "");
        }
        ComponentName componentName = findTopTaskInfoByStagePosition.baseActivity;
        if (componentName != null) {
            str = componentName.getPackageName();
        } else if (findTopTaskInfoByStagePosition.baseIntent.getComponent() != null) {
            str = findTopTaskInfoByStagePosition.baseIntent.getComponent().getPackageName();
        } else {
            str = null;
        }
        Log.d(str3, "packageName = " + str);
        return new CommandActionResponse(1, str);
    }

    public ActivityManager.RunningTaskInfo getVisibleSingleInstance(ActivityInfo activityInfo) {
        if (activityInfo != null && !this.mVisibleTasks.isEmpty()) {
            ComponentName componentName = activityInfo.getComponentName();
            Bundle bundle = activityInfo.metaData;
            if (bundle != null) {
                String string = bundle.getString("com.samsung.android.multiwindow.activity.alias.targetactivity");
                if (!TextUtils.isEmpty(string)) {
                    componentName = new ComponentName(componentName.getPackageName(), string);
                }
            }
            if (activityInfo.launchMode == 1) {
                Iterator<ActivityManager.RunningTaskInfo> it = this.mVisibleTasks.iterator();
                while (it.hasNext()) {
                    ActivityManager.RunningTaskInfo next = it.next();
                    if (componentName.equals(next.topActivity) || componentName.equals(next.baseActivity)) {
                        if (next.userId == UserHandle.getUserId(activityInfo.applicationInfo.uid)) {
                            return next;
                        }
                    }
                }
            }
            int i = activityInfo.launchMode;
            if (i == 3 || i == 2) {
                Iterator<ActivityManager.RunningTaskInfo> it2 = this.mVisibleTasks.iterator();
                while (it2.hasNext()) {
                    ActivityManager.RunningTaskInfo next2 = it2.next();
                    if (componentName.equals(next2.baseActivity) && next2.userId == UserHandle.getUserId(activityInfo.applicationInfo.uid)) {
                        return next2;
                    }
                }
            }
        }
        return null;
    }

    public void initSplitScreenController(SplitScreenController splitScreenController) {
        if (splitScreenController != null) {
            this.mSplitScreenController = splitScreenController;
        } else {
            SystemUIAppComponentFactoryBase.Companion.getClass();
            this.mSplitScreenController = (SplitScreenController) SystemUIAppComponentFactoryBase.systemUIInitializer.getWMComponent().getSplitScreenController().orElse(null);
        }
        SplitScreenController splitScreenController2 = this.mSplitScreenController;
        if (splitScreenController2 != null) {
            this.mExecutor = splitScreenController2.mMainExecutor;
        }
    }

    public boolean isFoldOpened() {
        return ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened;
    }

    public String maximizeApp(Context context, PackageInfoBixby packageInfoBixby) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        String str = packageInfoBixby.Position;
        String str2 = packageInfoBixby.PackageName;
        String str3 = packageInfoBixby.ActivityName;
        int currentSplitState = getCurrentSplitState();
        String str4 = TAG;
        StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("maximizeApp,  position=", str, ", packageName=", str2, ", activityName=");
        m.append(str3);
        m.append(", splitState=");
        m.append(currentSplitState);
        Log.d(str4, m.toString());
        updateVisibleTasks();
        if (str != null) {
            if (currentSplitState == 0) {
                Log.d(str4, "current state is not split");
                return ActionResults.RESULT_FAIL;
            }
            runningTaskInfo = findTopTaskInfoByStagePosition(convertToStagePosition(str));
        } else if (str2 != null) {
            runningTaskInfo = findTaskInfoByPackageName(str2);
        } else {
            runningTaskInfo = null;
        }
        Log.d(str4, "targetTaskInfo=" + runningTaskInfo);
        if (runningTaskInfo == null) {
            if (!startActivityByBixby(context, str2, str3)) {
                return ActionResults.RESULT_FAIL;
            }
            return "success";
        }
        this.mMultiWindowManager.exitMultiWindow(runningTaskInfo.token.asBinder(), false);
        return "success";
    }

    public String replaceAppOfSplitScreen(PackageInfoBixby packageInfoBixby) {
        int i;
        String str = packageInfoBixby.Position;
        String str2 = packageInfoBixby.PackageName;
        String str3 = packageInfoBixby.ActivityName;
        String str4 = TAG;
        Log.d(str4, "replaceAppOfSplitScreen");
        StringBuilder sb = new StringBuilder("position = ");
        sb.append(str);
        sb.append(", packageName = ");
        sb.append(str2);
        sb.append(", activityName = ");
        ExifInterface$$ExternalSyntheticOutline0.m(sb, str3, str4);
        if (str == null || str2 == null || str3 == null || !isSplitScreenVisible()) {
            return ActionResults.RESULT_FAIL;
        }
        if (!str.equals(STR_SPLIT_TOP) && !str.equals(STR_SPLIT_LEFT)) {
            if (!str.equals(STR_SPLIT_BOTTOM) && !str.equals(STR_SPLIT_RIGHT)) {
                return ActionResults.RESULT_FAIL;
            }
            i = 1;
        } else {
            i = 0;
        }
        startIntent(makeLaunchIntent(str2, str3), null, i, -1);
        return "success";
    }

    public String startAppSplitPosition(PackageInfoBixby packageInfoBixby) {
        int i;
        String str = packageInfoBixby.Position;
        String str2 = packageInfoBixby.PackageName;
        String str3 = packageInfoBixby.ActivityName;
        String str4 = packageInfoBixby.Position2;
        String str5 = packageInfoBixby.PackageName2;
        String str6 = packageInfoBixby.ActivityName2;
        String str7 = TAG;
        Log.d(str7, "startAppSplitPosition");
        Log.d(str7, "position1 = " + str + ",  packageName1 = " + str2 + ", activityName1 = " + str3);
        Log.d(str7, "position2 = " + str4 + ",  packageName2 = " + str5 + ", activityName2 = " + str6);
        if (str != null && str2 != null) {
            Intent makeLaunchIntent = makeLaunchIntent(str2, str3);
            Intent makeLaunchIntent2 = makeLaunchIntent(str5, str6);
            if (!str.equals(STR_SPLIT_TOP) && !str.equals(STR_SPLIT_BOTTOM)) {
                i = 0;
            } else {
                i = 1;
            }
            if (makeLaunchIntent != null && makeLaunchIntent2 != null) {
                if (!str.equals(STR_SPLIT_TOP) && !str.equals(STR_SPLIT_LEFT)) {
                    if (!str.equals(STR_SPLIT_BOTTOM) && !str.equals(STR_SPLIT_RIGHT)) {
                        return ActionResults.RESULT_FAIL;
                    }
                    startIntents(makeLaunchIntent2, makeLaunchIntent, null, null, 1, 0.5f, i);
                } else {
                    startIntents(makeLaunchIntent, makeLaunchIntent2, null, null, 1, 0.5f, i);
                }
                return "success";
            }
            if (makeLaunchIntent != null) {
                if (!str.equals(STR_SPLIT_TOP) && !str.equals(STR_SPLIT_LEFT)) {
                    if (!str.equals(STR_SPLIT_BOTTOM) && !str.equals(STR_SPLIT_RIGHT)) {
                        return ActionResults.RESULT_FAIL;
                    }
                    startIntent(makeLaunchIntent, null, 1, i);
                } else {
                    startIntent(makeLaunchIntent, null, 0, i);
                }
                return "success";
            }
        }
        return ActionResults.RESULT_FAIL;
    }

    public String startMultiWindow(Context context, PackageInfoBixby packageInfoBixby) {
        String str = packageInfoBixby.PackageName;
        String str2 = packageInfoBixby.ActivityName;
        String str3 = packageInfoBixby.PackageName2;
        String str4 = packageInfoBixby.ActivityName2;
        String str5 = packageInfoBixby.Type;
        String str6 = TAG;
        StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("startMultiWindow : type = ", str5, ", packageName1 = ", str, ", activityName1 = ");
        AppOpItem$$ExternalSyntheticOutline0.m(m, str2, ", packageName2 = ", str4, ", activityName2 = ");
        ExifInterface$$ExternalSyntheticOutline0.m(m, str4, str6);
        if (packageInfoBixby.Type == null) {
            return ActionResults.RESULT_FAIL;
        }
        if (str5.equals(MultiWindowType)) {
            return startSplitScreen(context, str, str2, str3, str4);
        }
        if (str5.equals(PopupType)) {
            return startFreeform(context, str, str2);
        }
        return "success";
    }
}
