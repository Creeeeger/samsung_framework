package com.android.wm.shell.pip.tv;

import android.app.ActivityTaskManager;
import android.app.TaskInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.media.session.MediaSessionManager;
import android.os.Handler;
import android.os.RemoteException;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArraySet;
import com.android.systemui.R;
import com.android.wm.shell.WindowManagerShellWrapper;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TaskStackListenerImpl;
import com.android.wm.shell.pip.Pip;
import com.android.wm.shell.pip.PipAnimationController;
import com.android.wm.shell.pip.PipAppOpsListener;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import com.android.wm.shell.pip.PipMediaController;
import com.android.wm.shell.pip.PipMediaController$$ExternalSyntheticLambda0;
import com.android.wm.shell.pip.PipParamsChangedForwarder;
import com.android.wm.shell.pip.PipTaskOrganizer;
import com.android.wm.shell.pip.PipTransitionController;
import com.android.wm.shell.pip.tv.TvPipAction;
import com.android.wm.shell.pip.tv.TvPipBoundsController;
import com.android.wm.shell.pip.tv.TvPipMenuController;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.sysui.ConfigurationChangeListener;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.sysui.UserChangeListener;
import com.sec.ims.configuration.DATA;
import java.util.ArrayList;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvPipController implements PipTransitionController.PipTransitionCallback, TvPipBoundsController.PipBoundsListener, TvPipMenuController.Delegate, DisplayController.OnDisplaysChangedListener, ConfigurationChangeListener, UserChangeListener {
    public final ActionBroadcastReceiver mActionBroadcastReceiver;
    public final PipAppOpsListener mAppOpsListener;
    public final Context mContext;
    public final DisplayController mDisplayController;
    public int mEduTextWindowExitAnimationDuration;
    public final TvPipImpl mImpl;
    public final ShellExecutor mMainExecutor;
    public final Handler mMainHandler;
    public final PipDisplayLayoutState mPipDisplayLayoutState;
    public int mPipForceCloseDelay;
    public final PipMediaController mPipMediaController;
    public final TvPipNotificationController mPipNotificationController;
    public final PipParamsChangedForwarder mPipParamsChangedForwarder;
    public final PipTaskOrganizer mPipTaskOrganizer;
    public final PipTransitionController mPipTransitionController;
    public int mResizeAnimationDuration;
    public final ShellController mShellController;
    public final TaskStackListenerImpl mTaskStackListener;
    public final TvPipActionsProvider mTvPipActionsProvider;
    public final TvPipBoundsAlgorithm mTvPipBoundsAlgorithm;
    public final TvPipBoundsController mTvPipBoundsController;
    public final TvPipBoundsState mTvPipBoundsState;
    public final TvPipMenuController mTvPipMenuController;
    public final WindowManagerShellWrapper mWmShellWrapper;
    public int mState = 0;
    public int mPinnedTaskId = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ActionBroadcastReceiver extends BroadcastReceiver {
        public final IntentFilter mIntentFilter;
        public boolean mRegistered;

        public /* synthetic */ ActionBroadcastReceiver(TvPipController tvPipController, int i) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            int i = 0;
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1181410214, 0, "%s: on(Broadcast)Receive(), action=%s", "TvPipController", String.valueOf(action));
            }
            if ("com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU".equals(action)) {
                TvPipController.this.showPictureInPictureMenu(false);
                return;
            }
            TvPipController tvPipController = TvPipController.this;
            if ("com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP".equals(action)) {
                i = 1;
            } else if ("com.android.wm.shell.pip.tv.notification.action.MOVE_PIP".equals(action)) {
                i = 2;
            } else if ("com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP".equals(action)) {
                i = 3;
            } else if (!"com.android.wm.shell.pip.tv.notification.action.FULLSCREEN".equals(action)) {
                i = 4;
            }
            tvPipController.executeAction(i);
        }

        private ActionBroadcastReceiver() {
            IntentFilter intentFilter = new IntentFilter();
            this.mIntentFilter = intentFilter;
            intentFilter.addAction("com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP");
            intentFilter.addAction("com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU");
            intentFilter.addAction("com.android.wm.shell.pip.tv.notification.action.MOVE_PIP");
            intentFilter.addAction("com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP");
            intentFilter.addAction("com.android.wm.shell.pip.tv.notification.action.FULLSCREEN");
            this.mRegistered = false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TvPipImpl implements Pip {
        public /* synthetic */ TvPipImpl(TvPipController tvPipController, int i) {
            this(tvPipController);
        }

        private TvPipImpl(TvPipController tvPipController) {
        }
    }

    private TvPipController(Context context, ShellInit shellInit, ShellController shellController, TvPipBoundsState tvPipBoundsState, PipDisplayLayoutState pipDisplayLayoutState, TvPipBoundsAlgorithm tvPipBoundsAlgorithm, TvPipBoundsController tvPipBoundsController, PipAppOpsListener pipAppOpsListener, PipTaskOrganizer pipTaskOrganizer, PipTransitionController pipTransitionController, TvPipMenuController tvPipMenuController, PipMediaController pipMediaController, TvPipNotificationController tvPipNotificationController, TaskStackListenerImpl taskStackListenerImpl, PipParamsChangedForwarder pipParamsChangedForwarder, DisplayController displayController, WindowManagerShellWrapper windowManagerShellWrapper, Handler handler, ShellExecutor shellExecutor) {
        int i = 0;
        this.mImpl = new TvPipImpl(this, i);
        this.mContext = context;
        this.mMainHandler = handler;
        this.mMainExecutor = shellExecutor;
        this.mShellController = shellController;
        this.mDisplayController = displayController;
        DisplayLayout displayLayout = new DisplayLayout(context, context.getDisplay());
        this.mTvPipBoundsState = tvPipBoundsState;
        this.mPipDisplayLayoutState = pipDisplayLayoutState;
        pipDisplayLayoutState.mDisplayLayout.set(displayLayout);
        pipDisplayLayoutState.mDisplayId = context.getDisplayId();
        this.mTvPipBoundsAlgorithm = tvPipBoundsAlgorithm;
        this.mTvPipBoundsController = tvPipBoundsController;
        tvPipBoundsController.mListener = this;
        this.mPipMediaController = pipMediaController;
        TvPipActionsProvider tvPipActionsProvider = new TvPipActionsProvider(context, pipMediaController, new TvPipAction.SystemActionsHandler() { // from class: com.android.wm.shell.pip.tv.TvPipController$$ExternalSyntheticLambda0
            @Override // com.android.wm.shell.pip.tv.TvPipAction.SystemActionsHandler
            public final void executeAction(int i2) {
                TvPipController.this.executeAction(i2);
            }
        });
        this.mTvPipActionsProvider = tvPipActionsProvider;
        this.mPipNotificationController = tvPipNotificationController;
        tvPipNotificationController.mTvPipActionsProvider = tvPipActionsProvider;
        ArrayList arrayList = (ArrayList) tvPipActionsProvider.mListeners;
        if (!arrayList.contains(tvPipNotificationController)) {
            arrayList.add(tvPipNotificationController);
        }
        this.mTvPipMenuController = tvPipMenuController;
        tvPipMenuController.getClass();
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -667275149, 0, "%s: setDelegate(), delegate=%s", "TvPipMenuController", String.valueOf(this));
        }
        if (tvPipMenuController.mDelegate == null) {
            tvPipMenuController.mDelegate = this;
            tvPipMenuController.mTvPipActionsProvider = tvPipActionsProvider;
            this.mActionBroadcastReceiver = new ActionBroadcastReceiver(this, i);
            this.mAppOpsListener = pipAppOpsListener;
            this.mPipTaskOrganizer = pipTaskOrganizer;
            this.mPipTransitionController = pipTransitionController;
            this.mPipParamsChangedForwarder = pipParamsChangedForwarder;
            this.mTaskStackListener = taskStackListenerImpl;
            this.mWmShellWrapper = windowManagerShellWrapper;
            shellInit.addInitCallback(new TvPipController$$ExternalSyntheticLambda1(this, i), this);
            return;
        }
        throw new IllegalStateException("The delegate has already been set and should not change.");
    }

    public static TvPipImpl create(Context context, ShellInit shellInit, ShellController shellController, TvPipBoundsState tvPipBoundsState, PipDisplayLayoutState pipDisplayLayoutState, TvPipBoundsAlgorithm tvPipBoundsAlgorithm, TvPipBoundsController tvPipBoundsController, PipAppOpsListener pipAppOpsListener, PipTaskOrganizer pipTaskOrganizer, PipTransitionController pipTransitionController, TvPipMenuController tvPipMenuController, PipMediaController pipMediaController, TvPipNotificationController tvPipNotificationController, TaskStackListenerImpl taskStackListenerImpl, PipParamsChangedForwarder pipParamsChangedForwarder, DisplayController displayController, WindowManagerShellWrapper windowManagerShellWrapper, Handler handler, ShellExecutor shellExecutor) {
        return new TvPipController(context, shellInit, shellController, tvPipBoundsState, pipDisplayLayoutState, tvPipBoundsAlgorithm, tvPipBoundsController, pipAppOpsListener, pipTaskOrganizer, pipTransitionController, tvPipMenuController, pipMediaController, tvPipNotificationController, taskStackListenerImpl, pipParamsChangedForwarder, displayController, windowManagerShellWrapper, handler, shellExecutor).mImpl;
    }

    public static TaskInfo getPinnedTaskInfo() {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1615202766, 0, "%s: getPinnedTaskInfo()", "TvPipController");
        }
        try {
            ActivityTaskManager.RootTaskInfo rootTaskInfo = ActivityTaskManager.getService().getRootTaskInfo(2, 0);
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1194212228, 0, "%s: taskInfo=%s", "TvPipController", String.valueOf(rootTaskInfo));
            }
            return rootTaskInfo;
        } catch (RemoteException e) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1679295386, 0, "%s: getRootTaskInfo() failed, %s", "TvPipController", String.valueOf(e));
                return null;
            }
            return null;
        }
    }

    public static String stateToName(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return "PIP_MENU";
                }
                throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unknown state ", i));
            }
            return DATA.DM_NODE.PIP;
        }
        return "NO_PIP";
    }

    public final void closeCurrentPiP(int i) {
        if (this.mPinnedTaskId != i) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1170726109, 0, "%s: PiP has already been closed by custom close action", "TvPipController");
            }
        } else {
            this.mPipTaskOrganizer.removePip();
            onPipDisappeared();
        }
    }

    public final void executeAction(int i) {
        if (i != 0) {
            int i2 = 1;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 5) {
                            ((HandlerExecutor) this.mMainExecutor).executeDelayed(this.mPipForceCloseDelay, new TvPipController$$ExternalSyntheticLambda1(this, i2));
                            return;
                        }
                        return;
                    }
                    if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                        ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1575272293, 0, "%s: togglePipExpansion()", "TvPipController");
                    }
                    TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
                    boolean z = true ^ tvPipBoundsState.mIsTvPipExpanded;
                    this.mTvPipBoundsAlgorithm.updateGravityOnExpansionToggled(z);
                    tvPipBoundsState.mTvPipManuallyCollapsed = !z;
                    tvPipBoundsState.mIsTvPipExpanded = z;
                    updatePinnedStackBounds();
                    return;
                }
                showPictureInPictureMenu(true);
                return;
            }
            closeCurrentPiP(this.mPinnedTaskId);
            return;
        }
        movePipToFullscreen();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void movePip(int r8) {
        /*
            r7 = this;
            com.android.wm.shell.pip.tv.TvPipBoundsAlgorithm r0 = r7.mTvPipBoundsAlgorithm
            r0.getClass()
            boolean r1 = com.android.wm.shell.protolog.ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled
            java.lang.String r2 = "TvPipBoundsAlgorithm"
            if (r1 == 0) goto L1f
            long r3 = (long) r8
            com.android.wm.shell.protolog.ShellProtoLogGroup r1 = com.android.wm.shell.protolog.ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            java.lang.Object[] r3 = new java.lang.Object[]{r2, r3}
            java.lang.String r4 = "%s: updateGravity, keycode: %d"
            r5 = 680378294(0x288dbfb6, float:1.5737286E-14)
            r6 = 4
            com.android.wm.shell.protolog.ShellProtoLogImpl.d(r1, r5, r6, r4, r3)
        L1f:
            com.android.wm.shell.pip.tv.TvPipBoundsState r0 = r0.mTvPipBoundsState
            boolean r1 = r0.mIsTvPipExpanded
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L3f
            int r1 = r0.mTvFixedPipOrientation
            if (r1 != r3) goto L33
            r5 = 19
            if (r8 == r5) goto L74
            r5 = 20
            if (r8 == r5) goto L74
        L33:
            r5 = 2
            if (r1 != r5) goto L3f
            r1 = 22
            if (r8 == r1) goto L74
            r1 = 21
            if (r8 != r1) goto L3f
            goto L74
        L3f:
            int r1 = r0.mTvPipGravity
            r5 = r1 & 7
            r6 = r1 & 112(0x70, float:1.57E-43)
            switch(r8) {
                case 19: goto L50;
                case 20: goto L4d;
                case 21: goto L4b;
                case 22: goto L49;
                default: goto L48;
            }
        L48:
            goto L52
        L49:
            r5 = 5
            goto L52
        L4b:
            r5 = 3
            goto L52
        L4d:
            r6 = 80
            goto L52
        L50:
            r6 = 48
        L52:
            r8 = r5 | r6
            if (r8 == r1) goto L74
            r0.mTvPipGravity = r8
            boolean r0 = com.android.wm.shell.protolog.ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled
            if (r0 == 0) goto L72
            java.lang.String r8 = android.view.Gravity.toString(r8)
            java.lang.String r8 = java.lang.String.valueOf(r8)
            com.android.wm.shell.protolog.ShellProtoLogGroup r0 = com.android.wm.shell.protolog.ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE
            java.lang.Object[] r8 = new java.lang.Object[]{r2, r8}
            r1 = 655169607(0x270d1847, float:1.9580842E-15)
            java.lang.String r2 = "%s: updateGravity, new gravity: %s"
            com.android.wm.shell.protolog.ShellProtoLogImpl.d(r0, r1, r4, r2, r8)
        L72:
            r8 = r3
            goto L75
        L74:
            r8 = r4
        L75:
            if (r8 == 0) goto L8c
            com.android.wm.shell.pip.tv.TvPipBoundsState r8 = r7.mTvPipBoundsState
            int r8 = r8.mTvPipGravity
            com.android.wm.shell.pip.tv.TvPipMenuController r0 = r7.mTvPipMenuController
            com.android.wm.shell.pip.tv.TvPipMenuView r0 = r0.mPipMenuView
            r0.mCurrentPipGravity = r8
            int r8 = r0.mCurrentMenuMode
            if (r8 != r3) goto L88
            r0.showMovementHints()
        L88:
            r7.updatePinnedStackBounds()
            goto La0
        L8c:
            boolean r7 = com.android.wm.shell.protolog.ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled
            if (r7 == 0) goto La0
            com.android.wm.shell.protolog.ShellProtoLogGroup r7 = com.android.wm.shell.protolog.ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE
            java.lang.String r8 = "TvPipController"
            java.lang.Object[] r8 = new java.lang.Object[]{r8}
            r0 = 1814468056(0x6c2695d8, float:8.055572E26)
            java.lang.String r1 = "%s: Position hasn't changed"
            com.android.wm.shell.protolog.ShellProtoLogImpl.d(r7, r0, r4, r1, r8)
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.tv.TvPipController.movePip(int):void");
    }

    public final void movePipToFullscreen() {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -267678729, 0, "%s: movePipToFullscreen(), state=%s", "TvPipController", stateToName(this.mState));
        }
        this.mPipTaskOrganizer.exitPip(this.mResizeAnimationDuration, false);
        onPipDisappeared();
    }

    @Override // com.android.wm.shell.sysui.ConfigurationChangeListener
    public final void onConfigurationChanged(Configuration configuration) {
        boolean z = false;
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 190882132, 0, "%s: onConfigurationChanged(), state=%s", "TvPipController", stateToName(this.mState));
        }
        TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
        int i = tvPipBoundsState.mDefaultGravity & 7;
        reloadResources();
        TvPipNotificationController tvPipNotificationController = this.mPipNotificationController;
        tvPipNotificationController.mDefaultTitle = tvPipNotificationController.mContext.getResources().getString(R.string.pip_notification_unknown_title);
        tvPipNotificationController.updateNotificationContent();
        this.mTvPipBoundsAlgorithm.onConfigurationChanged(this.mContext);
        tvPipBoundsState.updateDefaultGravity();
        int i2 = tvPipBoundsState.mDefaultGravity & 7;
        if (this.mState != 0) {
            z = true;
        }
        if (z && i != i2) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.i(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 599056174, "%s: movePipToOppositeSide", "TvPipController");
            }
            int i3 = tvPipBoundsState.mTvPipGravity;
            if ((i3 & 5) == 5) {
                movePip(21);
            } else if ((i3 & 3) == 3) {
                movePip(22);
            }
        }
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onKeepClearAreasChanged(int i, Set set, Set set2) {
        if (this.mPipDisplayLayoutState.mDisplayId == i) {
            TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
            boolean z = !set2.equals(tvPipBoundsState.getUnrestrictedKeepClearAreas());
            ArraySet arraySet = (ArraySet) tvPipBoundsState.mRestrictedKeepClearAreas;
            arraySet.clear();
            arraySet.addAll(set);
            ArraySet arraySet2 = (ArraySet) tvPipBoundsState.mUnrestrictedKeepClearAreas;
            arraySet2.clear();
            arraySet2.addAll(set2);
            updatePinnedStackBounds(this.mResizeAnimationDuration, z);
        }
    }

    public final void onPipDisappeared() {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1662796069, 0, "%s: onPipDisappeared() state=%s", "TvPipController", stateToName(this.mState));
        }
        TvPipNotificationController tvPipNotificationController = this.mPipNotificationController;
        tvPipNotificationController.getClass();
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -858212510, 0, "%s: dismiss()", "TvPipNotificationController");
        }
        tvPipNotificationController.mIsNotificationShown = false;
        tvPipNotificationController.mPackageName = null;
        tvPipNotificationController.mNotificationManager.cancel("TvPip", 1100);
        ActionBroadcastReceiver actionBroadcastReceiver = this.mActionBroadcastReceiver;
        if (actionBroadcastReceiver.mRegistered) {
            TvPipController.this.mContext.unregisterReceiver(actionBroadcastReceiver);
            actionBroadcastReceiver.mRegistered = false;
        }
        this.mTvPipMenuController.closeMenu();
        TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
        tvPipBoundsState.mTvFixedPipOrientation = 0;
        int i = tvPipBoundsState.mDefaultGravity;
        tvPipBoundsState.mTvPipGravity = i;
        tvPipBoundsState.mPreviousCollapsedGravity = i;
        tvPipBoundsState.mTvPipManuallyCollapsed = false;
        TvPipBoundsController tvPipBoundsController = this.mTvPipBoundsController;
        tvPipBoundsController.mCurrentPlacementBounds = null;
        tvPipBoundsController.mPipTargetBounds = null;
        tvPipBoundsController.cancelScheduledPlacement();
        setState(0);
        this.mPinnedTaskId = -1;
    }

    @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
    public final void onPipTransitionCanceled(int i) {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1034258818, 0, "%s: onPipTransition_Canceled(), state=%s", "TvPipController", stateToName(this.mState));
        }
        boolean isInPipDirection = PipAnimationController.isInPipDirection(i);
        TvPipMenuController tvPipMenuController = this.mTvPipMenuController;
        tvPipMenuController.getClass();
        tvPipMenuController.mMainHandler.post(new TvPipMenuController$$ExternalSyntheticLambda0(tvPipMenuController, isInPipDirection));
        this.mTvPipActionsProvider.updatePipExpansionState(this.mTvPipBoundsState.mIsTvPipExpanded);
    }

    @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
    public final void onPipTransitionFinished(int i) {
        boolean isInPipDirection = PipAnimationController.isInPipDirection(i);
        if (isInPipDirection && this.mState == 0) {
            setState(1);
        }
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -387812468, 16, "%s: onPipTransition_Finished(), state=%s, direction=%d", "TvPipController", stateToName(this.mState), Long.valueOf(i));
        }
        TvPipMenuController tvPipMenuController = this.mTvPipMenuController;
        tvPipMenuController.getClass();
        tvPipMenuController.mMainHandler.post(new TvPipMenuController$$ExternalSyntheticLambda0(tvPipMenuController, isInPipDirection));
        this.mTvPipActionsProvider.updatePipExpansionState(this.mTvPipBoundsState.mIsTvPipExpanded);
    }

    @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
    public final void onPipTransitionStarted(int i, Rect rect) {
        boolean z;
        if (PipAnimationController.isInPipDirection(i) && this.mState == 0) {
            TvPipBoundsState tvPipBoundsState = this.mTvPipBoundsState;
            if (tvPipBoundsState.mIsTvExpandedPipSupported && tvPipBoundsState.mDesiredTvExpandedAspectRatio != 0.0f) {
                z = true;
            } else {
                z = false;
            }
            this.mTvPipActionsProvider.updateExpansionEnabled(z);
        }
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1831687941, 16, "%s: onPipTransition_Started(), state=%s, direction=%d", "TvPipController", stateToName(this.mState), Long.valueOf(i));
        }
    }

    @Override // com.android.wm.shell.sysui.UserChangeListener
    public final void onUserChanged$1(int i) {
        PipMediaController pipMediaController = this.mPipMediaController;
        MediaSessionManager mediaSessionManager = pipMediaController.mMediaSessionManager;
        PipMediaController$$ExternalSyntheticLambda0 pipMediaController$$ExternalSyntheticLambda0 = pipMediaController.mSessionsChangedListener;
        mediaSessionManager.removeOnActiveSessionsChangedListener(pipMediaController$$ExternalSyntheticLambda0);
        mediaSessionManager.addOnActiveSessionsChangedListener(null, UserHandle.CURRENT, pipMediaController.mHandlerExecutor, pipMediaController$$ExternalSyntheticLambda0);
    }

    public final void reloadResources() {
        Resources resources = this.mContext.getResources();
        this.mResizeAnimationDuration = resources.getInteger(R.integer.config_pipResizeAnimationDuration);
        this.mPipForceCloseDelay = resources.getInteger(R.integer.config_pipForceCloseDelay);
        this.mEduTextWindowExitAnimationDuration = resources.getInteger(R.integer.pip_edu_text_window_exit_animation_duration);
    }

    public final void setState(int i) {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1495057074, 0, "%s: setState(), state=%s, prev=%s", "TvPipController", stateToName(i), stateToName(this.mState));
        }
        this.mState = i;
    }

    public final void showPictureInPictureMenu(boolean z) {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1131163854, 0, "%s: showPictureInPictureMenu(), state=%s", "TvPipController", stateToName(this.mState));
        }
        if (this.mState == 0) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1376716975, 0, "%s:  > cannot open Menu from the current state.", "TvPipController");
                return;
            }
            return;
        }
        setState(2);
        TvPipMenuController tvPipMenuController = this.mTvPipMenuController;
        if (z) {
            tvPipMenuController.getClass();
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1455203829, 0, "%s: showMovementMenu()", "TvPipMenuController");
            }
            tvPipMenuController.switchToMenuMode(1, false);
        } else {
            tvPipMenuController.getClass();
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1690488730, 0, "%s: showMenu()", "TvPipMenuController");
            }
            tvPipMenuController.switchToMenuMode(2, true);
        }
        updatePinnedStackBounds();
    }

    public final void updatePinnedStackBounds() {
        updatePinnedStackBounds(this.mResizeAnimationDuration, true);
    }

    public final void updatePinnedStackBounds(int i, boolean z) {
        if (this.mState == 0) {
            return;
        }
        boolean isInMoveMode = this.mTvPipMenuController.isInMoveMode();
        this.mTvPipBoundsController.recalculatePipBounds(isInMoveMode, this.mState == 2 || isInMoveMode, i, z);
    }
}
