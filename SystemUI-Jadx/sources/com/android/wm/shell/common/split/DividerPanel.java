package com.android.wm.shell.common.split;

import android.R;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.wm.shell.splitscreen.AppPairShortcutController;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DividerPanel implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener, View.OnHoverListener {
    public AlertDialog mAddToAppPairDialog;
    public AppPairShortcutController mAppPairShortcutController;
    public DividerPanelCallbacks mCallbacks;
    public final ContentResolver mContentResolver;
    public Context mContext;
    public final AnonymousClass1 mDismissReceiver;
    public final H mH;
    public final boolean mIsSystemUser;
    public SplitLayout mSplitLayout;
    public DividerPanelView mView;
    public final DividerPanelWindowManager mWindowManager;
    public boolean mIsLongPressOrHover = false;
    public final DividerPanel$$ExternalSyntheticLambda0 mRemoveRunnable = new Runnable() { // from class: com.android.wm.shell.common.split.DividerPanel$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            DividerPanel.this.removeDividerPanel();
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DividerPanelCallbacks {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public /* synthetic */ H(DividerPanel dividerPanel, int i) {
            this();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 0) {
                AlertDialog alertDialog = DividerPanel.this.mAddToAppPairDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                DividerPanel.this.removeDividerPanel();
            }
        }

        private H() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.wm.shell.common.split.DividerPanel$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.wm.shell.common.split.DividerPanel$1, android.content.BroadcastReceiver] */
    public DividerPanel(Context context) {
        this.mContext = new ContextThemeWrapper(context, R.style.Theme.DeviceDefault.DayNight);
        this.mContentResolver = context.getContentResolver();
        this.mWindowManager = new DividerPanelWindowManager(context);
        H h = new H(this, 0 == true ? 1 : 0);
        this.mH = h;
        this.mIsSystemUser = ActivityManager.getCurrentUser() == 0;
        ?? r3 = new BroadcastReceiver() { // from class: com.android.wm.shell.common.split.DividerPanel.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                DividerPanel.this.mH.sendEmptyMessage(0);
            }
        };
        this.mDismissReceiver = r3;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_SWITCHED");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        context.registerReceiver(r3, intentFilter, null, h, 2);
    }

    public final boolean isAddToEdgeEnable() {
        boolean z;
        boolean z2;
        boolean z3;
        if (!CoreRune.ONE_UI_5_1_1 ? Settings.Global.getInt(this.mContext.getContentResolver(), "edge_enable", 1) == 1 : Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "edge_enable", 0, -2) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Slog.d("DividerPanel", "Edge disable");
            return false;
        }
        String stringForUser = Settings.System.getStringForUser(this.mContext.getContentResolver(), "cocktail_bar_enabled_cocktails", -2);
        String edgePanelProviderName = MultiWindowUtils.getEdgePanelProviderName();
        if (stringForUser != null) {
            for (String str : stringForUser.split(";")) {
                if (str.equals(edgePanelProviderName)) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (!z2) {
            Slog.d("DividerPanel", "AppsEdge disable");
            return false;
        }
        if (Settings.System.getIntForUser(this.mContext.getContentResolver(), "easy_mode_switch", 1, -2) == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            Slog.d("DividerPanel", "EasyMode on");
            return false;
        }
        if (!this.mIsSystemUser) {
            Slog.d("DividerPanel", "Not system user");
            return false;
        }
        if (this.mContext.getResources().getConfiguration().orientation == 2) {
            if (MultiWindowUtils.isTablet() || (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY && !MultiWindowUtils.isInSubDisplay(this.mContext))) {
                return true;
            }
            Slog.d("DividerPanel", "Is not tablet, or is foldable device, but is in sub-display.");
            return false;
        }
        if (CoreRune.MW_MULTI_SPLIT_APP_PAIR_FOLDING_POLICY) {
            int intForUser = Settings.System.getIntForUser(this.mContext.getContentResolver(), "edge_show_screen", 0, -2);
            boolean isInSubDisplay = MultiWindowUtils.isInSubDisplay(this.mContext);
            if (intForUser != 0) {
                if (intForUser == 1) {
                    isInSubDisplay = !isInSubDisplay;
                } else if (intForUser != 2) {
                    isInSubDisplay = false;
                }
            } else {
                isInSubDisplay = true;
            }
            if (!isInSubDisplay) {
                Slog.d("DividerPanel", "Invalid edge show screen");
                return false;
            }
        }
        return true;
    }

    public final boolean isAddToTaskBarEnable() {
        boolean z;
        boolean z2 = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR");
        if (Settings.Global.getInt(this.mContentResolver, "sem_task_bar_available", 0) == 1) {
            z = true;
        } else {
            z = false;
        }
        boolean isInSubDisplay = MultiWindowUtils.isInSubDisplay(this.mContext);
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("supportTaskBar: ", z2, "hasTaskBar: ", z, " inSubDisplay: ");
        m.append(isInSubDisplay);
        Slog.d("DividerPanel", m.toString());
        if (!z2 || !z || isInSubDisplay) {
            return false;
        }
        return true;
    }

    public final boolean isSupportPanelOpenPolicy() {
        ComponentName componentName;
        StageCoordinator stageCoordinator = this.mSplitLayout.mStageCoordinator;
        if (stageCoordinator != null) {
            ActivityManager.RunningTaskInfo runningTaskInfo = stageCoordinator.mMainStage.mRootTaskInfo;
            ComponentName componentName2 = null;
            if (runningTaskInfo != null) {
                componentName = runningTaskInfo.topActivity;
            } else {
                componentName = null;
            }
            ActivityManager.RunningTaskInfo runningTaskInfo2 = stageCoordinator.mSideStage.mRootTaskInfo;
            if (runningTaskInfo2 != null) {
                componentName2 = runningTaskInfo2.topActivity;
            }
            if (componentName == null || (!MultiWindowUtils.isAppsEdgeActivity(componentName) && !componentName.getPackageName().equals("com.samsung.android.app.taskedge"))) {
                if (componentName2 != null) {
                    if (MultiWindowUtils.isAppsEdgeActivity(componentName2) || componentName2.getPackageName().equals("com.samsung.android.app.taskedge")) {
                        return false;
                    }
                    return true;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        StageCoordinator stageCoordinator = this.mSplitLayout.mStageCoordinator;
        if (view.getId() == com.android.systemui.R.id.rotating_icon) {
            if (stageCoordinator != null) {
                stageCoordinator.rotateMultiSplitWithTransition();
                if (CoreRune.MW_SPLIT_DIVIDER_SA_LOGGING) {
                    if (this.mSplitLayout.isVerticalDivision()) {
                        str = "Horizontal split -> Vertical split";
                    } else {
                        str = "Vertical split -> Horizontal split";
                    }
                    CoreSaLogger.logForAdvanced("1032", str);
                }
            }
        } else if (view.getId() == com.android.systemui.R.id.switching_icon) {
            if (stageCoordinator != null) {
                stageCoordinator.swapTasksInSplitScreenMode$1();
                if (CoreRune.MW_SPLIT_DIVIDER_SA_LOGGING) {
                    CoreSaLogger.logForAdvanced("1033");
                }
            }
        } else if (view.getId() == com.android.systemui.R.id.add_app_pair_icon) {
            final ArrayMap arrayMap = new ArrayMap();
            if (isAddToTaskBarEnable()) {
                arrayMap.put(0, this.mContext.getResources().getString(com.android.systemui.R.string.taskbar));
            }
            if (MultiWindowUtils.isDefaultLauncher(this.mContext)) {
                arrayMap.put(1, this.mContext.getResources().getString(com.android.systemui.R.string.home_screen));
            }
            if (isAddToEdgeEnable()) {
                arrayMap.put(2, this.mContext.getResources().getString(com.android.systemui.R.string.apps_edge_panel));
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
            builder.setTitle(com.android.systemui.R.string.add_app_pair_to);
            builder.setItems((CharSequence[]) arrayMap.values().toArray(new String[arrayMap.size()]), new DialogInterface.OnClickListener() { // from class: com.android.wm.shell.common.split.DividerPanel$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DividerPanel.this.mAppPairShortcutController.createAppPairShortcut(((Integer) arrayMap.keyAt(i)).intValue());
                }
            });
            AlertDialog create = builder.create();
            this.mAddToAppPairDialog = create;
            create.getWindow().setType(2008);
            this.mAddToAppPairDialog.getWindow().setGravity(80);
            this.mAddToAppPairDialog.show();
            if (CoreRune.MW_SPLIT_APP_PAIR_SA_LOGGING) {
                CoreSaLogger.logForAdvanced("1036");
            }
        }
        this.mIsLongPressOrHover = false;
        removeDividerPanel();
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 9) {
            if (action == 10) {
                this.mIsLongPressOrHover = false;
                scheduleRemoveDividerPanel();
            }
        } else {
            this.mIsLongPressOrHover = true;
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.mIsLongPressOrHover = true;
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            this.mIsLongPressOrHover = false;
            scheduleRemoveDividerPanel();
        }
        return false;
    }

    public final void removeDividerPanel() {
        if (this.mIsLongPressOrHover) {
            return;
        }
        DividerPanelWindowManager dividerPanelWindowManager = this.mWindowManager;
        if (dividerPanelWindowManager.mView != null) {
            Log.d("DividerPanelWindowManager", "remove, mView=" + dividerPanelWindowManager.mView);
            dividerPanelWindowManager.mWm.removeViewImmediate(dividerPanelWindowManager.mView);
            dividerPanelWindowManager.mView = null;
        }
        DividerPanelCallbacks dividerPanelCallbacks = this.mCallbacks;
        if (dividerPanelCallbacks != null) {
            SplitWindowManager splitWindowManager = (SplitWindowManager) dividerPanelCallbacks;
            if (splitWindowManager.mShowingFirstAutoOpenDividerPanel) {
                splitWindowManager.mIsFirstAutoOpenDividerPanel = false;
                SharedPreferences.Editor edit = splitWindowManager.mPref.edit();
                edit.putBoolean("divider_panel_first_auto_open", false);
                edit.apply();
                Slog.d("SplitWindowManager", "Exit DividerPanel first auto open");
            }
        }
        this.mCallbacks = null;
    }

    public final void scheduleRemoveDividerPanel() {
        this.mH.removeCallbacks(this.mRemoveRunnable);
        this.mH.postDelayed(this.mRemoveRunnable, 3000L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:181:0x00b5, code lost:
    
        if (com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_FREE_POSITION != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x00bc, code lost:
    
        r10 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x00be, code lost:
    
        r10 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x00ba, code lost:
    
        if (com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_FREE_POSITION != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01bb, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:121:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateDividerPanel() {
        /*
            Method dump skipped, instructions count: 1082
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.split.DividerPanel.updateDividerPanel():void");
    }
}
