package com.android.wm.shell.splitscreen;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.app.TaskInfo;
import android.app.WindowConfiguration;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ShortcutInfo;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.devicestate.DeviceStateManager;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArrayMap;
import android.util.IntArray;
import android.util.Log;
import android.util.Slog;
import android.view.Choreographer;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.IRemoteAnimationRunner;
import android.view.InsetsState;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.WindowInsets;
import android.widget.Toast;
import android.window.RemoteTransition;
import android.window.TransitionInfo;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.internal.policy.DividerSnapAlgorithm;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.launcher3.icons.IconProvider;
import com.android.server.LocalServices;
import com.android.systemui.R;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.KeyguardService$$ExternalSyntheticOutline0;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayChangeController;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayImeController;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ScreenshotUtils;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.common.split.DividerResizeController;
import com.android.wm.shell.common.split.DividerView;
import com.android.wm.shell.common.split.MultiSplitLayoutInfo;
import com.android.wm.shell.common.split.SplitDecorManager;
import com.android.wm.shell.common.split.SplitLayout;
import com.android.wm.shell.common.split.SplitScreenConstants;
import com.android.wm.shell.common.split.SplitScreenUtils;
import com.android.wm.shell.common.split.SplitWindowManager;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.recents.RecentTasksController;
import com.android.wm.shell.splitscreen.SplitBackgroundController;
import com.android.wm.shell.splitscreen.SplitScreen;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.splitscreen.SplitScreenTransitions;
import com.android.wm.shell.splitscreen.StageTaskListener;
import com.android.wm.shell.transition.DefaultMixedHandler;
import com.android.wm.shell.transition.LegacyTransitions$ILegacyTransition;
import com.android.wm.shell.transition.OneShotRemoteHandler;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.util.SplitBounds;
import com.android.wm.shell.util.StageUtils;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.core.RunestoneLogger;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import com.sec.ims.volte2.data.VolteConstants;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class StageCoordinator implements SplitLayout.SplitLayoutHandler, DisplayController.OnDisplaysChangedListener, Transitions.TransitionHandler, ShellTaskOrganizer.TaskListener {
    public boolean mAppPairStarted;
    public ValueAnimator mCellDividerFadeInAnimator;
    public boolean mCellDividerVisible;
    public final CellStage mCellStage;
    public final StageListenerImpl mCellStageListener;
    public int mCellStageWindowConfigPosition;
    public final Context mContext;
    public final ArrayList mCurrentPackageNameList;
    public final StageCoordinator$$ExternalSyntheticLambda3 mDelayedHandleLayoutSizeChange;
    public final DisplayController mDisplayController;
    public final int mDisplayId;
    public final DisplayImeController mDisplayImeController;
    public final DisplayInsetsController mDisplayInsetsController;
    public ValueAnimator mDividerFadeInAnimator;
    public boolean mDividerLeashHidden;
    public DividerResizeController mDividerResizeController;
    public boolean mDividerVisible;
    public final List mExcludeLoggingPackages;
    public boolean mExitSplitScreenOnHide;
    public boolean mIsDividerRemoteAnimating;
    public boolean mIsDropEntering;
    public boolean mIsExiting;
    public boolean mIsFlexPanelMode;
    public boolean mIsFolded;
    public boolean mIsOpeningHomeDuringSplit;
    public boolean mIsRecentsInSplitAnimating;
    public boolean mIsRootTranslucent;
    public boolean mIsVideoControls;
    public boolean mKeyguardShowing;
    public final Configuration mLastConfiguration;
    public int mLastMainSplitDivision;
    public final ArrayList mLastPackageNameList;
    public int mLastReportedCellStageWinConfigPosition;
    public int mLastReportedMainStageWinConfigPosition;
    public int mLastReportedSideStageWinConfigPosition;
    public SplitBounds mLastSplitStateInfo;
    public int mLastTransactionType;
    public final List mListeners;
    public final SplitscreenEventLogger mLogger;
    public final ShellExecutor mMainExecutor;
    public final MainStage mMainStage;
    public final StageListenerImpl mMainStageListener;
    public DefaultMixedHandler mMixedHandler;
    public WindowContainerToken mMovingToFreeformTaskToken;
    public int mOrientation;
    public final AnonymousClass1 mParentContainerCallbacks;
    public final ArrayList mPausingTasks;
    public final Optional mRecentTasks;
    ActivityManager.RunningTaskInfo mRootTaskInfo;
    public SurfaceControl mRootTaskLeash;
    public long mSeqForAsyncTransaction;
    public final StageCoordinator$$ExternalSyntheticLambda5 mSharedPrefListener;
    public boolean mShouldUpdateRecents;
    public boolean mShowDecorImmediately;
    public final SideStage mSideStage;
    public final StageListenerImpl mSideStageListener;
    public int mSideStagePosition;
    public boolean mSkipFlexPanelUpdate;
    public final SplitBackgroundController mSplitBackgroundController;
    public int mSplitDivision;
    public SplitLayout mSplitLayout;
    public boolean mSplitLayoutChangedForLaunchAdjacent;
    public SplitRequest mSplitRequest;
    public final SplitScreenTransitions mSplitTransitions;
    public final Toast mSplitUnsupportedToast;
    public final SyncTransactionQueue mSyncQueue;
    public final ShellTaskOrganizer mTaskOrganizer;
    public final Rect mTempRect;
    public final Rect mTempRect1;
    public final Rect mTempRect2;
    public final Rect mTempRect3;
    public Configuration mTmpConfigAfterFoldDismiss;
    public int mTopStageAfterFoldDismiss;
    public final TransactionPool mTransactionPool;
    public boolean mWillBeVideoControls;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.splitscreen.StageCoordinator$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements SplitWindowManager.ParentContainerCallbacks {
        public AnonymousClass1() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.splitscreen.StageCoordinator$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends IRemoteAnimationRunner.Stub {
        public final /* synthetic */ boolean val$isEnteringSplit;
        public final /* synthetic */ int val$position;

        public AnonymousClass2(boolean z, int i) {
            this.val$isEnteringSplit = z;
            this.val$position = i;
        }

        public final void onAnimationCancelled() {
            if (this.val$isEnteringSplit) {
                ((HandlerExecutor) StageCoordinator.this.mMainExecutor).execute(new StageCoordinator$2$$ExternalSyntheticLambda0(this, 1));
            }
        }

        public final void onAnimationStart(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
            if (this.val$isEnteringSplit && StageCoordinator.this.mSideStage.getChildCount() == 0) {
                ((HandlerExecutor) StageCoordinator.this.mMainExecutor).execute(new StageCoordinator$2$$ExternalSyntheticLambda0(this, 0));
                StageCoordinator.this.mSplitUnsupportedToast.show();
            }
            if (iRemoteAnimationFinishedCallback != null) {
                try {
                    iRemoteAnimationFinishedCallback.onAnimationFinished();
                } catch (RemoteException e) {
                    Slog.e("StageCoordinator", "Error finishing legacy transition: ", e);
                }
            }
            if (!CoreRune.MW_SPLIT_STACKING && !this.val$isEnteringSplit && remoteAnimationTargetArr != null) {
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                StageCoordinator stageCoordinator = StageCoordinator.this;
                if (this.val$position == stageCoordinator.mSideStagePosition) {
                    stageCoordinator.mSideStage.evictNonOpeningChildren(remoteAnimationTargetArr, windowContainerTransaction);
                } else {
                    stageCoordinator.mMainStage.evictNonOpeningChildren(remoteAnimationTargetArr, windowContainerTransaction);
                }
                StageCoordinator.this.mSyncQueue.queue(windowContainerTransaction);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.splitscreen.StageCoordinator$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 implements LegacyTransitions$ILegacyTransition {
        public final /* synthetic */ boolean val$isEnteringSplit;
        public final /* synthetic */ int val$position;

        public AnonymousClass3(boolean z, int i) {
            this.val$isEnteringSplit = z;
            this.val$position = i;
        }

        @Override // com.android.wm.shell.transition.LegacyTransitions$ILegacyTransition
        public final void onAnimationStart(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback, SurfaceControl.Transaction transaction) {
            StageCoordinator stageCoordinator = StageCoordinator.this;
            boolean z = this.val$isEnteringSplit;
            if (z && stageCoordinator.mSideStage.getChildCount() == 0) {
                ((HandlerExecutor) stageCoordinator.mMainExecutor).execute(new StageCoordinator$$ExternalSyntheticLambda6(this, 1));
                stageCoordinator.mSplitUnsupportedToast.show();
            }
            if (remoteAnimationTargetArr != null) {
                for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
                    if (remoteAnimationTarget.mode == 0) {
                        transaction.show(remoteAnimationTarget.leash);
                    }
                }
            }
            transaction.apply();
            if (iRemoteAnimationFinishedCallback != null) {
                try {
                    iRemoteAnimationFinishedCallback.onAnimationFinished();
                } catch (RemoteException e) {
                    Slog.e("StageCoordinator", "Error finishing legacy transition: ", e);
                }
            }
            if (!z && remoteAnimationTargetArr != null) {
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                if (this.val$position == stageCoordinator.mSideStagePosition) {
                    stageCoordinator.mSideStage.evictNonOpeningChildren(remoteAnimationTargetArr, windowContainerTransaction);
                } else {
                    stageCoordinator.mMainStage.evictNonOpeningChildren(remoteAnimationTargetArr, windowContainerTransaction);
                }
                stageCoordinator.mSyncQueue.queue(windowContainerTransaction);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RecentsTransitionCallback {
        public /* synthetic */ RecentsTransitionCallback(StageCoordinator stageCoordinator, int i) {
            this();
        }

        private RecentsTransitionCallback() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class StageChangeRecord {
        public boolean mContainShowFullscreenChange = false;
        public final ArrayMap mChanges = new ArrayMap();

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class StageChange {
            public final IntArray mAddedTaskId = new IntArray();
            public final IntArray mRemovedTaskId = new IntArray();
            public final StageTaskListener mStageTaskListener;

            public StageChange(StageTaskListener stageTaskListener) {
                this.mStageTaskListener = stageTaskListener;
            }

            public final boolean shouldDismissStage() {
                StageTaskListener stageTaskListener;
                if (this.mAddedTaskId.size() > 0) {
                    return false;
                }
                IntArray intArray = this.mRemovedTaskId;
                if (intArray.size() == 0) {
                    return false;
                }
                int size = intArray.size() - 1;
                int i = 0;
                while (true) {
                    stageTaskListener = this.mStageTaskListener;
                    if (size < 0) {
                        break;
                    }
                    if (stageTaskListener.containsTask(intArray.get(size))) {
                        i++;
                    }
                    size--;
                }
                if (i != stageTaskListener.getChildCount()) {
                    return false;
                }
                return true;
            }
        }

        public final void addRecord(StageTaskListener stageTaskListener, boolean z, int i) {
            StageChange stageChange;
            ArrayMap arrayMap = this.mChanges;
            if (!arrayMap.containsKey(stageTaskListener)) {
                stageChange = new StageChange(stageTaskListener);
                arrayMap.put(stageTaskListener, stageChange);
            } else {
                stageChange = (StageChange) arrayMap.get(stageTaskListener);
            }
            if (z) {
                stageChange.mAddedTaskId.add(i);
            } else {
                stageChange.mRemovedTaskId.add(i);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class StageListenerImpl implements StageTaskListener.StageListenerCallbacks {
        public boolean mHasRootTask = false;
        public boolean mVisible = false;
        public boolean mHasChildren = false;

        public StageListenerImpl() {
        }

        public final void dump(PrintWriter printWriter, String str) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, "mHasRootTask=");
            m.append(this.mHasRootTask);
            printWriter.println(m.toString());
            printWriter.println(str + "mVisible=" + this.mVisible);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("mHasChildren=");
            KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb, this.mHasChildren, printWriter);
        }

        /* JADX WARN: Code restructure failed: missing block: B:48:0x001c, code lost:
        
            if (r19 == r6) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onChildTaskStatusChanged(int r20, boolean r21, boolean r22) {
            /*
                Method dump skipped, instructions count: 231
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.StageListenerImpl.onChildTaskStatusChanged(int, boolean, boolean):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void onNoLongerSupportMultiWindow() {
            int i;
            StageCoordinator stageCoordinator = StageCoordinator.this;
            MainStage mainStage = stageCoordinator.mMainStage;
            if (mainStage.mIsActive) {
                if (stageCoordinator.mMainStageListener == this) {
                    i = 1;
                } else {
                    i = 0;
                }
                StageTaskListener stageTaskListener = mainStage;
                if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
                    if (i == 0) {
                        stageTaskListener = stageCoordinator.mSideStage;
                    }
                    stageCoordinator.exitSplitScreen(stageTaskListener, 1);
                    stageCoordinator.mSplitUnsupportedToast.show();
                    return;
                }
                int i2 = ~i ? 1 : 0;
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
                    int i3 = i;
                    if (!MultiWindowCoreState.MW_ENABLED) {
                        i3 = stageCoordinator.mMainStage.isFocused();
                    }
                    stageCoordinator.prepareSplitDismissChangeTransition(windowContainerTransaction, i3, null, false);
                }
                stageCoordinator.prepareExitSplitScreen(i2, windowContainerTransaction, true);
                stageCoordinator.mSplitTransitions.startDismissTransition(windowContainerTransaction, stageCoordinator, i2, 1);
            }
        }

        public final void postDividerPanelAutoOpenIfNeeded() {
            SplitLayout splitLayout = StageCoordinator.this.mSplitLayout;
            if (splitLayout == null) {
                return;
            }
            SplitWindowManager splitWindowManager = splitLayout.mSplitWindowManager;
            if (splitWindowManager.mDividerView != null && splitWindowManager.mDividerVisible && !splitWindowManager.mIsPendingFirstAutoOpenDividerPanel && splitWindowManager.mIsFirstAutoOpenDividerPanel && splitWindowManager.mDividerPanel.isSupportPanelOpenPolicy()) {
                splitWindowManager.mIsPendingFirstAutoOpenDividerPanel = true;
                Slog.d("SplitWindowManager", "Try to run DividerPanel first auto open");
                splitWindowManager.mDividerView.postDelayed(splitWindowManager.mDividerPanelAutoOpen, 500L);
            }
        }
    }

    /* renamed from: -$$Nest$monRemoteAnimationFinishedOrCancelled, reason: not valid java name */
    public static void m2469$$Nest$monRemoteAnimationFinishedOrCancelled(StageCoordinator stageCoordinator, WindowContainerTransaction windowContainerTransaction) {
        stageCoordinator.mIsDividerRemoteAnimating = false;
        stageCoordinator.mShouldUpdateRecents = true;
        stageCoordinator.clearRequestIfPresented();
        if (stageCoordinator.mMainStage.getChildCount() != 0 && stageCoordinator.mSideStage.getChildCount() != 0) {
            SyncTransactionQueue syncTransactionQueue = stageCoordinator.mSyncQueue;
            syncTransactionQueue.queue(windowContainerTransaction);
            syncTransactionQueue.runInSync(new StageCoordinator$$ExternalSyntheticLambda0(stageCoordinator, 4));
        } else {
            ((HandlerExecutor) stageCoordinator.mMainExecutor).execute(new StageCoordinator$$ExternalSyntheticLambda3(stageCoordinator, 7));
            stageCoordinator.mSplitUnsupportedToast.show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [android.content.SharedPreferences$OnSharedPreferenceChangeListener, com.android.wm.shell.splitscreen.StageCoordinator$$ExternalSyntheticLambda5] */
    public StageCoordinator(Context context, int i, SyncTransactionQueue syncTransactionQueue, ShellTaskOrganizer shellTaskOrganizer, DisplayController displayController, DisplayImeController displayImeController, DisplayInsetsController displayInsetsController, Transitions transitions, TransactionPool transactionPool, IconProvider iconProvider, ShellExecutor shellExecutor, Optional<RecentTasksController> optional) {
        SurfaceSession surfaceSession = new SurfaceSession();
        StageListenerImpl stageListenerImpl = new StageListenerImpl();
        this.mMainStageListener = stageListenerImpl;
        StageListenerImpl stageListenerImpl2 = new StageListenerImpl();
        this.mSideStageListener = stageListenerImpl2;
        StageListenerImpl stageListenerImpl3 = new StageListenerImpl();
        this.mCellStageListener = stageListenerImpl3;
        int i2 = 0;
        this.mCellStageWindowConfigPosition = 0;
        this.mSideStagePosition = 1;
        ArrayList arrayList = new ArrayList();
        this.mListeners = arrayList;
        this.mPausingTasks = new ArrayList();
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRect3 = new Rect();
        this.mTopStageAfterFoldDismiss = -1;
        this.mIsFolded = false;
        this.mIsFlexPanelMode = false;
        this.mSkipFlexPanelUpdate = false;
        this.mIsVideoControls = false;
        this.mWillBeVideoControls = false;
        this.mDelayedHandleLayoutSizeChange = new StageCoordinator$$ExternalSyntheticLambda3(this, i2);
        this.mLastPackageNameList = new ArrayList();
        this.mCurrentPackageNameList = new ArrayList();
        this.mExcludeLoggingPackages = Arrays.asList("com.sec.android.app.launcher", "com.android.systemui");
        this.mSeqForAsyncTransaction = -1L;
        this.mLastTransactionType = 0;
        this.mTempRect = new Rect();
        Configuration configuration = new Configuration();
        this.mLastConfiguration = configuration;
        this.mParentContainerCallbacks = new AnonymousClass1();
        RecentsTransitionCallback recentsTransitionCallback = CoreRune.MW_MULTI_SPLIT_BACKGROUND ? new RecentsTransitionCallback(this, i2) : null;
        this.mSplitDivision = 0;
        this.mLastMainSplitDivision = 0;
        this.mSplitLayoutChangedForLaunchAdjacent = false;
        this.mAppPairStarted = false;
        new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
        this.mContext = context;
        this.mDisplayId = i;
        this.mSyncQueue = syncTransactionQueue;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mLogger = new SplitscreenEventLogger();
        this.mMainExecutor = shellExecutor;
        this.mRecentTasks = optional;
        shellTaskOrganizer.createRootTask(i, this);
        this.mMainStage = new MainStage(context, shellTaskOrganizer, i, stageListenerImpl, syncTransactionQueue, surfaceSession, iconProvider);
        this.mSideStage = new SideStage(context, shellTaskOrganizer, i, stageListenerImpl2, syncTransactionQueue, surfaceSession, iconProvider);
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            this.mCellStage = new CellStage(context, shellTaskOrganizer, i, stageListenerImpl3, syncTransactionQueue, surfaceSession, iconProvider);
        }
        configuration.updateFrom(context.getResources().getConfiguration());
        this.mDisplayController = displayController;
        this.mDisplayImeController = displayImeController;
        this.mDisplayInsetsController = displayInsetsController;
        this.mTransactionPool = transactionPool;
        ((DeviceStateManager) context.getSystemService(DeviceStateManager.class)).registerCallback(shellTaskOrganizer.getExecutor(), new DeviceStateManager.FoldStateListener(context, new StageCoordinator$$ExternalSyntheticLambda4(this, 0)));
        if (CoreRune.MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS) {
            ?? r0 = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.android.wm.shell.splitscreen.StageCoordinator$$ExternalSyntheticLambda5
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    StageCoordinator stageCoordinator = StageCoordinator.this;
                    stageCoordinator.getClass();
                    if ("video_controls_mode".equals(str)) {
                        Log.d("StageCoordinator", "onSharedPreferenceChanged, key = " + str);
                        stageCoordinator.setDividerSizeIfNeeded(true);
                        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                        stageCoordinator.updateWindowBounds(stageCoordinator.mSplitLayout, windowContainerTransaction, false);
                        stageCoordinator.mSyncQueue.queue(windowContainerTransaction);
                    }
                }
            };
            this.mSharedPrefListener = r0;
            context.getSharedPreferences("video_controls_pref", 0).registerOnSharedPreferenceChangeListener(r0);
        }
        this.mSplitTransitions = new SplitScreenTransitions(transactionPool, transitions, new StageCoordinator$$ExternalSyntheticLambda3(this, 2), this);
        displayController.addDisplayWindowListener(this);
        transitions.addHandler(this);
        this.mSplitUnsupportedToast = Toast.makeText(context, R.string.dock_non_resizeble_failed_to_dock_text, 0);
        this.mShouldUpdateRecents = Transitions.ENABLE_SHELL_TRANSITIONS;
        SplitBackgroundController splitBackgroundController = new SplitBackgroundController(context, this, transactionPool, shellExecutor, displayController);
        this.mSplitBackgroundController = splitBackgroundController;
        if (CoreRune.MW_MULTI_SPLIT_BACKGROUND) {
            transitions.mRecentTransitionCallback = recentsTransitionCallback;
            if (CoreRune.SAFE_DEBUG) {
                Log.d("ShellTransitions", "registerRecentTransitionCallback: " + recentsTransitionCallback);
            }
        }
        if (arrayList.contains(splitBackgroundController)) {
            return;
        }
        arrayList.add(splitBackgroundController);
        sendStatusToListener(splitBackgroundController);
    }

    public static void addActivityOptions(Bundle bundle, StageTaskListener stageTaskListener) {
        if (stageTaskListener != null) {
            bundle.putParcelable("android.activity.launchRootTaskToken", stageTaskListener.mRootTaskInfo.token);
        }
        bundle.putBoolean("android:activity.startedFromWindowTypeLauncher", true);
        bundle.putInt("android.activity.launchDisplayId", 0);
        bundle.putBoolean("android.pendingIntent.backgroundActivityAllowed", true);
        bundle.putBoolean("android.pendingIntent.backgroundActivityAllowedByPermission", true);
    }

    public static int convertCreateMode(MultiSplitLayoutInfo multiSplitLayoutInfo) {
        if (multiSplitLayoutInfo.splitDivision == 0) {
            int i = multiSplitLayoutInfo.cellStagePosition;
            if ((i & 8) != 0) {
                return 2;
            }
            if ((i & 32) == 0 && multiSplitLayoutInfo.sideStagePosition == 1) {
                return 2;
            }
            return 4;
        }
        int i2 = multiSplitLayoutInfo.cellStagePosition;
        if ((i2 & 16) != 0) {
            return 3;
        }
        if ((i2 & 64) == 0 && multiSplitLayoutInfo.sideStagePosition == 1) {
            return 3;
        }
        return 5;
    }

    public static boolean isSameIntentRequested(TaskInfo taskInfo, Intent intent, UserHandle userHandle) {
        if (taskInfo != null && intent != null && userHandle != null && intent.getComponent() != null && taskInfo.baseActivity != null && intent.getComponent().getPackageName().equals(taskInfo.baseActivity.getPackageName()) && taskInfo.userId == userHandle.getIdentifier()) {
            return true;
        }
        return false;
    }

    public static boolean isVideoControlsTaskInfo(ActivityManager.RunningTaskInfo runningTaskInfo) {
        ComponentName componentName;
        if (runningTaskInfo != null && (componentName = runningTaskInfo.topActivity) != null) {
            return MultiWindowUtils.isVideoControlsActivity(componentName.getClassName());
        }
        return false;
    }

    public static boolean isVisibleTask(ActivityManager.RunningTaskInfo runningTaskInfo, Intent intent, UserHandle userHandle) {
        if (runningTaskInfo != null && intent != null && userHandle != null && intent.getComponent() != null && runningTaskInfo.baseIntent != null && intent.getComponent().equals(runningTaskInfo.baseIntent.getComponent()) && runningTaskInfo.userId == userHandle.getIdentifier()) {
            return true;
        }
        return false;
    }

    public static int rotateMultiSplitClockwise(MultiSplitLayoutInfo multiSplitLayoutInfo) {
        int convertCreateMode = convertCreateMode(multiSplitLayoutInfo);
        if (convertCreateMode != 2) {
            if (convertCreateMode != 3) {
                if (convertCreateMode != 4) {
                    if (convertCreateMode != 5) {
                        return -1;
                    }
                    multiSplitLayoutInfo.sideStagePosition = SplitScreenUtils.reverseSplitPosition(multiSplitLayoutInfo.sideStagePosition);
                    multiSplitLayoutInfo.splitDivision = 0;
                    int i = multiSplitLayoutInfo.cellStagePosition;
                    if (i == 72) {
                        multiSplitLayoutInfo.cellStagePosition = 24;
                    } else if (i == 96) {
                        multiSplitLayoutInfo.cellStagePosition = 72;
                    }
                    return 2;
                }
                multiSplitLayoutInfo.splitDivision = 1;
                int i2 = multiSplitLayoutInfo.cellStagePosition;
                if (i2 == 48) {
                    multiSplitLayoutInfo.cellStagePosition = 96;
                } else if (i2 == 96) {
                    multiSplitLayoutInfo.cellStagePosition = 72;
                }
                return 5;
            }
            multiSplitLayoutInfo.sideStagePosition = SplitScreenUtils.reverseSplitPosition(multiSplitLayoutInfo.sideStagePosition);
            multiSplitLayoutInfo.splitDivision = 0;
            int i3 = multiSplitLayoutInfo.cellStagePosition;
            if (i3 == 24) {
                multiSplitLayoutInfo.cellStagePosition = 48;
            } else if (i3 == 48) {
                multiSplitLayoutInfo.cellStagePosition = 96;
            }
            return 4;
        }
        multiSplitLayoutInfo.splitDivision = 1;
        int i4 = multiSplitLayoutInfo.cellStagePosition;
        if (i4 == 24) {
            multiSplitLayoutInfo.cellStagePosition = 48;
        } else if (i4 == 72) {
            multiSplitLayoutInfo.cellStagePosition = 24;
        }
        return 3;
    }

    public static void sendMessageProxyService(StageLaunchOptions stageLaunchOptions, int i) {
        SplitScreenProxyService splitScreenProxyService = (SplitScreenProxyService) LocalServices.getService(SplitScreenProxyService.class);
        Message message = new Message();
        Bundle bundle = new Bundle();
        bundle.putInt("stage_position", stageLaunchOptions.mSideStagePosition);
        bundle.putInt("split_create_mode", stageLaunchOptions.mSplitCreateMode);
        bundle.putFloat("stage_ratio", stageLaunchOptions.mStageRatio);
        bundle.putFloat("cell_ratio", stageLaunchOptions.mCellRatio);
        bundle.putInt("launch_task_id", stageLaunchOptions.mLaunchTaskId);
        bundle.putParcelable("main_stage_intent", stageLaunchOptions.mMainStageIntent);
        bundle.putParcelable("side_stage_intent", stageLaunchOptions.mSideStageIntent);
        bundle.putParcelable("main_stage_user_handle", stageLaunchOptions.mMainStageUserHandle);
        bundle.putParcelable("side_stage_user_handle", stageLaunchOptions.mSideStageUserHandle);
        bundle.putInt("left_top_task_id", stageLaunchOptions.mLeftTopTaskId);
        bundle.putInt("right_bottom_task_id", stageLaunchOptions.mRightBottomTaskId);
        bundle.putInt("cell_task_id", stageLaunchOptions.mCellTaskId);
        bundle.putInt("tap_task_id", stageLaunchOptions.mTapTaskId);
        bundle.putParcelable("tap_intent", stageLaunchOptions.mTapIntent);
        bundle.putParcelable("tap_user_handle", stageLaunchOptions.mTapUserHandle);
        bundle.putParcelable("cell_stage_intent", stageLaunchOptions.mCellStageIntent);
        bundle.putParcelable("cell_stage_user_handle", stageLaunchOptions.mCellStageUserHandle);
        bundle.putBoolean("grouped_recent_vertically", stageLaunchOptions.mAppsStackedVertically);
        bundle.putParcelable("change_app_intent", stageLaunchOptions.mChangeAppIntent);
        bundle.putParcelable("change_app_user_handle", stageLaunchOptions.mChangeAppUserHandle);
        bundle.putInt("change_app_stage_type", stageLaunchOptions.mChangeAppStageType);
        bundle.putInt("cell_stage_position", stageLaunchOptions.mCellStageWindowConfigPosition);
        bundle.putString("launch_from", stageLaunchOptions.mLaunchFrom);
        bundle.putInt("split_division", stageLaunchOptions.mSplitDivision);
        bundle.putParcelable("pending_intent", stageLaunchOptions.mPendingIntent);
        bundle.putParcelable("remote_transition", stageLaunchOptions.mRemoteTransition);
        message.setData(bundle);
        message.what = i;
        splitScreenProxyService.getClass();
        try {
            splitScreenProxyService.mMessenger.send(message);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public static boolean shouldBreakPairedTaskInRecents(int i) {
        if (i == 1 || i == 2 || i == 3 || i == 4 || i == 8 || i == 9 || i == 11 || i == 13) {
            return true;
        }
        return false;
    }

    public final void addCellDividerBarToTransition(TransitionInfo transitionInfo, boolean z) {
        int i;
        SurfaceControl cellDividerLeash = this.mSplitLayout.getCellDividerLeash();
        if (cellDividerLeash != null && cellDividerLeash.isValid()) {
            TransitionInfo.Change change = new TransitionInfo.Change((WindowContainerToken) null, cellDividerLeash);
            Rect refCellDividerBounds = this.mSplitLayout.getRefCellDividerBounds();
            Rect rect = this.mTempRect3;
            rect.set(refCellDividerBounds);
            change.setParent(this.mRootTaskInfo.token);
            change.setStartAbsBounds(rect);
            change.setEndAbsBounds(rect);
            if (z) {
                i = 3;
            } else {
                i = 4;
            }
            change.setMode(i);
            change.setFlags(QuickStepContract.SYSUI_STATE_BACK_DISABLED);
            transitionInfo.addChange(change);
            StringBuilder sb = new StringBuilder("addCellDividerBarToTransition:[MST] leash=");
            sb.append(cellDividerLeash);
            sb.append(", Callers=");
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(7, sb, "StageCoordinator");
            return;
        }
        Slog.w("StageCoordinator", "addDividerBarToTransition but leash was released or not be created");
    }

    public final void addDividerBarToTransition(TransitionInfo transitionInfo, boolean z) {
        int i;
        SurfaceControl dividerLeash = this.mSplitLayout.getDividerLeash();
        if (dividerLeash != null && dividerLeash.isValid()) {
            TransitionInfo.Change change = new TransitionInfo.Change((WindowContainerToken) null, dividerLeash);
            SplitLayout splitLayout = this.mSplitLayout;
            Rect rect = this.mTempRect1;
            splitLayout.getRefDividerBounds(rect);
            change.setParent(this.mRootTaskInfo.token);
            change.setStartAbsBounds(rect);
            change.setEndAbsBounds(rect);
            if (z) {
                i = 3;
            } else {
                i = 4;
            }
            change.setMode(i);
            change.setFlags(QuickStepContract.SYSUI_STATE_BACK_DISABLED);
            transitionInfo.addChange(change);
            if (CoreRune.MW_SHELL_TRANSITION_LOG) {
                StringBuilder sb = new StringBuilder("addDividerBarToTransition:[MST] leash=");
                sb.append(dividerLeash);
                sb.append(", Callers=");
                KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(7, sb, "StageCoordinator");
                return;
            }
            return;
        }
        Slog.w("StageCoordinator", "addDividerBarToTransition but leash was released or not be created");
    }

    public final void applyCellDividerVisibility(SurfaceControl.Transaction transaction) {
        final SurfaceControl cellDividerLeash = this.mSplitLayout.getCellDividerLeash();
        if (cellDividerLeash == null) {
            return;
        }
        if (this.mIsDividerRemoteAnimating) {
            if (CoreRune.SAFE_DEBUG) {
                Slog.d("StageCoordinator", "applyCellDividerVisibility: skip, divider is remote animating!");
                return;
            }
            return;
        }
        ValueAnimator valueAnimator = this.mCellDividerFadeInAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            Slog.d("StageCoordinator", "applyCellDividerVisibility: cancel, prev animator");
            this.mCellDividerFadeInAnimator.cancel();
        }
        Slog.d("StageCoordinator", "applyCellDividerVisibility: vis=" + this.mCellDividerVisible);
        Rect refCellDividerBounds = this.mSplitLayout.getRefCellDividerBounds();
        this.mTempRect3.set(refCellDividerBounds);
        if (transaction != null) {
            transaction.setVisibility(cellDividerLeash, this.mCellDividerVisible);
            transaction.setLayer(cellDividerLeash, Integer.MAX_VALUE);
            transaction.setPosition(cellDividerLeash, r2.left, r2.top);
            return;
        }
        boolean z = this.mCellDividerVisible;
        TransactionPool transactionPool = this.mTransactionPool;
        if (z) {
            final SurfaceControl.Transaction acquire = transactionPool.acquire();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.mCellDividerFadeInAnimator = ofFloat;
            ofFloat.addUpdateListener(new StageCoordinator$$ExternalSyntheticLambda10(this, cellDividerLeash, acquire, 1));
            this.mCellDividerFadeInAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.splitscreen.StageCoordinator.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    StageCoordinator.this.mTransactionPool.release(acquire);
                    StageCoordinator.this.mCellDividerFadeInAnimator = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    SurfaceControl surfaceControl = cellDividerLeash;
                    if (surfaceControl != null && surfaceControl.isValid()) {
                        acquire.show(cellDividerLeash);
                        acquire.setAlpha(cellDividerLeash, 0.0f);
                        acquire.setLayer(cellDividerLeash, Integer.MAX_VALUE);
                        acquire.setPosition(cellDividerLeash, StageCoordinator.this.mSplitLayout.getRefCellDividerBounds().left, StageCoordinator.this.mSplitLayout.getRefCellDividerBounds().top);
                        acquire.apply();
                        return;
                    }
                    StageCoordinator.this.mCellDividerFadeInAnimator.cancel();
                }
            });
            this.mCellDividerFadeInAnimator.start();
            return;
        }
        SurfaceControl.Transaction acquire2 = transactionPool.acquire();
        acquire2.hide(cellDividerLeash);
        acquire2.apply();
        transactionPool.release(acquire2);
    }

    public final void applyCellHostResizeTransition(WindowContainerTransaction windowContainerTransaction) {
        WindowContainerToken stageToken = getStageToken(getCellHostStageType());
        if (stageToken == null) {
            Slog.w("StageCoordinator", "applyCellHostResizeTransition: cannot find cell host token");
        } else {
            windowContainerTransaction.setChangeTransitMode(stageToken, 1, "cell_start");
        }
    }

    public final void applyDividerVisibility(SurfaceControl.Transaction transaction) {
        final SurfaceControl dividerLeash = this.mSplitLayout.getDividerLeash();
        if (dividerLeash == null) {
            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, -188242801, 0, "   Skip animating divider bar due to divider leash not ready.", null);
                return;
            }
            return;
        }
        if (this.mIsDividerRemoteAnimating) {
            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, -1118138034, 0, "   Skip animating divider bar due to it's remote animating.", null);
                return;
            }
            return;
        }
        ValueAnimator valueAnimator = this.mDividerFadeInAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mDividerFadeInAnimator.cancel();
        }
        this.mSplitLayout.getRefDividerBounds(this.mTempRect1);
        if (transaction != null) {
            transaction.setVisibility(dividerLeash, this.mDividerVisible);
            transaction.setLayer(dividerLeash, Integer.MAX_VALUE);
            transaction.setPosition(dividerLeash, r3.left, r3.top);
        } else {
            boolean z = this.mDividerVisible;
            TransactionPool transactionPool = this.mTransactionPool;
            if (z) {
                final SurfaceControl.Transaction acquire = transactionPool.acquire();
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.mDividerFadeInAnimator = ofFloat;
                ofFloat.addUpdateListener(new StageCoordinator$$ExternalSyntheticLambda10(this, dividerLeash, acquire, 0));
                this.mDividerFadeInAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.splitscreen.StageCoordinator.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        SurfaceControl surfaceControl = dividerLeash;
                        if (surfaceControl != null && surfaceControl.isValid()) {
                            acquire.setAlpha(dividerLeash, 1.0f);
                            acquire.apply();
                        }
                        StageCoordinator.this.mTransactionPool.release(acquire);
                        StageCoordinator.this.mDividerFadeInAnimator = null;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        boolean z2;
                        SurfaceControl surfaceControl = dividerLeash;
                        if (surfaceControl != null && surfaceControl.isValid()) {
                            StageCoordinator stageCoordinator = StageCoordinator.this;
                            stageCoordinator.mSplitLayout.getRefDividerBounds(stageCoordinator.mTempRect1);
                            acquire.show(dividerLeash);
                            acquire.setAlpha(dividerLeash, 0.0f);
                            acquire.setLayer(dividerLeash, Integer.MAX_VALUE);
                            SurfaceControl.Transaction transaction2 = acquire;
                            SurfaceControl surfaceControl2 = dividerLeash;
                            SplitLayout splitLayout = StageCoordinator.this.mSplitLayout;
                            SplitLayout.ImePositionProcessor imePositionProcessor = splitLayout.mImePositionProcessor;
                            Rect rect = SplitLayout.this.mDividerBounds;
                            Rect rect2 = splitLayout.mTempRect;
                            rect2.set(rect);
                            int i = imePositionProcessor.mYOffsetForIme;
                            boolean z3 = true;
                            if (i != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                rect2.offset(0, i);
                            }
                            float f = rect2.left;
                            SplitLayout splitLayout2 = StageCoordinator.this.mSplitLayout;
                            SplitLayout.ImePositionProcessor imePositionProcessor2 = splitLayout2.mImePositionProcessor;
                            Rect rect3 = SplitLayout.this.mDividerBounds;
                            Rect rect4 = splitLayout2.mTempRect;
                            rect4.set(rect3);
                            int i2 = imePositionProcessor2.mYOffsetForIme;
                            if (i2 == 0) {
                                z3 = false;
                            }
                            if (z3) {
                                rect4.offset(0, i2);
                            }
                            transaction2.setPosition(surfaceControl2, f, rect4.top);
                            acquire.apply();
                            return;
                        }
                        StageCoordinator.this.mDividerFadeInAnimator.cancel();
                    }
                });
                this.mDividerFadeInAnimator.start();
            } else {
                SurfaceControl.Transaction acquire2 = transactionPool.acquire();
                acquire2.hide(dividerLeash);
                acquire2.apply();
                transactionPool.release(acquire2);
            }
        }
        if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER && isMultiSplitActive()) {
            applyCellDividerVisibility(transaction);
        }
    }

    public final void applyExitSplitScreen(StageTaskListener stageTaskListener, WindowContainerTransaction windowContainerTransaction, int i) {
        MainStage mainStage = this.mMainStage;
        if (mainStage.mIsActive && !this.mIsExiting) {
            onSplitScreenExit();
            clearSplitPairedInRecents(i);
            boolean z = false;
            this.mShouldUpdateRecents = false;
            this.mIsDividerRemoteAnimating = false;
            this.mSplitRequest = null;
            Rect rect = this.mSplitLayout.mInvisibleBounds;
            Rect rect2 = this.mTempRect1;
            rect2.set(rect);
            int i2 = 1;
            if (stageTaskListener != null && stageTaskListener.getTopVisibleChildTaskId() != -1) {
                this.mIsExiting = true;
                windowContainerTransaction.setBounds(stageTaskListener.mRootTaskInfo.token, (Rect) null);
                windowContainerTransaction.setAppBounds(stageTaskListener.mRootTaskInfo.token, (Rect) null);
                windowContainerTransaction.setSmallestScreenWidthDp(stageTaskListener.mRootTaskInfo.token, 0);
                windowContainerTransaction.reorder(stageTaskListener.mRootTaskInfo.token, true);
            } else {
                SideStage sideStage = this.mSideStage;
                sideStage.removeAllTasks(windowContainerTransaction, false, true);
                mainStage.deactivate(windowContainerTransaction, false);
                windowContainerTransaction.reorder(this.mRootTaskInfo.token, false);
                setRootForceTranslucent(windowContainerTransaction, true);
                windowContainerTransaction.setBounds(sideStage.mRootTaskInfo.token, rect2);
                onTransitionAnimationComplete();
            }
            windowContainerTransaction.setReparentLeafTaskIfRelaunch(this.mRootTaskInfo.token, false);
            windowContainerTransaction.setDismissSplit(true);
            SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
            syncTransactionQueue.queue(windowContainerTransaction);
            syncTransactionQueue.runInSync(new StageCoordinator$$ExternalSyntheticLambda2(this, stageTaskListener, i2));
            if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY) {
                this.mTopStageAfterFoldDismiss = -1;
            }
            Slog.i("StageCoordinator", "applyExitSplitScreen, reason = " + SplitScreenController.exitReasonToString(i));
            if (stageTaskListener != null) {
                if (stageTaskListener == mainStage) {
                    z = true;
                }
                logExitToStage(i, z);
            } else {
                this.mLogger.logExit(i, -1, 0, -1, 0, this.mSplitLayout.isLandscape());
            }
            if (CoreRune.MW_SA_LOGGING) {
                this.mLastPackageNameList.clear();
            }
        }
    }

    public final boolean checkNonResizableTaskAndStartTask(int i, int i2, int i3) {
        if (!MultiWindowManager.getInstance().isAllTasksResizable(i, i2, i3)) {
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.startTask(i, (Bundle) null);
            windowContainerTransaction.setDisplayIdForChangeTransition(this.mDisplayId, "dismiss_recent_pair");
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
            Slog.d("StageCoordinator", "include non resizable task");
            return true;
        }
        return false;
    }

    public final void clearRequestIfPresented() {
        boolean z;
        StageListenerImpl stageListenerImpl = this.mSideStageListener;
        if (stageListenerImpl.mVisible && (z = stageListenerImpl.mHasChildren) && this.mMainStageListener.mVisible && z) {
            this.mSplitRequest = null;
        }
    }

    public final void clearSplitPairedInRecents(int i) {
        if (shouldBreakPairedTaskInRecents(i) && this.mShouldUpdateRecents) {
            this.mRecentTasks.ifPresent(new StageCoordinator$$ExternalSyntheticLambda4(this, 1));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x003f, code lost:
    
        if (r3.containsToken(r9) != false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0057 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dismissSplitTask(android.window.WindowContainerToken r9, android.window.WindowContainerTransaction r10, boolean r11) {
        /*
            r8 = this;
            boolean r0 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER
            r1 = 1
            r2 = 0
            com.android.wm.shell.splitscreen.SideStage r3 = r8.mSideStage
            com.android.wm.shell.splitscreen.MainStage r4 = r8.mMainStage
            r5 = -1
            if (r0 == 0) goto L42
            boolean r0 = r8.isMultiSplitActive()
            if (r0 == 0) goto L42
            int r0 = r8.getCellHostStageType()
            int r6 = r8.getCellHostStageType()
            if (r6 != 0) goto L1c
            goto L21
        L1c:
            if (r6 != r1) goto L20
            r1 = r2
            goto L21
        L20:
            r1 = r5
        L21:
            com.android.wm.shell.splitscreen.CellStage r2 = r8.mCellStage
            com.android.wm.shell.splitscreen.StageTaskListener r6 = r2.mHost
            if (r6 != r4) goto L28
            goto L29
        L28:
            r3 = r4
        L29:
            boolean r2 = r2.containsToken(r9)
            if (r2 == 0) goto L33
            r1 = 2
            r2 = r1
            r1 = r0
            goto L55
        L33:
            boolean r2 = r6.containsToken(r9)
            if (r2 == 0) goto L3b
            r1 = r0
            goto L54
        L3b:
            boolean r0 = r3.containsToken(r9)
            if (r0 == 0) goto L53
            goto L54
        L42:
            boolean r0 = r4.containsToken(r9)
            if (r0 == 0) goto L49
            goto L55
        L49:
            boolean r0 = r3.containsToken(r9)
            if (r0 == 0) goto L53
            r7 = r2
            r2 = r1
            r1 = r7
            goto L55
        L53:
            r1 = r5
        L54:
            r2 = r1
        L55:
            if (r1 == r5) goto L62
            if (r2 != r5) goto L5a
            goto L62
        L5a:
            boolean r9 = com.samsung.android.rune.CoreRune.MW_SPLIT_SHELL_TRANSITION
            if (r9 == 0) goto L61
            r8.prepareAndStartDismissTransition(r1, r2, r10, r11)
        L61:
            return
        L62:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r10 = "dismissSplitTask: failed, cannot find "
            r8.<init>(r10)
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            java.lang.String r9 = "StageCoordinator"
            android.util.Slog.w(r9, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.dismissSplitTask(android.window.WindowContainerToken, android.window.WindowContainerTransaction, boolean):void");
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void dump(PrintWriter printWriter, String str) {
        String str2;
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
        String m2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, "  ");
        StringBuilder m3 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, "StageCoordinator mDisplayId=");
        m3.append(this.mDisplayId);
        printWriter.println(m3.toString());
        printWriter.println(m + "mDividerVisible=" + this.mDividerVisible);
        StringBuilder sb = new StringBuilder();
        sb.append(m);
        sb.append("isSplitActive=");
        MainStage mainStage = this.mMainStage;
        sb.append(mainStage.mIsActive);
        printWriter.println(sb.toString());
        printWriter.println(m + "isSplitVisible=" + isSplitScreenVisible());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(m);
        sb2.append("MainStage");
        printWriter.println(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(m2);
        sb3.append("stagePosition=");
        int mainStagePosition = getMainStagePosition();
        String str3 = "UNKNOWN";
        if (mainStagePosition == -1) {
            str2 = "SPLIT_POSITION_UNDEFINED";
        } else if (mainStagePosition == 0) {
            str2 = "SPLIT_POSITION_TOP_OR_LEFT";
        } else if (mainStagePosition != 1) {
            str2 = "UNKNOWN";
        } else {
            str2 = "SPLIT_POSITION_BOTTOM_OR_RIGHT";
        }
        sb3.append(str2);
        printWriter.println(sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(m2);
        sb4.append("isActive=");
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb4, mainStage.mIsActive, printWriter);
        mainStage.dump(printWriter, m2);
        printWriter.println(m + "MainStageListener");
        this.mMainStageListener.dump(printWriter, m2);
        printWriter.println(m + "SideStage");
        StringBuilder sb5 = new StringBuilder();
        sb5.append(m2);
        sb5.append("stagePosition=");
        int i = this.mSideStagePosition;
        if (i == -1) {
            str3 = "SPLIT_POSITION_UNDEFINED";
        } else if (i == 0) {
            str3 = "SPLIT_POSITION_TOP_OR_LEFT";
        } else if (i == 1) {
            str3 = "SPLIT_POSITION_BOTTOM_OR_RIGHT";
        }
        KeyboardUI$$ExternalSyntheticOutline0.m(sb5, str3, printWriter);
        this.mSideStage.dump(printWriter, m2);
        printWriter.println(m + "SideStageListener");
        this.mSideStageListener.dump(printWriter, m2);
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            printWriter.println(m + "CellStage");
            printWriter.println(m2 + "stagePosition=" + WindowConfiguration.stagePositionToString(this.mCellStageWindowConfigPosition));
            this.mCellStage.dump(printWriter, m2);
            printWriter.println(m + "CellStageListener");
            this.mCellStageListener.dump(printWriter, m2);
        }
        if (mainStage.mIsActive) {
            printWriter.println(m + "SplitLayout");
            SplitLayout splitLayout = this.mSplitLayout;
            splitLayout.getClass();
            printWriter.println(m2 + "bounds1=" + splitLayout.mBounds1.toShortString());
            printWriter.println(m2 + "dividerBounds=" + splitLayout.mDividerBounds.toShortString());
            printWriter.println(m2 + "bounds2=" + splitLayout.mBounds2.toShortString());
            if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY) {
                StringBuilder m4 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(m2, "bounds3=");
                m4.append(splitLayout.mBounds3.toShortString());
                printWriter.println(m4.toString());
            }
        }
        ArrayList arrayList = this.mPausingTasks;
        if (!arrayList.isEmpty()) {
            printWriter.println(m2 + "mPausingTasks=" + arrayList);
        }
    }

    public final void exitSplitScreen(StageTaskListener stageTaskListener, int i) {
        if (!this.mMainStage.mIsActive) {
            return;
        }
        applyExitSplitScreen(stageTaskListener, new WindowContainerTransaction(), i);
        if (CoreRune.MW_SA_RUNESTONE_LOGGING) {
            RunestoneLogger.sendDismissMultiWindowState(this.mContext);
        }
    }

    public final void finishEnterSplitScreen(SurfaceControl.Transaction transaction, boolean z) {
        this.mSplitLayout.update(transaction);
        MainStage mainStage = this.mMainStage;
        SplitDecorManager splitDecorManager = mainStage.mSplitDecorManager;
        getMainStageBounds();
        splitDecorManager.getClass();
        SideStage sideStage = this.mSideStage;
        SplitDecorManager splitDecorManager2 = sideStage.mSplitDecorManager;
        getSideStageBounds();
        splitDecorManager2.getClass();
        boolean z2 = true;
        setDividerVisibility(true, transaction);
        transaction.reparent(this.mSplitLayout.getDividerLeash(), this.mRootTaskLeash);
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && z) {
            SplitLayout splitLayout = this.mSplitLayout;
            splitLayout.releaseCellDivider(transaction);
            if (!splitLayout.mCellInitialized) {
                splitLayout.mCellInitialized = true;
                splitLayout.mCellSplitWindowManager.init(splitLayout, splitLayout.mInsetsState);
                splitLayout.mCellSnapAlgorithm = splitLayout.createCellSnapAlgorithm();
            }
            SplitDecorManager splitDecorManager3 = this.mCellStage.mSplitDecorManager;
            SplitLayout splitLayout2 = this.mSplitLayout;
            splitLayout2.getClass();
            new Rect(splitLayout2.mBounds3);
            splitDecorManager3.getClass();
            setCellDividerVisibility(transaction, true);
            transaction.reparent(this.mSplitLayout.getCellDividerLeash(), this.mRootTaskLeash);
        }
        updateSurfaceBounds(this.mSplitLayout, transaction, false);
        transaction.show(this.mRootTaskLeash);
        setSplitsVisible(true, false);
        this.mIsDropEntering = false;
        this.mSplitRequest = null;
        updateRecentTasksSplitPair();
        SplitscreenEventLogger splitscreenEventLogger = this.mLogger;
        if (splitscreenEventLogger.mLoggerSessionId == null) {
            z2 = false;
        }
        if (!z2) {
            splitscreenEventLogger.logEnter(this.mSplitLayout.getDividerPositionAsFraction(), getMainStagePosition(), mainStage.getTopChildTaskUid(), this.mSideStagePosition, sideStage.getTopChildTaskUid(), this.mSplitLayout.isLandscape());
        }
    }

    public final int getActivateSplitPosition(TaskInfo taskInfo) {
        SplitRequest splitRequest = this.mSplitRequest;
        if (splitRequest != null && taskInfo != null) {
            int i = splitRequest.mActivateTaskId;
            if (i != 0 && splitRequest.mActivateTaskId2 == taskInfo.taskId) {
                return splitRequest.mActivatePosition;
            }
            if (i == taskInfo.taskId) {
                return splitRequest.mActivatePosition;
            }
            String packageName = SplitScreenUtils.getPackageName(splitRequest.mStartIntent);
            String packageName2 = SplitScreenUtils.getPackageName(taskInfo.baseIntent);
            if (packageName != null && packageName.equals(packageName2)) {
                return this.mSplitRequest.mActivatePosition;
            }
            String packageName3 = SplitScreenUtils.getPackageName(this.mSplitRequest.mStartIntent2);
            if (packageName3 != null && packageName3.equals(packageName2)) {
                return this.mSplitRequest.mActivatePosition;
            }
        }
        return -1;
    }

    public final ArrayList getBottomStages() {
        ArrayList arrayList = new ArrayList();
        if ((getMainStageWinConfigPosition() & 64) != 0) {
            arrayList.add(this.mMainStage.mRootTaskInfo);
        }
        if ((getSideStageWinConfigPosition() & 64) != 0) {
            arrayList.add(this.mSideStage.mRootTaskInfo);
        }
        if ((this.mCellStageWindowConfigPosition & 64) != 0) {
            arrayList.add(this.mCellStage.mRootTaskInfo);
        }
        return arrayList;
    }

    public final int getCellHostStageType() {
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            CellStage cellStage = this.mCellStage;
            if (cellStage.mIsActive) {
                return getStageType(cellStage.mHost);
            }
            return -1;
        }
        return -1;
    }

    public final RemoteAnimationTarget getDividerBarLegacyTarget() {
        SplitLayout splitLayout = this.mSplitLayout;
        splitLayout.getClass();
        Rect rect = new Rect(splitLayout.mDividerBounds);
        return new RemoteAnimationTarget(-1, -1, this.mSplitLayout.getDividerLeash(), false, (Rect) null, (Rect) null, Integer.MAX_VALUE, new Point(0, 0), rect, rect, new WindowConfiguration(), true, (SurfaceControl) null, (Rect) null, (ActivityManager.RunningTaskInfo) null, false, 2034);
    }

    public final int getFocusedStageType() {
        if (this.mMainStage.isFocused()) {
            return 0;
        }
        if (this.mSideStage.isFocused()) {
            return 1;
        }
        if (CoreRune.MW_MULTI_SPLIT && this.mCellStage.isFocused()) {
            return 2;
        }
        return -1;
    }

    public final int getInvertedCurrentPosition() {
        SplitLayout splitLayout = this.mSplitLayout;
        int i = splitLayout.mDividePosition;
        DividerSnapAlgorithm dividerSnapAlgorithm = splitLayout.getDividerSnapAlgorithm();
        int i2 = dividerSnapAlgorithm.getFirstSplitTarget().position;
        int i3 = dividerSnapAlgorithm.getLastSplitTarget().position;
        if (i2 <= i && i3 >= i) {
            int i4 = (i2 + i3) - i;
            if (i4 == i) {
                return i4 - 1;
            }
            return i4;
        }
        return i;
    }

    public final Rect getMainStageBounds() {
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY && isMultiSplitActive() && getCellHostStageType() == 0) {
            return this.mSplitLayout.getHostBounds();
        }
        if (this.mSideStagePosition == 0) {
            return this.mSplitLayout.getBounds2();
        }
        return this.mSplitLayout.getBounds1();
    }

    public final int getMainStagePosition() {
        return SplitScreenUtils.reverseSplitPosition(this.mSideStagePosition);
    }

    public final int getMainStageWinConfigPosition() {
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            CellStage cellStage = this.mCellStage;
            if (cellStage.mIsActive) {
                if (this.mMainStage.equals(cellStage.mHost)) {
                    if (isVerticalDivision()) {
                        if ((this.mCellStageWindowConfigPosition & 16) != 0) {
                            if (this.mSideStagePosition == 0) {
                                return 96;
                            }
                            return 72;
                        }
                        if (this.mSideStagePosition == 0) {
                            return 48;
                        }
                        return 24;
                    }
                    if ((this.mCellStageWindowConfigPosition & 8) != 0) {
                        if (this.mSideStagePosition == 0) {
                            return 96;
                        }
                        return 48;
                    }
                    if (this.mSideStagePosition == 0) {
                        return 72;
                    }
                    return 24;
                }
            }
            if (isVerticalDivision()) {
                if (this.mSideStagePosition == 0) {
                    return 32;
                }
                return 8;
            }
            if (this.mSideStagePosition == 0) {
                return 64;
            }
            return 16;
        }
        if (isLandscape()) {
            if (this.mSideStagePosition == 0) {
                return 32;
            }
            return 8;
        }
        if (this.mSideStagePosition == 0) {
            return 64;
        }
        return 16;
    }

    public final Rect getSideStageBounds() {
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY && isMultiSplitActive() && getCellHostStageType() == 1) {
            return this.mSplitLayout.getHostBounds();
        }
        if (this.mSideStagePosition == 0) {
            return this.mSplitLayout.getBounds1();
        }
        return this.mSplitLayout.getBounds2();
    }

    public final int getSideStageWinConfigPosition() {
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            CellStage cellStage = this.mCellStage;
            if (cellStage.mIsActive) {
                if (this.mSideStage.equals(cellStage.mHost)) {
                    if (isVerticalDivision()) {
                        if ((this.mCellStageWindowConfigPosition & 16) != 0) {
                            if (this.mSideStagePosition != 0) {
                                return 96;
                            }
                            return 72;
                        }
                        if (this.mSideStagePosition != 0) {
                            return 48;
                        }
                        return 24;
                    }
                    if ((this.mCellStageWindowConfigPosition & 8) != 0) {
                        if (this.mSideStagePosition == 0) {
                            return 48;
                        }
                        return 96;
                    }
                    if (this.mSideStagePosition == 0) {
                        return 24;
                    }
                    return 72;
                }
            }
            if (isVerticalDivision()) {
                if (this.mSideStagePosition != 0) {
                    return 32;
                }
                return 8;
            }
            if (this.mSideStagePosition != 0) {
                return 64;
            }
            return 16;
        }
        if (isLandscape()) {
            if (this.mSideStagePosition != 0) {
                return 32;
            }
            return 8;
        }
        if (this.mSideStagePosition != 0) {
            return 64;
        }
        return 16;
    }

    public final int getSplitCreateMode() {
        MultiSplitLayoutInfo multiSplitLayoutInfo = new MultiSplitLayoutInfo();
        multiSplitLayoutInfo.sideStagePosition = this.mSideStagePosition;
        multiSplitLayoutInfo.splitDivision = getSplitDivision();
        multiSplitLayoutInfo.cellStagePosition = this.mCellStageWindowConfigPosition;
        return convertCreateMode(multiSplitLayoutInfo);
    }

    public final int getSplitDivision() {
        if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION) {
            return this.mSplitDivision;
        }
        return !isLandscape() ? 1 : 0;
    }

    public final int getSplitItemPosition(WindowContainerToken windowContainerToken) {
        if (windowContainerToken == null) {
            return -1;
        }
        MainStage mainStage = this.mMainStage;
        if (mainStage.containsToken(windowContainerToken)) {
            return getMainStagePosition();
        }
        if (this.mSideStage.containsToken(windowContainerToken)) {
            return this.mSideStagePosition;
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            CellStage cellStage = this.mCellStage;
            if (cellStage.containsToken(windowContainerToken)) {
                if (cellStage.mHost == mainStage) {
                    return getMainStagePosition();
                }
                return this.mSideStagePosition;
            }
        }
        return -1;
    }

    public final int getSplitItemStage(WindowContainerToken windowContainerToken) {
        if (windowContainerToken == null) {
            return -1;
        }
        if (this.mMainStage.containsToken(windowContainerToken)) {
            return 0;
        }
        if (this.mSideStage.containsToken(windowContainerToken)) {
            return 1;
        }
        if (!CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER || !this.mCellStage.containsToken(windowContainerToken)) {
            return -1;
        }
        return 2;
    }

    public final int getSplitItemStagePosition(WindowContainerToken windowContainerToken) {
        if (windowContainerToken == null) {
            return 0;
        }
        if (this.mMainStage.containsToken(windowContainerToken)) {
            return getMainStageWinConfigPosition();
        }
        if (this.mSideStage.containsToken(windowContainerToken)) {
            return getSideStageWinConfigPosition();
        }
        if (!this.mCellStage.containsToken(windowContainerToken)) {
            return 0;
        }
        return this.mCellStageWindowConfigPosition;
    }

    public SplitScreenTransitions getSplitTransitions() {
        return this.mSplitTransitions;
    }

    public final StageTaskListener getStageAtPosition(int i) {
        if (getMainStageWinConfigPosition() == i) {
            return this.mMainStage;
        }
        if (getSideStageWinConfigPosition() == i) {
            return this.mSideStage;
        }
        if (isMultiSplitActive() && this.mCellStageWindowConfigPosition == i) {
            return this.mCellStage;
        }
        return null;
    }

    public final int getStageOfTask(int i) {
        if (this.mMainStage.containsTask(i)) {
            return 0;
        }
        if (this.mSideStage.containsTask(i)) {
            return 1;
        }
        return (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && this.mCellStage.containsTask(i)) ? 2 : -1;
    }

    public final StageTaskListener getStageTaskListenerByStageType(int i) {
        if (i == 0) {
            return this.mMainStage;
        }
        if (i == 1) {
            return this.mSideStage;
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && i == 2) {
            return this.mCellStage;
        }
        return null;
    }

    public final WindowContainerToken getStageToken(int i) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        if (i == 0) {
            ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mMainStage.mRootTaskInfo;
            if (runningTaskInfo2 == null) {
                return null;
            }
            return runningTaskInfo2.token;
        }
        if (i == 1) {
            ActivityManager.RunningTaskInfo runningTaskInfo3 = this.mSideStage.mRootTaskInfo;
            if (runningTaskInfo3 == null) {
                return null;
            }
            return runningTaskInfo3.token;
        }
        if (!CoreRune.MW_MULTI_SPLIT_SHELL_TRANSITION || i != 2 || (runningTaskInfo = this.mCellStage.mRootTaskInfo) == null) {
            return null;
        }
        return runningTaskInfo.token;
    }

    public final int getStageType(StageTaskListener stageTaskListener) {
        if (stageTaskListener == null) {
            return -1;
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && stageTaskListener == this.mCellStage) {
            return 2;
        }
        if (stageTaskListener == this.mMainStage) {
            return 0;
        }
        return 1;
    }

    public final int getStageWinConfigPositionByType(int i) {
        if (i == 0) {
            return getMainStageWinConfigPosition();
        }
        if (i == 1) {
            return getSideStageWinConfigPosition();
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && i == 2) {
            return this.mCellStageWindowConfigPosition;
        }
        return 0;
    }

    public final int getTaskIdByStageType(int i) {
        if (i == 0) {
            return this.mMainStage.getTopVisibleChildTaskId();
        }
        if (i == 1) {
            return this.mSideStage.getTopVisibleChildTaskId();
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && i == 2) {
            return this.mCellStage.getTopVisibleChildTaskId();
        }
        return -1;
    }

    public final int getTopStageBottom() {
        if ((getMainStageWinConfigPosition() & 16) != 0) {
            return getMainStageBounds().bottom;
        }
        if ((getSideStageWinConfigPosition() & 16) != 0) {
            return getSideStageBounds().bottom;
        }
        if (isMultiSplitActive() && (this.mCellStageWindowConfigPosition & 16) != 0) {
            SplitLayout splitLayout = this.mSplitLayout;
            splitLayout.getClass();
            return new Rect(splitLayout.mBounds3).bottom;
        }
        return 0;
    }

    public final void handleLayoutSizeChange(SplitLayout splitLayout, boolean z) {
        StageTaskListener stageTaskListener;
        StageTaskListener stageTaskListener2;
        boolean applyTaskChanges;
        if (this.mIsDividerRemoteAnimating) {
            return;
        }
        if (this.mKeyguardShowing) {
            z = false;
        }
        HandlerExecutor handlerExecutor = (HandlerExecutor) this.mMainExecutor;
        Handler handler = handlerExecutor.mHandler;
        StageCoordinator$$ExternalSyntheticLambda3 stageCoordinator$$ExternalSyntheticLambda3 = this.mDelayedHandleLayoutSizeChange;
        if (handler.hasCallbacks(stageCoordinator$$ExternalSyntheticLambda3)) {
            handlerExecutor.removeCallbacks(stageCoordinator$$ExternalSyntheticLambda3);
        }
        splitLayout.updateSnapAlgorithm(this.mSplitDivision);
        MainStage mainStage = this.mMainStage;
        boolean z2 = mainStage.mIsActive;
        boolean isSplitScreenVisible = isSplitScreenVisible();
        if (z2 && !isSplitScreenVisible) {
            splitLayout.update(null);
        }
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        long j = this.mSeqForAsyncTransaction + 1;
        this.mSeqForAsyncTransaction = j;
        long max = Math.max(j, 0L);
        this.mSeqForAsyncTransaction = max;
        windowContainerTransaction.setSeqForAsyncTransaction(max);
        if (z2 && z) {
            windowContainerTransaction.setDisplayIdForChangeTransition(0, "handle_layout_size_change");
        }
        updateStagePositionIfNeeded(windowContainerTransaction);
        int i = this.mSideStagePosition;
        StageTaskListener stageTaskListener3 = this.mSideStage;
        if (i == 0) {
            stageTaskListener = stageTaskListener3;
        } else {
            stageTaskListener = mainStage;
        }
        if (i == 0) {
            stageTaskListener2 = mainStage;
        } else {
            stageTaskListener2 = stageTaskListener3;
        }
        overrideStageCoordinatorRootConfig(windowContainerTransaction);
        boolean z3 = CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY;
        CellStage cellStage = this.mCellStage;
        if (z3 && cellStage.mIsActive) {
            applyTaskChanges = splitLayout.applyTaskChanges(windowContainerTransaction, stageTaskListener.mRootTaskInfo, stageTaskListener2.mRootTaskInfo, cellStage.mRootTaskInfo);
        } else {
            applyTaskChanges = splitLayout.applyTaskChanges(windowContainerTransaction, stageTaskListener.mRootTaskInfo, stageTaskListener2.mRootTaskInfo);
        }
        if (CoreRune.SAFE_DEBUG) {
            Slog.d("StageCoordinator", "handleLayoutSizeChange: wct=" + windowContainerTransaction + ", isSplitScreenVisible=" + isSplitScreenVisible + ", callers=" + Debug.getCallers(3));
        }
        if (Transitions.ENABLE_SHELL_TRANSITIONS && applyTaskChanges && isSplitScreenVisible) {
            this.mSplitLayout.setDividerInteractive("handleLayoutSizeChange", false, false);
            StageCoordinator$$ExternalSyntheticLambda1 stageCoordinator$$ExternalSyntheticLambda1 = new StageCoordinator$$ExternalSyntheticLambda1(this, 1);
            StageCoordinator$$ExternalSyntheticLambda1 stageCoordinator$$ExternalSyntheticLambda12 = new StageCoordinator$$ExternalSyntheticLambda1(this, 2);
            SplitScreenTransitions splitScreenTransitions = this.mSplitTransitions;
            SplitScreenTransitions.TransitSession transitSession = splitScreenTransitions.mPendingResize;
            if (transitSession != null) {
                transitSession.mCanceled = true;
                transitSession.mFinishedCallback = null;
                splitScreenTransitions.mAnimations.clear();
                splitScreenTransitions.onFinish(null, null);
            }
            splitScreenTransitions.mPendingResize = new SplitScreenTransitions.TransitSession(splitScreenTransitions, splitScreenTransitions.mTransitions.startTransition(6, windowContainerTransaction, this), stageCoordinator$$ExternalSyntheticLambda12, stageCoordinator$$ExternalSyntheticLambda1);
            if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -522947324, 0, "  splitTransition  deduced Resize split screen", null);
            }
        } else {
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
        }
        sendOnBoundsChanged();
        if (z2) {
            TransactionPool transactionPool = this.mTransactionPool;
            SurfaceControl.Transaction acquire = transactionPool.acquire();
            updateSurfaceBounds(splitLayout, acquire, false);
            mainStage.onResized(acquire);
            stageTaskListener3.onResized(acquire);
            if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
                cellStage.onResized(acquire);
            }
            acquire.apply();
            transactionPool.release(acquire);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:209:0x031d, code lost:
    
        if (r1 != 1) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0346, code lost:
    
        prepareExitSplitScreen(-1, r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x034b, code lost:
    
        if (com.samsung.android.rune.CoreRune.MW_SPLIT_SHELL_TRANSITION == false) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x034d, code lost:
    
        setSplitsVisible(false, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0331, code lost:
    
        if (r6.getChildCount() == r4) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0343, code lost:
    
        if (r5.getChildCount() == r4) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0117, code lost:
    
        if (r6 == 1) goto L63;
     */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.window.WindowContainerTransaction handleRequest(android.os.IBinder r20, android.window.TransitionRequestInfo r21) {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.handleRequest(android.os.IBinder, android.window.TransitionRequestInfo):android.window.WindowContainerTransaction");
    }

    public final boolean hasSameRatioInGroupedTasks(SplitBounds splitBounds, boolean z) {
        SplitBounds splitBounds2 = this.mLastSplitStateInfo;
        boolean z2 = splitBounds2.appsStackedVertically;
        if ((z2 && splitBounds2.topTaskPercent != splitBounds.topTaskPercent) || (!z2 && splitBounds2.leftTaskPercent != splitBounds.leftTaskPercent)) {
            return false;
        }
        if ((z && z2 && splitBounds2.cellTopTaskPercent != splitBounds.cellTopTaskPercent) || (z2 && splitBounds2.cellLeftTaskPercent != splitBounds.cellLeftTaskPercent)) {
            return false;
        }
        return true;
    }

    public final boolean isInSubDisplay() {
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRootTaskInfo;
        if (runningTaskInfo != null) {
            if (runningTaskInfo.configuration.semDisplayDeviceType == 5) {
                return true;
            }
            return false;
        }
        return MultiWindowUtils.isInSubDisplay(this.mContext);
    }

    public final boolean isLandscape() {
        return this.mSplitLayout.isLandscape();
    }

    public final boolean isMultiSplitActive() {
        if (!CoreRune.MW_MULTI_SPLIT) {
            return false;
        }
        return this.mCellStage.mIsActive;
    }

    public final boolean isMultiSplitScreenVisible() {
        if (!CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER || !isSplitScreenVisible() || !this.mCellStageListener.mVisible) {
            return false;
        }
        return true;
    }

    public final boolean isSplitScreenVisible() {
        if (this.mSideStageListener.mVisible && this.mMainStageListener.mVisible) {
            return true;
        }
        return false;
    }

    public final boolean isVerticalDivision() {
        if (getSplitDivision() == 0) {
            return true;
        }
        return false;
    }

    public final void launchAsFullscreenWithRemoteAnimation(PendingIntent pendingIntent, Intent intent, ShortcutInfo shortcutInfo, Bundle bundle, RemoteAnimationAdapter remoteAnimationAdapter, WindowContainerTransaction windowContainerTransaction) {
        StageCoordinator$$ExternalSyntheticLambda12 stageCoordinator$$ExternalSyntheticLambda12 = new StageCoordinator$$ExternalSyntheticLambda12(this, remoteAnimationAdapter, 1);
        addActivityOptions(bundle, null);
        if (shortcutInfo != null) {
            windowContainerTransaction.startShortcut(this.mContext.getPackageName(), shortcutInfo, bundle);
        } else if (pendingIntent != null) {
            windowContainerTransaction.sendPendingIntent(pendingIntent, intent, bundle);
        } else {
            Slog.e("StageCoordinator", "Pending intent and shortcut are null is invalid case.");
        }
        this.mSyncQueue.queue(stageCoordinator$$ExternalSyntheticLambda12, windowContainerTransaction);
    }

    public final void logExitToStage(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        SplitscreenEventLogger splitscreenEventLogger = this.mLogger;
        int i5 = -1;
        if (z) {
            i2 = getMainStagePosition();
        } else {
            i2 = -1;
        }
        if (z) {
            i3 = this.mMainStage.getTopChildTaskUid();
        } else {
            i3 = 0;
        }
        if (!z) {
            i5 = this.mSideStagePosition;
        }
        int i6 = i5;
        if (!z) {
            i4 = this.mSideStage.getTopChildTaskUid();
        } else {
            i4 = 0;
        }
        splitscreenEventLogger.logExit(i, i2, i3, i6, i4, this.mSplitLayout.isLandscape());
    }

    public final void maximizeSplitTask(WindowContainerToken windowContainerToken, WindowContainerTransaction windowContainerTransaction) {
        int i;
        int i2 = 0;
        if (this.mMainStage.containsToken(windowContainerToken)) {
            i = 0;
        } else if (this.mSideStage.containsToken(windowContainerToken)) {
            i = 1;
        } else if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && this.mCellStage.containsToken(windowContainerToken)) {
            i = 2;
        } else {
            i = -1;
        }
        SplitScreenTransitions splitScreenTransitions = this.mSplitTransitions;
        if (i == -1) {
            if (splitScreenTransitions.mPendingEnter != null && this.mLastTransactionType == 2) {
                Slog.d("StageCoordinator", "maximizeSplitTask: during splitTransition");
            } else {
                Slog.w("StageCoordinator", "maximizeSplitTask: failed, cannot find " + windowContainerToken);
                return;
            }
        } else {
            i2 = i;
        }
        if (windowContainerTransaction == null) {
            windowContainerTransaction = new WindowContainerTransaction();
        }
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRootTaskInfo;
        if (runningTaskInfo != null) {
            windowContainerTransaction.setDoNotPip(runningTaskInfo.token);
        }
        if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
            prepareSplitMaximizeChangeTransition(windowContainerTransaction, i2);
        }
        prepareExitSplitScreen(i2, windowContainerTransaction, true);
        splitScreenTransitions.startDismissTransition(windowContainerTransaction, this, i2, 2);
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, Transitions.TransitionFinishCallback transitionFinishCallback) {
        boolean z;
        SplitScreenTransitions splitScreenTransitions = this.mSplitTransitions;
        if (iBinder2 == splitScreenTransitions.mAnimatingTransition) {
            OneShotRemoteHandler oneShotRemoteHandler = splitScreenTransitions.mActiveRemoteHandler;
            if (oneShotRemoteHandler != null) {
                oneShotRemoteHandler.mergeAnimation(iBinder, transitionInfo, transaction, iBinder2, transitionFinishCallback);
                return;
            }
            if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
                for (TransitionInfo.Change change : transitionInfo.getChanges()) {
                    if (!change.hasFlags(QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED) || change.getMode() != 2) {
                        z = false;
                        break;
                    }
                }
                z = true;
                if (z) {
                    Log.w("SplitScreenTransitions", "mergeAnimation: keep current transition, new=" + transitionInfo);
                    return;
                }
            }
            ArrayList arrayList = splitScreenTransitions.mAnimations;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Animator animator = (Animator) arrayList.get(size);
                ShellExecutor shellExecutor = splitScreenTransitions.mTransitions.mAnimExecutor;
                Objects.requireNonNull(animator);
                ((HandlerExecutor) shellExecutor).execute(new SplitScreenTransitions$$ExternalSyntheticLambda1(animator, 1));
            }
        }
    }

    public final void moveSplitToFreeform(WindowContainerToken windowContainerToken, Rect rect, boolean z) {
        int i;
        char c;
        Rect rect2;
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        windowContainerTransaction.setWindowingMode(windowContainerToken, 5);
        if (rect != null) {
            windowContainerTransaction.setBounds(windowContainerToken, rect);
        }
        if (z) {
            i = 4;
        } else {
            i = 1;
        }
        this.mMovingToFreeformTaskToken = windowContainerToken;
        try {
            if (this.mMainStage.containsToken(windowContainerToken)) {
                c = 0;
            } else if (this.mSideStage.containsToken(windowContainerToken)) {
                c = 1;
            } else {
                if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && this.mCellStage.containsToken(windowContainerToken)) {
                    c = 2;
                }
                rect2 = null;
                if (rect2 != null && !rect2.isEmpty()) {
                    windowContainerTransaction.setChangeTransitStartBounds(windowContainerToken, rect2);
                }
                windowContainerTransaction.setChangeTransitMode(windowContainerToken, i, "split_to_freeform");
                dismissSplitTask(windowContainerToken, windowContainerTransaction, z);
            }
            if (c == 0) {
                rect2 = getMainStageBounds();
            } else if (c == 1) {
                rect2 = getSideStageBounds();
            } else {
                if (c == 2) {
                    SplitLayout splitLayout = this.mSplitLayout;
                    splitLayout.getClass();
                    rect2 = new Rect(splitLayout.mBounds3);
                }
                rect2 = null;
            }
            if (rect2 != null) {
                windowContainerTransaction.setChangeTransitStartBounds(windowContainerToken, rect2);
            }
            windowContainerTransaction.setChangeTransitMode(windowContainerToken, i, "split_to_freeform");
            dismissSplitTask(windowContainerToken, windowContainerTransaction, z);
        } finally {
            this.mMovingToFreeformTaskToken = null;
        }
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayAdded(int i) {
        if (i != 0) {
            return;
        }
        this.mDisplayController.mChangeController.mDisplayChangeListener.add(new DisplayChangeController.OnDisplayChangingListener() { // from class: com.android.wm.shell.splitscreen.StageCoordinator$$ExternalSyntheticLambda9
            /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
            
                if (r10 == false) goto L31;
             */
            /* JADX WARN: Code restructure failed: missing block: B:50:0x00d5, code lost:
            
                if (r0 != false) goto L61;
             */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00bf  */
            /* JADX WARN: Removed duplicated region for block: B:52:0x00df  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x0086  */
            @Override // com.android.wm.shell.common.DisplayChangeController.OnDisplayChangingListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onDisplayChange(int r7, int r8, int r9, android.window.DisplayAreaInfo r10, android.window.WindowContainerTransaction r11) {
                /*
                    Method dump skipped, instructions count: 246
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator$$ExternalSyntheticLambda9.onDisplayChange(int, int, int, android.window.DisplayAreaInfo, android.window.WindowContainerTransaction):void");
            }
        });
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayConfigurationChanged(int i, Configuration configuration) {
        int i2;
        int i3;
        boolean z;
        if (i != 0) {
            return;
        }
        SplitLayout splitLayout = this.mSplitLayout;
        if (splitLayout != null) {
            if (splitLayout.mDensity != configuration.densityDpi) {
                z = true;
            } else {
                z = false;
            }
            if (z && this.mMainStage.mIsActive && splitLayout.updateConfiguration(configuration) && Transitions.ENABLE_SHELL_TRANSITIONS) {
                this.mSplitLayout.update(null);
                onLayoutSizeChanged(this.mSplitLayout, null);
            }
        }
        if (CoreRune.MW_MULTI_SPLIT_ROUNDED_CORNER) {
            updateCornerRadiusForStages(null);
        }
        Configuration configuration2 = this.mLastConfiguration;
        if ((configuration2.updateFrom(configuration) & 4) != 0) {
            this.mSplitUnsupportedToast.setText(R.string.dock_non_resizeble_failed_to_dock_text);
        }
        if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION && (i2 = configuration.semDisplayDeviceType) == 0 && i2 != configuration2.semDisplayDeviceType && !isSplitScreenVisible() && (i3 = this.mLastMainSplitDivision) != this.mSplitDivision) {
            if ((!CoreRune.MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS || !this.mIsVideoControls) && setSplitDivision(i3, false)) {
                Slog.d("StageCoordinator", "Restore main Split Division=" + this.mLastMainSplitDivision);
                this.mLastMainSplitDivision = -1;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [com.android.wm.shell.splitscreen.StageCoordinator$$ExternalSyntheticLambda11] */
    public final void onDoubleTappedDivider() {
        StageTaskListener stageTaskListener;
        StageTaskListener stageTaskListener2;
        final SurfaceControl.Transaction acquire = this.mTransactionPool.acquire();
        Rect rect = this.mTempRect1;
        rect.setEmpty();
        int i = this.mSideStagePosition;
        StageTaskListener stageTaskListener3 = this.mSideStage;
        StageTaskListener stageTaskListener4 = this.mMainStage;
        if (i == 0) {
            stageTaskListener = stageTaskListener3;
        } else {
            stageTaskListener = stageTaskListener4;
        }
        SurfaceControl surfaceControl = stageTaskListener.mRootLeash;
        final SurfaceControl takeScreenshot = ScreenshotUtils.takeScreenshot(acquire, surfaceControl, surfaceControl, rect, 2147483646);
        if (this.mSideStagePosition == 0) {
            stageTaskListener2 = stageTaskListener4;
        } else {
            stageTaskListener2 = stageTaskListener3;
        }
        SurfaceControl surfaceControl2 = stageTaskListener2.mRootLeash;
        final SurfaceControl takeScreenshot2 = ScreenshotUtils.takeScreenshot(acquire, surfaceControl2, surfaceControl2, rect, 2147483646);
        this.mSplitLayout.splitSwitching(acquire, stageTaskListener.mRootLeash, stageTaskListener2.mRootLeash, new Consumer() { // from class: com.android.wm.shell.splitscreen.StageCoordinator$$ExternalSyntheticLambda11
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                final StageCoordinator stageCoordinator = StageCoordinator.this;
                final SurfaceControl surfaceControl3 = takeScreenshot;
                final SurfaceControl surfaceControl4 = takeScreenshot2;
                final SurfaceControl.Transaction transaction = acquire;
                final Rect rect2 = (Rect) obj;
                stageCoordinator.getClass();
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                stageCoordinator.setSideStagePosition(windowContainerTransaction, SplitScreenUtils.reverseSplitPosition(stageCoordinator.mSideStagePosition));
                SyncTransactionQueue syncTransactionQueue = stageCoordinator.mSyncQueue;
                syncTransactionQueue.queue(windowContainerTransaction);
                syncTransactionQueue.runInSync(new SyncTransactionQueue.TransactionRunnable() { // from class: com.android.wm.shell.splitscreen.StageCoordinator$$ExternalSyntheticLambda15
                    @Override // com.android.wm.shell.common.SyncTransactionQueue.TransactionRunnable
                    public final void runWithTransaction(SurfaceControl.Transaction transaction2) {
                        final StageCoordinator stageCoordinator2 = stageCoordinator;
                        stageCoordinator2.updateSurfaceBounds(stageCoordinator2.mSplitLayout, transaction2, false);
                        Rect rect3 = rect2;
                        float f = -rect3.left;
                        float f2 = -rect3.top;
                        final SurfaceControl surfaceControl5 = surfaceControl3;
                        transaction2.setPosition(surfaceControl5, f, f2);
                        float f3 = rect3.left;
                        float f4 = rect3.top;
                        final SurfaceControl surfaceControl6 = surfaceControl4;
                        transaction2.setPosition(surfaceControl6, f3, f4);
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                        final SurfaceControl.Transaction transaction3 = transaction;
                        ofFloat.addUpdateListener(new StageCoordinator$$ExternalSyntheticLambda10(transaction3, surfaceControl5, surfaceControl6));
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.splitscreen.StageCoordinator.6
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                transaction3.remove(surfaceControl5);
                                transaction3.remove(surfaceControl6);
                                transaction3.apply();
                                StageCoordinator.this.mTransactionPool.release(transaction3);
                            }
                        });
                        ofFloat.start();
                    }
                });
            }
        });
        if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, -1053080117, 0, "Switch split position: %s", "double tap");
        }
        int mainStagePosition = getMainStagePosition();
        int topChildTaskUid = stageTaskListener4.getTopChildTaskUid();
        int i2 = this.mSideStagePosition;
        int topChildTaskUid2 = stageTaskListener3.getTopChildTaskUid();
        boolean isLandscape = this.mSplitLayout.isLandscape();
        SplitscreenEventLogger splitscreenEventLogger = this.mLogger;
        if (splitscreenEventLogger.mLoggerSessionId != null) {
            splitscreenEventLogger.updateMainStageState(SplitscreenEventLogger.getMainStagePositionFromSplitPosition(mainStagePosition, isLandscape), topChildTaskUid);
            splitscreenEventLogger.updateSideStageState(SplitscreenEventLogger.getSideStagePositionFromSplitPosition(i2, isLandscape), topChildTaskUid2);
            FrameworkStatsLog.write(388, 5, 0, 0, 0.0f, splitscreenEventLogger.mLastMainStagePosition, splitscreenEventLogger.mLastMainStageUid, splitscreenEventLogger.mLastSideStagePosition, splitscreenEventLogger.mLastSideStageUid, 0, splitscreenEventLogger.mLoggerSessionId.getId());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0060, code lost:
    
        if (isSplitScreenVisible() != false) goto L31;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.wm.shell.splitscreen.SideStage, com.android.wm.shell.splitscreen.StageTaskListener] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.android.wm.shell.transition.Transitions$TransitionHandler, com.android.wm.shell.splitscreen.StageCoordinator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onFoldedStateChanged(boolean r6) {
        /*
            r5 = this;
            boolean r0 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY
            r1 = -1
            if (r0 == 0) goto L9
            r5.mIsFolded = r6
            r5.mTopStageAfterFoldDismiss = r1
        L9:
            boolean r0 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_FREE_POSITION
            if (r0 == 0) goto L2e
            if (r6 == 0) goto L2e
            boolean r0 = r5.isInSubDisplay()
            if (r0 != 0) goto L2e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Save main Split Division="
            r0.<init>(r2)
            int r2 = r5.mSplitDivision
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "StageCoordinator"
            android.util.Slog.d(r2, r0)
            int r0 = r5.mSplitDivision
            r5.mLastMainSplitDivision = r0
        L2e:
            if (r6 != 0) goto L31
            return
        L31:
            com.android.wm.shell.splitscreen.MainStage r6 = r5.mMainStage
            boolean r0 = r6.mIsActive
            if (r0 != 0) goto L38
            return
        L38:
            boolean r0 = r6.isFocused()
            r2 = 1
            com.android.wm.shell.splitscreen.SideStage r3 = r5.mSideStage
            if (r0 == 0) goto L42
            goto L62
        L42:
            boolean r0 = r3.isFocused()
            if (r0 == 0) goto L4a
            r1 = r2
            goto L63
        L4a:
            boolean r0 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY
            if (r0 == 0) goto L58
            com.android.wm.shell.splitscreen.CellStage r0 = r5.mCellStage
            boolean r0 = r0.isFocused()
            if (r0 == 0) goto L58
            r1 = 2
            goto L63
        L58:
            boolean r0 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY
            if (r0 == 0) goto L63
            boolean r0 = r5.isSplitScreenVisible()
            if (r0 == 0) goto L63
        L62:
            r1 = 0
        L63:
            boolean r0 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY
            if (r0 == 0) goto L6a
            r5.mTopStageAfterFoldDismiss = r1
            return
        L6a:
            boolean r0 = com.android.wm.shell.transition.Transitions.ENABLE_SHELL_TRANSITIONS
            r4 = 3
            if (r0 == 0) goto L7d
            android.window.WindowContainerTransaction r6 = new android.window.WindowContainerTransaction
            r6.<init>()
            r5.prepareExitSplitScreen(r1, r6, r2)
            com.android.wm.shell.splitscreen.SplitScreenTransitions r0 = r5.mSplitTransitions
            r0.startDismissTransition(r6, r5, r1, r4)
            goto L84
        L7d:
            if (r1 != 0) goto L80
            goto L81
        L80:
            r6 = r3
        L81:
            r5.exitSplitScreen(r6, r4)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.onFoldedStateChanged(boolean):void");
    }

    public final void onFreeformToSplitRequested(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, int i, boolean z2, Rect rect, boolean z3, String str) {
        int i2;
        Bundle resolveStartStage;
        int i3;
        int multiSplitLaunchPosition;
        int i4;
        Bundle resolveStartCellStage;
        int i5;
        boolean z4;
        int i6;
        int i7 = runningTaskInfo.taskId;
        WindowContainerToken windowContainerToken = runningTaskInfo.token;
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        int i8 = 1;
        windowContainerTransaction.setChangeTransitMode(windowContainerToken, 1, str);
        if (rect != null) {
            windowContainerTransaction.setChangeTransitStartBounds(windowContainerToken, rect);
        }
        int i9 = 0;
        if (z) {
            int i10 = i & 64;
            if (i10 == 0 && (i & 32) == 0) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (i != 0 && z4) {
                i6 = 0;
            } else {
                i6 = 1;
            }
            if ((i & 16) != 0 || i10 != 0) {
                i9 = 1;
            }
            startTaskAndIntent(i7, MultiWindowUtils.getEdgeAllAppsActivityIntent(runningTaskInfo.baseIntent.getComponent(), runningTaskInfo.userId, i7), i6, i9, windowContainerTransaction);
            return;
        }
        if ((i == 0 && !z2) || (i != 16 && i != 8)) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        boolean z5 = CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER;
        ShellTaskOrganizer shellTaskOrganizer = this.mTaskOrganizer;
        MainStage mainStage = this.mMainStage;
        if (z5 && !MultiWindowUtils.isInSubDisplay(this.mContext) && isSplitScreenVisible() && (!CoreRune.MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS || !this.mIsVideoControls)) {
            if (z2) {
                int splitDivision = getSplitDivision();
                i4 = getSideStageWinConfigPosition();
                if (splitDivision == 1) {
                    if (i == 8) {
                        i4 |= 32;
                    } else if (i == 32) {
                        i4 |= 8;
                    }
                } else if (i == 16) {
                    i4 |= 64;
                } else if (i == 64) {
                    i4 |= 16;
                }
                if (splitDivision == 1) {
                    i5 = 0;
                } else {
                    i5 = 1;
                }
                setSideStagePosition(i2, i5, windowContainerTransaction, false);
                if (z3) {
                    WindowContainerToken windowContainerToken2 = mainStage.getTopRunningTaskInfo().token;
                    WindowContainerToken windowContainerToken3 = this.mSideStage.getTopRunningTaskInfo().token;
                    windowContainerTransaction.setChangeTransitMode(windowContainerToken2, 4, "natural_swtiching");
                    windowContainerTransaction.setChangeTransitMode(windowContainerToken3, 4, "natural_swtiching");
                }
                StageTaskListener stageTaskListenerByStageType = getStageTaskListenerByStageType(1);
                StageTaskListener stageTaskListenerByStageType2 = getStageTaskListenerByStageType(2);
                WindowContainerToken windowContainerToken4 = stageTaskListenerByStageType2.mRootTaskInfo.token;
                StageTaskListener.RunningTaskInfoList runningTaskInfoList = stageTaskListenerByStageType.mChildrenTaskInfo;
                int size = runningTaskInfoList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    windowContainerTransaction.reparent(((ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(i11)).token, windowContainerToken4, true);
                }
                WindowContainerToken windowContainerToken5 = stageTaskListenerByStageType.mRootTaskInfo.token;
                StageTaskListener.RunningTaskInfoList runningTaskInfoList2 = stageTaskListenerByStageType2.mChildrenTaskInfo;
                int size2 = runningTaskInfoList2.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    windowContainerTransaction.reparent(((ActivityManager.RunningTaskInfo) runningTaskInfoList2.valueAt(i12)).token, windowContainerToken5, true);
                }
                resolveStartCellStage = resolveStartStage(1, i2, null, null);
            } else {
                if (i != 0) {
                    multiSplitLaunchPosition = i;
                } else {
                    multiSplitLaunchPosition = StageUtils.getMultiSplitLaunchPosition(this.mCellStageWindowConfigPosition, isVerticalDivision());
                }
                i4 = multiSplitLaunchPosition;
                resolveStartCellStage = resolveStartCellStage(-1, multiSplitLaunchPosition, null, null);
            }
            windowContainerTransaction.startTask(i7, resolveStartCellStage);
            if (isMultiSplitScreenVisible()) {
                shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                return;
            }
            this.mSplitLayout.setCellDividerRatio(0.5f, i4, true, false);
            prepareEnterMultiSplitScreen(i4, windowContainerTransaction);
            if (CoreRune.MW_MULTI_SPLIT_SHELL_TRANSITION && !z3) {
                applyCellHostResizeTransition(windowContainerTransaction);
            }
            this.mSplitTransitions.startEnterTransition(windowContainerTransaction, null, this, 1100, false);
            return;
        }
        if (i != 0) {
            if (i == 8 || i == 32) {
                i8 = 0;
            }
            resolveStartStage = resolveStartStage(-1, i2, null, null, i8);
        } else {
            resolveStartStage = resolveStartStage(-1, i2, null, null);
        }
        windowContainerTransaction.startTask(i7, resolveStartStage);
        if (isSplitScreenVisible()) {
            shellTaskOrganizer.applyTransaction(windowContainerTransaction);
            return;
        }
        if (mainStage.mIsActive) {
            i3 = 1005;
        } else {
            i3 = VolteConstants.ErrorCode.CLIENT_ERROR_NOT_ALLOWED_URI;
        }
        prepareEnterSplitScreen(windowContainerTransaction, null, i2, false);
        this.mSplitTransitions.startEnterTransition(windowContainerTransaction, null, this, i3, false);
    }

    public final void onLayoutPositionChanging(SplitLayout splitLayout) {
        TransactionPool transactionPool = this.mTransactionPool;
        SurfaceControl.Transaction acquire = transactionPool.acquire();
        acquire.setFrameTimelineVsync(Choreographer.getInstance().getVsyncId());
        updateSurfaceBounds(splitLayout, acquire, false);
        acquire.apply();
        transactionPool.release(acquire);
    }

    public final void onLayoutSizeChanged(SplitLayout splitLayout, WindowContainerTransaction windowContainerTransaction) {
        boolean z;
        int i = 0;
        this.mShowDecorImmediately = false;
        if (!CoreRune.MW_SPLIT_SHELL_TRANSITION || windowContainerTransaction == null) {
            windowContainerTransaction = new WindowContainerTransaction();
        }
        updateStagePositionIfNeeded(windowContainerTransaction);
        boolean updateWindowBounds = updateWindowBounds(splitLayout, windowContainerTransaction, false);
        SideStage sideStage = this.mSideStage;
        MainStage mainStage = this.mMainStage;
        TransactionPool transactionPool = this.mTransactionPool;
        if (!updateWindowBounds) {
            SurfaceControl.Transaction acquire = transactionPool.acquire();
            mainStage.onResized(acquire);
            sideStage.onResized(acquire);
            if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
                this.mCellStage.onResized(acquire);
            }
            transactionPool.release(acquire);
            return;
        }
        sendOnBoundsChanged();
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            this.mSplitLayout.setDividerInteractive("onSplitResizeStart", false, false);
            StageCoordinator$$ExternalSyntheticLambda1 stageCoordinator$$ExternalSyntheticLambda1 = new StageCoordinator$$ExternalSyntheticLambda1(this, i);
            SplitScreenTransitions splitScreenTransitions = this.mSplitTransitions;
            SplitScreenTransitions.TransitSession transitSession = splitScreenTransitions.mPendingResize;
            if (transitSession != null) {
                transitSession.mCanceled = true;
                transitSession.mFinishedCallback = null;
                splitScreenTransitions.mAnimations.clear();
                splitScreenTransitions.onFinish(null, null);
            }
            splitScreenTransitions.mPendingResize = new SplitScreenTransitions.TransitSession(splitScreenTransitions, splitScreenTransitions.mTransitions.startTransition(6, windowContainerTransaction, this), null, stageCoordinator$$ExternalSyntheticLambda1);
            if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -522947324, 0, "  splitTransition  deduced Resize split screen", null);
            }
        } else {
            SurfaceControl.Transaction acquire2 = transactionPool.acquire();
            mainStage.getClass();
            sideStage.getClass();
            transactionPool.release(acquire2);
            SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
            syncTransactionQueue.queue(windowContainerTransaction);
            syncTransactionQueue.runInSync(new StageCoordinator$$ExternalSyntheticLambda2(this, splitLayout, i));
        }
        float dividerPositionAsFraction = this.mSplitLayout.getDividerPositionAsFraction();
        SplitscreenEventLogger splitscreenEventLogger = this.mLogger;
        if (splitscreenEventLogger.mLoggerSessionId != null && dividerPositionAsFraction > 0.0f && dividerPositionAsFraction < 1.0f) {
            if (Float.compare(splitscreenEventLogger.mLastSplitRatio, dividerPositionAsFraction) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                splitscreenEventLogger.mLastSplitRatio = dividerPositionAsFraction;
                i = 1;
            }
            if (i != 0) {
                FrameworkStatsLog.write(388, 4, 0, 0, splitscreenEventLogger.mLastSplitRatio, 0, 0, 0, 0, 0, splitscreenEventLogger.mLoggerSessionId.getId());
            }
        }
    }

    public final void onLayoutSizeChanging(int i, int i2, SplitLayout splitLayout) {
        TransactionPool transactionPool = this.mTransactionPool;
        SurfaceControl.Transaction acquire = transactionPool.acquire();
        acquire.setFrameTimelineVsync(Choreographer.getInstance().getVsyncId());
        updateSurfaceBounds(splitLayout, acquire, true);
        int i3 = this.mSideStagePosition;
        Rect rect = this.mTempRect1;
        if (i3 == 0) {
            rect.set(this.mSplitLayout.mBounds2);
        } else {
            rect.set(this.mSplitLayout.mBounds1);
        }
        int i4 = this.mSideStagePosition;
        Rect rect2 = this.mTempRect2;
        if (i4 == 0) {
            rect2.set(this.mSplitLayout.mBounds1);
        } else {
            rect2.set(this.mSplitLayout.mBounds2);
        }
        this.mMainStage.getClass();
        this.mSideStage.getClass();
        acquire.apply();
        transactionPool.release(acquire);
    }

    public final void onRecentsInSplitAnimationCanceled() {
        this.mPausingTasks.clear();
        setSplitsVisible(false, false);
        if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
            this.mIsRecentsInSplitAnimating = false;
        }
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        windowContainerTransaction.setReparentLeafTaskIfRelaunch(this.mRootTaskInfo.token, true);
        this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
    }

    public final void onRecentsInSplitAnimationFinish(WindowContainerTransaction windowContainerTransaction, SurfaceControl.Transaction transaction) {
        SplitBackgroundController splitBackgroundController;
        this.mPausingTasks.clear();
        int i = 0;
        while (true) {
            int size = windowContainerTransaction.getHierarchyOps().size();
            splitBackgroundController = this.mSplitBackgroundController;
            if (i < size) {
                WindowContainerTransaction.HierarchyOp hierarchyOp = (WindowContainerTransaction.HierarchyOp) windowContainerTransaction.getHierarchyOps().get(i);
                IBinder container = hierarchyOp.getContainer();
                if (hierarchyOp.getType() == 1 && hierarchyOp.getToTop()) {
                    MainStage mainStage = this.mMainStage;
                    mainStage.getClass();
                    if (mainStage.contains(new StageTaskListener$$ExternalSyntheticLambda1(container, 1))) {
                        break;
                    }
                    SideStage sideStage = this.mSideStage;
                    sideStage.getClass();
                    if (sideStage.contains(new StageTaskListener$$ExternalSyntheticLambda1(container, 1))) {
                        break;
                    }
                }
                i++;
            } else {
                setSplitsVisible(false, false);
                windowContainerTransaction.setReparentLeafTaskIfRelaunch(this.mRootTaskInfo.token, true);
                splitBackgroundController.getClass();
                if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
                    this.mIsRecentsInSplitAnimating = false;
                    return;
                }
                return;
            }
        }
        updateSurfaceBounds(this.mSplitLayout, transaction, false);
        transaction.reparent(this.mSplitLayout.getDividerLeash(), this.mRootTaskLeash);
        setDividerVisibility(true, transaction);
        if (splitBackgroundController.canShow()) {
            splitBackgroundController.updateBackgroundVisibility(true, false);
        }
    }

    public final void onRemoteAnimationFinished(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        this.mIsDividerRemoteAnimating = false;
        this.mShouldUpdateRecents = true;
        clearRequestIfPresented();
        MainStage mainStage = this.mMainStage;
        if (mainStage.getChildCount() != 0) {
            SideStage sideStage = this.mSideStage;
            if (sideStage.getChildCount() != 0) {
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                mainStage.evictNonOpeningChildren(remoteAnimationTargetArr, windowContainerTransaction);
                sideStage.evictNonOpeningChildren(remoteAnimationTargetArr, windowContainerTransaction);
                this.mSyncQueue.queue(windowContainerTransaction);
                return;
            }
        }
        ((HandlerExecutor) this.mMainExecutor).execute(new StageCoordinator$$ExternalSyntheticLambda3(this, 6));
        this.mSplitUnsupportedToast.show();
    }

    public void onRootTaskAppeared() {
        if (this.mRootTaskInfo != null && this.mMainStageListener.mHasRootTask && this.mSideStageListener.mHasRootTask) {
            if (!CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER || this.mCellStageListener.mHasRootTask) {
                WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                MainStage mainStage = this.mMainStage;
                windowContainerTransaction.reparent(mainStage.mRootTaskInfo.token, this.mRootTaskInfo.token, true);
                SideStage sideStage = this.mSideStage;
                windowContainerTransaction.reparent(sideStage.mRootTaskInfo.token, this.mRootTaskInfo.token, true);
                if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
                    windowContainerTransaction.reparent(this.mCellStage.mRootTaskInfo.token, this.mRootTaskInfo.token, true);
                }
                windowContainerTransaction.setAdjacentRoots(mainStage.mRootTaskInfo.token, sideStage.mRootTaskInfo.token);
                windowContainerTransaction.setLaunchAdjacentFlagRoot(sideStage.mRootTaskInfo.token);
                setRootForceTranslucent(windowContainerTransaction, true);
                Rect rect = this.mSplitLayout.mInvisibleBounds;
                Rect rect2 = this.mTempRect1;
                rect2.set(rect);
                windowContainerTransaction.setBounds(sideStage.mRootTaskInfo.token, rect2);
                SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
                syncTransactionQueue.queue(windowContainerTransaction);
                syncTransactionQueue.runInSync(new StageCoordinator$$ExternalSyntheticLambda0(this, 0));
            }
        }
    }

    public final void onRootTaskVanished() {
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRootTaskInfo;
        if (runningTaskInfo != null) {
            windowContainerTransaction.clearLaunchAdjacentFlagRoot(runningTaskInfo.token);
        }
        applyExitSplitScreen(null, windowContainerTransaction, 6);
        this.mDisplayInsetsController.removeInsetsChangedListener(this.mDisplayId, this.mSplitLayout);
    }

    public final void onSnappedToDismiss(int i, boolean z, boolean z2) {
        int i2;
        StageTaskListener stageTaskListener;
        boolean z3;
        boolean z4;
        int i3;
        if (CoreRune.MW_SPLIT_DIVIDER_SA_LOGGING) {
            CoreSaLogger.logForAdvanced("1005", "Move divider");
        }
        boolean z5 = true;
        boolean z6 = false;
        if (!z ? this.mSideStagePosition == 0 : this.mSideStagePosition == 1) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        StageTaskListener stageTaskListener2 = this.mMainStage;
        SideStage sideStage = this.mSideStage;
        if (i2 != 0) {
            stageTaskListener = stageTaskListener2;
        } else {
            stageTaskListener = sideStage;
        }
        if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
            exitSplitScreen(stageTaskListener, i);
            return;
        }
        boolean z7 = CoreRune.MW_MULTI_SPLIT_NATURAL_RESIZING;
        SplitScreenTransitions splitScreenTransitions = this.mSplitTransitions;
        if (z7 && this.mDividerResizeController.mIsResizing && isMultiSplitActive()) {
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mRootTaskInfo;
            if (runningTaskInfo != null) {
                windowContainerTransaction.setDoNotPip(runningTaskInfo.token);
            }
            DividerResizeController dividerResizeController = this.mDividerResizeController;
            DividerView dividerView = dividerResizeController.mDividerView;
            if (dividerView != null && dividerView.mIsCellDivider) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                int cellHostStageType = getCellHostStageType();
                int cellSide = this.mSplitLayout.getCellSide();
                if (cellSide != 1 && cellSide != 3) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (z4) {
                    i3 = 40;
                } else {
                    i3 = 80;
                }
                int stageWinConfigPositionByType = i3 & getStageWinConfigPositionByType(cellHostStageType);
                if (!z ? (stageWinConfigPositionByType & 24) == 0 : (stageWinConfigPositionByType & 96) == 0) {
                    z5 = false;
                }
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onSnappedToDismissMultiSplit: cell divider action, hostStageType=", cellHostStageType, ", hostPos=");
                m.append(WindowConfiguration.stagePositionToString(stageWinConfigPositionByType));
                m.append(", dismissToHostStage=");
                m.append(z5);
                Slog.d("StageCoordinator", m.toString());
                reparentCellToMainOrSide(windowContainerTransaction, this.mCellStage.mHost, z5);
                this.mSplitTransitions.startDismissTransition(windowContainerTransaction, this, cellHostStageType, 2, true);
                return;
            }
            int i4 = dividerResizeController.mHalfSplitStageType;
            if (i4 != 0) {
                stageTaskListener2 = sideStage;
            }
            int stageWinConfigPositionByType2 = getStageWinConfigPositionByType(i4);
            if (!z ? (stageWinConfigPositionByType2 & 24) != 0 : (stageWinConfigPositionByType2 & 96) != 0) {
                z6 = true;
            }
            StringBuilder m2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onSnappedToDismissMultiSplit: halfStageType=", i4, ", halfPos=");
            m2.append(WindowConfiguration.stagePositionToString(stageWinConfigPositionByType2));
            m2.append(", dismissToHalfStage=");
            m2.append(z6);
            Slog.d("StageCoordinator", m2.toString());
            if (z6) {
                reparentCellToMainOrSide(windowContainerTransaction, stageTaskListener2, true);
                this.mSplitTransitions.startDismissTransition(windowContainerTransaction, this, i4, 2, true);
                return;
            } else {
                prepareExitSplitScreen(i4, windowContainerTransaction, true);
                splitScreenTransitions.startDismissTransition(windowContainerTransaction, this, i4, 2);
                return;
            }
        }
        int i5 = i2 ^ 1;
        WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
        if (z2) {
            prepareSplitDismissChangeTransition(windowContainerTransaction2, i2, null, false);
        }
        windowContainerTransaction2.setBounds(stageTaskListener.mRootTaskInfo.token, (Rect) null);
        windowContainerTransaction2.setAppBounds(stageTaskListener.mRootTaskInfo.token, (Rect) null);
        windowContainerTransaction2.setSmallestScreenWidthDp(stageTaskListener.mRootTaskInfo.token, 0);
        prepareExitSplitScreen(i5, windowContainerTransaction2, true);
        ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mRootTaskInfo;
        if (runningTaskInfo2 != null) {
            windowContainerTransaction2.setDoNotPip(runningTaskInfo2.token);
        }
        splitScreenTransitions.startDismissTransition(windowContainerTransaction2, this, i5, 4);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) {
        if (this.mRootTaskInfo == null && !runningTaskInfo.hasParentTask()) {
            this.mRootTaskInfo = runningTaskInfo;
            this.mRootTaskLeash = surfaceControl;
            SplitBackgroundController splitBackgroundController = this.mSplitBackgroundController;
            if (splitBackgroundController.mIsAttached) {
                Slog.e("SplitBackgroundController", "attachTo: new root coming.");
                splitBackgroundController.detach();
            }
            SurfaceControl build = new SurfaceControl.Builder(splitBackgroundController.mSurfaceSession).setName("Split Background Layer").setHidden(true).setColorLayer().setCallsite("SplitBackgroundController.onDisplayAreaAppeared").build();
            splitBackgroundController.mBackgroundColorLayer = build;
            SplitBackgroundController.SurfaceDelegate surfaceDelegate = splitBackgroundController.mSurfaceDelegate;
            surfaceDelegate.mSurfaceControl = build;
            surfaceDelegate.setCrop(splitBackgroundController.getDisplayBounds());
            TransactionPool transactionPool = splitBackgroundController.mTransactionPool;
            SurfaceControl.Transaction acquire = transactionPool.acquire();
            acquire.setLayer(splitBackgroundController.mBackgroundColorLayer, -1);
            acquire.reparent(splitBackgroundController.mBackgroundColorLayer, surfaceControl);
            acquire.apply();
            transactionPool.release(acquire);
            splitBackgroundController.mIsAttached = true;
            if (this.mSplitLayout == null) {
                SplitLayout splitLayout = new SplitLayout("StageCoordinatorSplitDivider", this.mContext, this.mRootTaskInfo.configuration, this, this.mParentContainerCallbacks, this.mDisplayController, this.mDisplayImeController, this.mTaskOrganizer, 2, this.mSplitDivision);
                this.mSplitLayout = splitLayout;
                this.mDisplayInsetsController.addInsetsChangedListener(this.mDisplayId, splitLayout);
                SplitLayout splitLayout2 = this.mSplitLayout;
                splitLayout2.mStageCoordinator = this;
                DividerResizeController dividerResizeController = this.mDividerResizeController;
                splitLayout2.mSplitWindowManager.mDividerResizeController = dividerResizeController;
                if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER) {
                    splitLayout2.mCellSplitWindowManager.mDividerResizeController = dividerResizeController;
                }
            }
            onRootTaskAppeared();
            return;
        }
        throw new IllegalArgumentException(this + "\n Unknown task appeared: " + runningTaskInfo);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        boolean z;
        boolean z2;
        ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mRootTaskInfo;
        if (runningTaskInfo2 != null && runningTaskInfo2.taskId == runningTaskInfo.taskId) {
            SplitLayout splitLayout = this.mSplitLayout;
            boolean z3 = true;
            if (splitLayout != null && !new Rect(splitLayout.mRootBounds).equals(runningTaskInfo.getConfiguration().windowConfiguration.getBounds())) {
                z = true;
            } else {
                z = false;
            }
            if (!this.mIsFolded ? runningTaskInfo.configuration.semDisplayDeviceType == 5 : runningTaskInfo.configuration.semDisplayDeviceType == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY && z && z2 && isSplitScreenVisible()) {
                Slog.d("StageCoordinator", "onTaskInfoChanged ignore - device type is differents folded state.");
                return;
            }
            this.mRootTaskInfo = runningTaskInfo;
            if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY && this.mTopStageAfterFoldDismiss != -1) {
                this.mTmpConfigAfterFoldDismiss = runningTaskInfo.configuration;
                return;
            }
            SplitLayout splitLayout2 = this.mSplitLayout;
            if (splitLayout2 == null || !splitLayout2.updateConfiguration(runningTaskInfo.configuration)) {
                z3 = false;
            }
            if (z3 && !Transitions.ENABLE_SHELL_TRANSITIONS) {
                this.mIsDividerRemoteAnimating = false;
                this.mSplitLayout.update(null);
                onLayoutSizeChanged(this.mSplitLayout, null);
            }
            if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION && z3 && this.mRootTaskInfo.configuration.semDisplayDeviceType == 5 && this.mTopStageAfterFoldDismiss == -1) {
                updateSplitDivisionIfNeeded();
                return;
            }
            return;
        }
        throw new IllegalArgumentException(this + "\n Unknown task info changed: " + runningTaskInfo);
    }

    @Override // com.android.wm.shell.ShellTaskOrganizer.TaskListener
    public final void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (this.mRootTaskInfo != null) {
            onRootTaskVanished();
            SplitLayout splitLayout = this.mSplitLayout;
            if (splitLayout != null) {
                splitLayout.release(null);
                this.mSplitLayout = null;
                Slog.w("StageCoordinator", "mSplitLayout is set to null");
            }
            this.mRootTaskInfo = null;
            this.mRootTaskLeash = null;
            this.mIsRootTranslucent = false;
            this.mSplitBackgroundController.detach();
            return;
        }
        throw new IllegalArgumentException(this + "\n Unknown task vanished: " + runningTaskInfo);
    }

    public final void onTransitionAnimationComplete() {
        if (!this.mMainStage.mIsActive && !this.mIsExiting) {
            this.mSplitLayout.release(null);
            if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY) {
                this.mTopStageAfterFoldDismiss = -1;
            }
        }
        if (CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER && !this.mCellStage.mIsActive && !this.mIsExiting) {
            this.mSplitLayout.releaseCellDivider(null);
        }
        DividerResizeController dividerResizeController = this.mDividerResizeController;
        if (dividerResizeController != null) {
            Log.d("DividerResizeController", "onSyncAppsReady: SyncId=" + dividerResizeController.mSyncAppsId);
            dividerResizeController.stopWaitingForSyncAppsCallback("sync_apps_ready");
        }
        if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
            this.mIsRecentsInSplitAnimating = false;
        }
        this.mLastTransactionType = 0;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void onTransitionConsumed(IBinder iBinder, boolean z, SurfaceControl.Transaction transaction) {
        SplitScreenTransitions splitScreenTransitions = this.mSplitTransitions;
        if (splitScreenTransitions.isPendingEnter(iBinder)) {
            if (!z) {
                splitScreenTransitions.mStageCoordinator.finishEnterSplitScreen(transaction, false);
            }
            splitScreenTransitions.mPendingEnter.onConsumed();
            splitScreenTransitions.mPendingEnter = null;
            return;
        }
        if (splitScreenTransitions.isPendingDismiss(iBinder)) {
            splitScreenTransitions.mPendingDismiss.onConsumed();
            splitScreenTransitions.mPendingDismiss = null;
        } else if (splitScreenTransitions.isPendingResize(iBinder)) {
            splitScreenTransitions.mPendingResize.onConsumed();
            splitScreenTransitions.mPendingResize = null;
        }
    }

    public final void overrideStageCoordinatorRootConfig(WindowContainerTransaction windowContainerTransaction) {
        boolean z = MultiWindowCoreState.MW_SPLIT_IMMERSIVE_MODE_ENABLED;
        boolean z2 = MultiWindowCoreState.MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRootTaskInfo;
        if (runningTaskInfo != null && runningTaskInfo.getToken() != null) {
            DisplayLayout displayLayout = this.mDisplayController.getDisplayLayout(this.mContext.getDisplayId());
            if (displayLayout != null && (z || z2)) {
                int i = displayLayout.mWidth;
                int i2 = displayLayout.mHeight;
                Rect rect = this.mTempRect;
                rect.set(0, 0, i, i2);
                if (!MultiWindowCoreState.MW_SPLIT_IMMERSIVE_MODE_ENABLED) {
                    if (MultiWindowCoreState.MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED) {
                        InsetsState insetsState = displayLayout.mInsetsState;
                        int displayCutout = WindowInsets.Type.displayCutout();
                        Rect rect2 = displayLayout.mTempRect;
                        insetsState.calculateInsets(rect2, displayCutout, true);
                        rect.inset(rect2);
                    } else {
                        rect.inset(displayLayout.mNonDecorInsets);
                    }
                }
                windowContainerTransaction.setAppBounds(this.mRootTaskInfo.getToken(), rect);
                float density = displayLayout.density();
                displayLayout.getStableBounds(rect, true);
                windowContainerTransaction.setScreenSizeDp(this.mRootTaskInfo.getToken(), (int) ((rect.width() / density) + 0.5f), (int) ((rect.height() / density) + 0.5f));
                return;
            }
            windowContainerTransaction.setAppBounds(this.mRootTaskInfo.getToken(), (Rect) null);
            windowContainerTransaction.setScreenSizeDp(this.mRootTaskInfo.getToken(), 0, 0);
        }
    }

    public final void prepareActiveSplit(WindowContainerTransaction windowContainerTransaction, ActivityManager.RunningTaskInfo runningTaskInfo, int i, boolean z, float f) {
        if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
            this.mSplitLayout.init();
        } else {
            setSplitsVisible(false, false);
        }
        if (runningTaskInfo != null) {
            setSideStagePosition(windowContainerTransaction, i);
            SideStage sideStage = this.mSideStage;
            sideStage.getClass();
            windowContainerTransaction.setWindowingMode(runningTaskInfo.token, 0).setBounds(runningTaskInfo.token, (Rect) null);
            windowContainerTransaction.reparent(runningTaskInfo.token, sideStage.mRootTaskInfo.token, true);
        }
        this.mMainStage.activate(windowContainerTransaction, true);
        prepareSplitLayout(windowContainerTransaction, z, f);
    }

    public void prepareAndStartDismissTransition(int i, int i2, WindowContainerTransaction windowContainerTransaction, boolean z) {
        StageTaskListener stageTaskListenerByStageType = getStageTaskListenerByStageType(i);
        if (windowContainerTransaction == null) {
            windowContainerTransaction = new WindowContainerTransaction();
        }
        WindowContainerTransaction windowContainerTransaction2 = windowContainerTransaction;
        prepareSplitDismissChangeTransition(windowContainerTransaction2, i2, null, z);
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mRootTaskInfo;
        if (runningTaskInfo != null) {
            windowContainerTransaction2.setDoNotPip(runningTaskInfo.token);
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && isMultiSplitActive()) {
            if (i2 == 2) {
                prepareExitMultiSplitScreen(windowContainerTransaction2, false);
            } else {
                reparentCellToMainOrSide(windowContainerTransaction2, stageTaskListenerByStageType, true);
            }
            this.mSplitTransitions.startDismissTransition(windowContainerTransaction2, this, i, 2, true);
            return;
        }
        prepareExitSplitScreen(i, windowContainerTransaction2, true);
        this.mSplitTransitions.startDismissTransition(windowContainerTransaction2, this, i, 2);
    }

    public final void prepareBringSplit(WindowContainerTransaction windowContainerTransaction, ActivityManager.RunningTaskInfo runningTaskInfo, int i, boolean z, float f) {
        if (runningTaskInfo != null) {
            windowContainerTransaction.startTask(runningTaskInfo.taskId, resolveStartStage(-1, i, null, windowContainerTransaction));
        }
        if (this.mAppPairStarted) {
            Slog.d("StageCoordinator", "When the App Pair is starting, it does not reparent on the mainStage.");
            prepareSplitLayout(windowContainerTransaction, z, 0.0f);
            return;
        }
        if (!isSplitScreenVisible()) {
            MainStage mainStage = this.mMainStage;
            mainStage.evictAllChildren(windowContainerTransaction, true);
            windowContainerTransaction.reparentTasks((WindowContainerToken) null, mainStage.mRootTaskInfo.token, SplitScreenConstants.CONTROLLED_WINDOWING_MODES, SplitScreenConstants.CONTROLLED_ACTIVITY_TYPES, true, true);
            if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
                CellStage cellStage = this.mCellStage;
                if (cellStage.hasChild() && CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
                    cellStage.evictAllChildren(windowContainerTransaction, false);
                }
                if (cellStage.mIsActive) {
                    prepareExitMultiSplitScreen(windowContainerTransaction, false);
                }
            }
            prepareSplitLayout(windowContainerTransaction, z, f);
        }
    }

    public final void prepareDismissAnimation(int i, int i2, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2, boolean z) {
        boolean z2;
        SurfaceControl surfaceControl;
        SurfaceControl surfaceControl2;
        String str;
        String str2;
        SideStage sideStage = this.mSideStage;
        MainStage mainStage = this.mMainStage;
        if (i == -1) {
            if (mainStage.getChildCount() != 0) {
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < mainStage.getChildCount(); i3++) {
                    if (i3 != 0) {
                        str2 = ", ";
                    } else {
                        str2 = "";
                    }
                    sb.append(str2);
                    sb.append(mainStage.mChildrenTaskInfo.keyAt(i3));
                }
                Log.w("StageCoordinator", "Expected onTaskVanished on " + mainStage + " to have been called with [" + sb.toString() + "] before startAnimation().");
            }
            if (sideStage.getChildCount() != 0) {
                StringBuilder sb2 = new StringBuilder();
                for (int i4 = 0; i4 < sideStage.getChildCount(); i4++) {
                    if (i4 != 0) {
                        str = ", ";
                    } else {
                        str = "";
                    }
                    sb2.append(str);
                    sb2.append(sideStage.mChildrenTaskInfo.keyAt(i4));
                }
                Log.w("StageCoordinator", "Expected onTaskVanished on " + sideStage + " to have been called with [" + sb2.toString() + "] before startAnimation().");
            }
        }
        ArrayMap arrayMap = new ArrayMap();
        boolean z3 = true;
        for (int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m >= 0; m--) {
            TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(m);
            ActivityManager.RunningTaskInfo taskInfo = change.getTaskInfo();
            if (taskInfo != null && (getStageOfTask(taskInfo) != null || getSplitItemPosition(change.getLastParent()) != -1)) {
                arrayMap.put(Integer.valueOf(taskInfo.taskId), change.getLeash());
            }
        }
        if (shouldBreakPairedTaskInRecents(i2)) {
            z2 = false;
            this.mRecentTasks.ifPresent(new StageCoordinator$$ExternalSyntheticLambda17(arrayMap, 0 == true ? 1 : 0));
        } else {
            z2 = false;
        }
        boolean z4 = CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER;
        CellStage cellStage = this.mCellStage;
        if (z4 && z) {
            setCellSplitVisible(z2);
            setCellDividerVisibility(transaction, z2);
            transaction.setCrop(cellStage.mRootLeash, null);
            transaction2.hide(cellStage.mDimLayer);
            return;
        }
        this.mSplitRequest = null;
        setSplitsVisible(z2, z2);
        transaction.setCrop(mainStage.mRootLeash, null);
        transaction.setCrop(sideStage.mRootLeash, null);
        if (i != -1) {
            if (i == 0) {
                surfaceControl = sideStage.mRootLeash;
            } else {
                surfaceControl = mainStage.mRootLeash;
            }
            transaction.hide(surfaceControl);
            if (i == 0) {
                surfaceControl2 = mainStage.mRootLeash;
            } else {
                surfaceControl2 = sideStage.mRootLeash;
            }
            transaction.setPosition(surfaceControl2, 0.0f, 0.0f);
        } else {
            for (int size = arrayMap.keySet().size() - 1; size >= 0; size--) {
                transaction2.hide((SurfaceControl) arrayMap.valueAt(size));
            }
        }
        if (i == -1) {
            this.mLogger.logExit(i2, -1, 0, -1, 0, this.mSplitLayout.isLandscape());
        } else {
            if (i != 0) {
                z3 = false;
            }
            logExitToStage(i2, z3);
        }
        setDividerVisibility(false, transaction);
        transaction2.hide(mainStage.mDimLayer);
        transaction2.hide(sideStage.mDimLayer);
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            setCellSplitVisible(false);
            setCellDividerVisibility(transaction, false);
            transaction.setCrop(cellStage.mRootLeash, null);
            transaction2.hide(cellStage.mDimLayer);
        }
    }

    public final void prepareEnterMultiSplitScreen(int i, WindowContainerTransaction windowContainerTransaction) {
        CellStage cellStage = this.mCellStage;
        if (cellStage.mIsActive) {
            return;
        }
        cellStage.mIsActive = true;
        if (i != 0) {
            setCellStageWindowConfigPosition(i, false);
        }
        this.mSplitLayout.updateCellStageWindowConfigPosition(this.mCellStageWindowConfigPosition);
        updateWindowBounds(this.mSplitLayout, windowContainerTransaction, false);
        windowContainerTransaction.reorder(this.mRootTaskInfo.token, true);
        updateStagePositionIfNeeded(windowContainerTransaction);
    }

    public final void prepareEnterSplitScreen(WindowContainerTransaction windowContainerTransaction, ActivityManager.RunningTaskInfo runningTaskInfo, int i, boolean z) {
        onSplitScreenEnter();
        windowContainerTransaction.setReparentLeafTaskIfRelaunch(this.mRootTaskInfo.token, false);
        if (this.mMainStage.mIsActive) {
            prepareBringSplit(windowContainerTransaction, runningTaskInfo, i, z, 0.0f);
        } else {
            prepareActiveSplit(windowContainerTransaction, runningTaskInfo, i, z, 0.0f);
        }
    }

    public final void prepareExitMultiSplitScreen(WindowContainerTransaction windowContainerTransaction, boolean z) {
        CellStage cellStage = this.mCellStage;
        cellStage.mIsActive = false;
        cellStage.mHost = null;
        if (cellStage.mChildrenTaskInfo.size() != 0) {
            if (CoreRune.MT_NEW_DEX_LAUNCH_POLICY && z && !cellStage.mToSplit) {
                cellStage.adjustChildTaskWindowingModeIfNeeded(windowContainerTransaction);
            }
            windowContainerTransaction.reparentTasks(cellStage.mRootTaskInfo.token, (WindowContainerToken) null, SplitScreenConstants.CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE, SplitScreenConstants.CONTROLLED_ACTIVITY_TYPES, z);
        }
        windowContainerTransaction.reorder(cellStage.mRootTaskInfo.token, false);
        cellStage.mToSplit = false;
        this.mCellStageWindowConfigPosition = 0;
        updateWindowBounds(this.mSplitLayout, windowContainerTransaction, false);
        updateStagePositionIfNeeded(windowContainerTransaction);
    }

    public final void prepareExitSplitScreen(int i, WindowContainerTransaction windowContainerTransaction, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        MainStage mainStage = this.mMainStage;
        if (!mainStage.mIsActive) {
            return;
        }
        boolean z5 = CoreRune.MW_SPLIT_SHELL_TRANSITION;
        boolean z6 = true;
        SideStage sideStage = this.mSideStage;
        if (z5) {
            if (i == 1) {
                z4 = true;
            } else {
                z4 = false;
            }
            sideStage.removeAllTasks(windowContainerTransaction, z4, z);
        } else {
            if (i == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            sideStage.removeAllTasks(windowContainerTransaction, z2, true);
        }
        if (i == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        mainStage.deactivate(windowContainerTransaction, z3);
        if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY && this.mTopStageAfterFoldDismiss != -1) {
            this.mTopStageAfterFoldDismiss = -1;
            updateCoverDisplaySplitLayoutIfNeeded();
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && this.mCellStage.mIsActive) {
            if (i != 2) {
                z6 = false;
            }
            prepareExitMultiSplitScreen(windowContainerTransaction, z6);
        }
    }

    public final void prepareMultiSplitDismissChangeTransition(int i, WindowContainerTransaction windowContainerTransaction, boolean z) {
        int i2;
        int i3;
        String str;
        CellStage cellStage = this.mCellStage;
        if (cellStage.mHost != null && cellStage.mIsActive) {
            int stageType = getStageType(cellStage);
            int stageType2 = getStageType(cellStage.mHost);
            if (stageType2 == 0) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            WindowContainerToken stageToken = getStageToken(stageType2);
            WindowContainerToken stageToken2 = getStageToken(stageType);
            WindowContainerToken stageToken3 = getStageToken(i);
            if (stageToken != null && stageToken2 != null && stageToken3 != null) {
                if (z) {
                    i3 = 4;
                } else {
                    i3 = 1;
                }
                if (i == i2) {
                    str = "half_dismiss";
                    windowContainerTransaction.setChangeTransitMode(stageToken2, 1, "half_dismiss");
                    windowContainerTransaction.setChangeTransitMode(stageToken, 1, "half_dismiss");
                } else if (i == stageType) {
                    windowContainerTransaction.setChangeTransitMode(stageToken, i3, "cell_dismiss");
                    str = "cell_dismiss";
                } else {
                    windowContainerTransaction.setChangeTransitMode(stageToken2, i3, "cell_host_dismiss");
                    str = "cell_host_dismiss";
                }
                boolean anyMatch = windowContainerTransaction.getChanges().values().stream().anyMatch(new StageCoordinator$$ExternalSyntheticLambda7());
                if (!anyMatch) {
                    windowContainerTransaction.setChangeTransitMode(stageToken3, 2, str);
                }
                Slog.d("StageCoordinator", "prepareMultiSplitDismissChangeTransition: dismiss=" + SplitScreen.stageTypeToString(i) + ", hasMovingToFreeform=" + anyMatch);
                return;
            }
            Slog.w("StageCoordinator", "prepareMultiSplitDismissChangeTransition: failed, dismissStageToken=" + stageToken3 + ", cellHostStageToken=" + stageToken + ", cellStageToken=" + stageToken2);
            return;
        }
        Slog.w("StageCoordinator", "prepareMultiSplitDismissChangeTransition: failed, invalid cell host");
    }

    public void prepareSplitDismissChangeTransition(WindowContainerTransaction windowContainerTransaction, int i, TransitionRequestInfo transitionRequestInfo, boolean z) {
        StageTaskListener stageTaskListener;
        int i2;
        boolean z2;
        int i3;
        ActivityManager.RunningTaskInfo triggerTask;
        if (CoreRune.MW_MULTI_SPLIT_SHELL_TRANSITION && isMultiSplitActive()) {
            prepareMultiSplitDismissChangeTransition(i, windowContainerTransaction, z);
            return;
        }
        int i4 = 1;
        if (i == 0) {
            stageTaskListener = this.mSideStage;
            i2 = 1;
        } else {
            stageTaskListener = this.mMainStage;
            i2 = 0;
        }
        WindowContainerToken stageToken = getStageToken(i);
        WindowContainerToken stageToken2 = getStageToken(i2);
        if (stageToken != null && stageToken2 != null) {
            if (transitionRequestInfo != null && (triggerTask = transitionRequestInfo.getTriggerTask()) != null && transitionRequestInfo.getType() == 4) {
                windowContainerTransaction.setChangeTransitMode(triggerTask.token, 2, "split_to_close(triggerTask)");
            }
            if (this.mMovingToFreeformTaskToken != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Context context = this.mContext;
            if (!z2) {
                if (CoreRune.MT_NEW_DEX_LAUNCH_POLICY && context.getResources().getConfiguration().isNewDexMode()) {
                    windowContainerTransaction.orderedSetChangeTransitMode(stageToken, 2, "split_to_close");
                } else {
                    windowContainerTransaction.setChangeTransitMode(stageToken, 2, "split_to_close");
                }
            }
            if (z) {
                i3 = 4;
            } else if (z2 && stageTaskListener.hasAppsEdgeActivityOnTop()) {
                windowContainerTransaction.setDisplayIdForChangeTransition(this.mDisplayId, "split_to_freeform(hasAppsEdge)");
                windowContainerTransaction.addChangeTransitFlags(this.mMovingToFreeformTaskToken, 1);
                i3 = 0;
            } else {
                if (stageTaskListener.hasAppsEdgeActivityOnTop()) {
                    i4 = 2;
                }
                i3 = i4;
            }
            if (i3 != 0) {
                if (CoreRune.MT_NEW_DEX_LAUNCH_POLICY && context.getResources().getConfiguration().isNewDexMode()) {
                    windowContainerTransaction.orderedSetChangeTransitMode(stageToken2, i3, "split_to_full");
                } else {
                    windowContainerTransaction.setChangeTransitMode(stageToken2, i3, "split_to_full");
                }
            }
            if (CoreRune.MW_SA_LOGGING) {
                CoreSaLogger.logForAdvanced("2090", "From split dismiss");
            }
            Slog.d("StageCoordinator", "prepareSplitDismissChangeTransition: dismiss=" + SplitScreen.stageTypeToString(i) + ", expand=" + SplitScreen.stageTypeToString(i2) + ", hasMovingToFreeform=" + z2);
            return;
        }
        Slog.w("StageCoordinator", "prepareSplitDismissChangeTransition: failed, dismissStageToken=" + stageToken + ", expandStageToken=" + stageToken2);
    }

    public final void prepareSplitLayout(WindowContainerTransaction windowContainerTransaction, boolean z, float f) {
        boolean z2;
        if (CoreRune.MW_SPLIT_SHELL_TRANSITION && z) {
            if (CoreRune.SAFE_DEBUG) {
                Slog.d("StageCoordinator", "prepareSplitLayout: reset resize anim, " + Debug.getCallers(10));
            }
            z = false;
        }
        if (f != 0.0f) {
            this.mSplitLayout.setDivideRatio(f, true, true);
        } else if (z) {
            SplitLayout splitLayout = this.mSplitLayout;
            if (this.mSideStagePosition == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            splitLayout.setDividerAtBorder(z2);
        } else {
            this.mSplitLayout.resetDividerPosition();
        }
        updateWindowBounds(this.mSplitLayout, windowContainerTransaction, false);
        if (z) {
            windowContainerTransaction.setSmallestScreenWidthDp(this.mMainStage.mRootTaskInfo.token, 0);
        }
        windowContainerTransaction.reorder(this.mRootTaskInfo.token, true);
        setRootForceTranslucent(windowContainerTransaction, false);
        updateStagePositionIfNeeded(windowContainerTransaction);
        if (CoreRune.MW_SPLIT_SHELL_TRANSITION) {
            windowContainerTransaction.setChangeTransitionRequest(1);
        }
    }

    public void prepareSplitMaximizeChangeTransition(WindowContainerTransaction windowContainerTransaction, int i) {
        int i2 = 2;
        int i3 = 0;
        if (CoreRune.MW_MULTI_SPLIT_SHELL_TRANSITION && isMultiSplitActive()) {
            CellStage cellStage = this.mCellStage;
            if (cellStage.mHost != null && cellStage.mIsActive) {
                StageTaskListener stageTaskListenerByStageType = getStageTaskListenerByStageType(i);
                WindowContainerToken stageToken = getStageToken(i);
                if (stageToken == null) {
                    Slog.w("StageCoordinator", "prepareMultiSplitMaximizeChangeTransition: failed, cannot find token");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(getStageToken(0));
                arrayList.add(getStageToken(1));
                arrayList.add(getStageToken(2));
                arrayList.remove(stageToken);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    WindowContainerToken windowContainerToken = (WindowContainerToken) it.next();
                    if (windowContainerToken != null) {
                        windowContainerTransaction.setChangeTransitMode(windowContainerToken, 2, "maximize_multi_split");
                    }
                }
                if (!stageTaskListenerByStageType.hasAppsEdgeActivityOnTop()) {
                    i2 = 1;
                }
                windowContainerTransaction.setChangeTransitMode(stageToken, i2, "maximize_multi_split");
                Slog.d("StageCoordinator", "prepareMultiSplitMaximizeChangeTransition: expand=" + SplitScreen.stageTypeToString(i));
                return;
            }
            Slog.w("StageCoordinator", "prepareMultiSplitMaximizeChangeTransition: failed, invalid cell host");
            return;
        }
        StageTaskListener stageTaskListenerByStageType2 = getStageTaskListenerByStageType(i);
        if (i == 0) {
            i3 = 1;
        }
        WindowContainerToken stageToken2 = getStageToken(i3);
        WindowContainerToken stageToken3 = getStageToken(i);
        if (stageToken2 != null && stageToken3 != null) {
            windowContainerTransaction.setChangeTransitMode(stageToken2, 2, "maximize_split");
            if (!stageTaskListenerByStageType2.hasAppsEdgeActivityOnTop()) {
                i2 = 1;
            }
            windowContainerTransaction.setChangeTransitMode(stageToken3, i2, "maximize_split");
            Slog.d("StageCoordinator", "prepareSplitMaximizeChangeTransition: expand=" + SplitScreen.stageTypeToString(i));
            return;
        }
        Slog.w("StageCoordinator", "prepareSplitMaximizeChangeTransition: failed, dismissStageToken=" + stageToken2 + ", expandStageToken=" + stageToken3);
    }

    public final void reparentCellToMainOrSide(WindowContainerTransaction windowContainerTransaction, StageTaskListener stageTaskListener, boolean z) {
        int i;
        boolean z2;
        CellStage cellStage = this.mCellStage;
        if (!cellStage.mIsActive) {
            return;
        }
        WindowContainerToken windowContainerToken = stageTaskListener.mRootTaskInfo.token;
        if (cellStage.mChildrenTaskInfo.size() != 0) {
            windowContainerTransaction.reparentTasks(cellStage.mRootTaskInfo.token, windowContainerToken, SplitScreenConstants.CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE, SplitScreenConstants.CONTROLLED_ACTIVITY_TYPES, z);
        }
        if (!stageTaskListener.equals(cellStage.mHost)) {
            int i2 = this.mSideStagePosition;
            if (stageTaskListener.mStageType == 1) {
                i = getMainStagePosition();
            } else {
                i = i2;
            }
            int i3 = 0;
            if (isVerticalDivision()) {
                if ((this.mCellStageWindowConfigPosition & 16) != 0) {
                    i3 = 1;
                }
                if ((i == 0 && i3 == 0) || (i == 1 && i3 != 0)) {
                    i2 = SplitScreenUtils.reverseSplitPosition(this.mSideStagePosition);
                }
                i3 = 1;
            } else {
                if ((this.mCellStageWindowConfigPosition & 8) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((i == 0 && !z2) || (i == 1 && z2)) {
                    i2 = SplitScreenUtils.reverseSplitPosition(this.mSideStagePosition);
                }
            }
            if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY) {
                SplitLayout splitLayout = this.mSplitLayout;
                int i4 = splitLayout.mSplitDivision;
                Rect rect = splitLayout.mRootBounds;
                if (i4 == 0) {
                    splitLayout.mDividePosition = (int) (rect.width() * (splitLayout.mCellDividePosition / rect.height()));
                } else {
                    splitLayout.mDividePosition = (int) (rect.height() * (splitLayout.mCellDividePosition / rect.width()));
                }
            }
            setSideStagePosition(i2, i3, windowContainerTransaction, true);
        }
        cellStage.mToSplit = true;
        prepareExitMultiSplitScreen(windowContainerTransaction, z);
    }

    public final Bundle resolveStartCellStage(int i, int i2, Bundle bundle, WindowContainerTransaction windowContainerTransaction) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        int i3 = 1;
        CellStage cellStage = this.mCellStage;
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        if (i2 == 0) {
                            i2 = StageUtils.getMultiSplitLaunchPosition(0, isVerticalDivision());
                        }
                        setCellStageWindowConfigPosition(i2, false);
                        if (windowContainerTransaction != null) {
                            this.mSplitLayout.updateCellStageWindowConfigPosition(this.mCellStageWindowConfigPosition);
                            updateWindowBounds(this.mSplitLayout, windowContainerTransaction, false);
                            updateStagePositionIfNeeded(windowContainerTransaction);
                        }
                        addActivityOptions(bundle, cellStage);
                    } else {
                        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unknown stage=", i));
                    }
                } else {
                    addActivityOptions(bundle, this.mSideStage);
                }
            } else {
                addActivityOptions(bundle, this.mMainStage);
            }
        } else if (i2 != 0 && cellStage.mIsActive) {
            if (getMainStageWinConfigPosition() == i2) {
                i3 = 0;
            } else if (getSideStageWinConfigPosition() != i2) {
                if (this.mCellStageWindowConfigPosition == i2) {
                    i3 = 2;
                } else {
                    i3 = -1;
                }
            }
            if (i3 != -1) {
                resolveStartCellStage(i3, i2, bundle, windowContainerTransaction);
            } else {
                Slog.w("StageCoordinator", "No stage type nor split position specified to resolve start stage");
            }
        } else {
            resolveStartCellStage(2, i2, bundle, windowContainerTransaction);
        }
        return bundle;
    }

    public final Bundle resolveStartStage(int i, int i2, Bundle bundle, WindowContainerTransaction windowContainerTransaction) {
        return resolveStartStage(i, i2, bundle, windowContainerTransaction, -1);
    }

    public final boolean rotateMultiSplitWithTransition() {
        WindowContainerToken windowContainerToken;
        if (isSplitScreenVisible()) {
            MainStage mainStage = this.mMainStage;
            if (mainStage.mRootTaskInfo != null) {
                SideStage sideStage = this.mSideStage;
                if (sideStage.mRootTaskInfo != null) {
                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                    MultiSplitLayoutInfo multiSplitLayoutInfo = new MultiSplitLayoutInfo();
                    WindowContainerToken windowContainerToken2 = mainStage.mRootTaskInfo.token;
                    WindowContainerToken windowContainerToken3 = sideStage.mRootTaskInfo.token;
                    ActivityManager.RunningTaskInfo runningTaskInfo = this.mCellStage.mRootTaskInfo;
                    if (runningTaskInfo != null) {
                        windowContainerToken = runningTaskInfo.token;
                    } else {
                        windowContainerToken = null;
                    }
                    multiSplitLayoutInfo.sideStagePosition = this.mSideStagePosition;
                    multiSplitLayoutInfo.splitDivision = getSplitDivision();
                    multiSplitLayoutInfo.cellStagePosition = this.mCellStageWindowConfigPosition;
                    rotateMultiSplitClockwise(multiSplitLayoutInfo);
                    this.mSplitLayout.setDivideRatio(0.5f, true, true);
                    windowContainerTransaction.setChangeTransitMode(windowContainerToken2, 1, "rotate_split");
                    windowContainerTransaction.setChangeTransitMode(windowContainerToken3, 1, "rotate_split");
                    if (isMultiSplitScreenVisible() && windowContainerToken != null) {
                        windowContainerTransaction.setChangeTransitMode(windowContainerToken, 1, "rotate_split");
                    }
                    updateMultiSplitLayout(multiSplitLayoutInfo, true, windowContainerTransaction);
                    return true;
                }
            }
        }
        Slog.w("StageCoordinator", "rotateMultiSplitWithTransition: failed, split isn't activated");
        return false;
    }

    public final void sendOnBoundsChanged() {
        if (this.mSplitLayout == null) {
            return;
        }
        ArrayList arrayList = (ArrayList) this.mListeners;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size >= 0) {
                SplitScreen.SplitScreenListener splitScreenListener = (SplitScreen.SplitScreenListener) arrayList.get(size);
                SplitLayout splitLayout = this.mSplitLayout;
                splitLayout.getClass();
                splitScreenListener.onSplitBoundsChanged(new Rect(splitLayout.mRootBounds), getMainStageBounds(), getSideStageBounds());
            } else {
                return;
            }
        }
    }

    public final void sendPairLoggingLocked() {
        String str;
        ArrayList arrayList = this.mLastPackageNameList;
        ArrayList arrayList2 = this.mCurrentPackageNameList;
        if (!arrayList.equals(arrayList2)) {
            CoreSaLogger.logForAdvanced("1004", arrayList2.toString());
        }
        if (arrayList.size() != arrayList2.size() || !arrayList.containsAll(arrayList2) || !arrayList2.containsAll(arrayList)) {
            if (arrayList2.size() == 3) {
                str = "1045";
            } else {
                str = "1044";
            }
            CoreSaLogger.logForAdvanced(str);
        }
    }

    public final void sendSplitDirectionSaLogging() {
        String str;
        String str2;
        if (!this.mDividerVisible) {
            return;
        }
        if (isVerticalDivision()) {
            str = "Vertical split";
        } else {
            str = "Horizontal split";
        }
        boolean z = true;
        if (this.mContext.getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        if (z) {
            str2 = "Vertical device";
        } else {
            str2 = "Horizontal device";
        }
        CoreSaLogger.logForAdvanced("1025", str + " + " + str2);
    }

    public final void sendStatusToListener(SplitScreen.SplitScreenListener splitScreenListener) {
        splitScreenListener.onStagePositionChanged(0, getMainStagePosition());
        splitScreenListener.onStagePositionChanged(1, this.mSideStagePosition);
        splitScreenListener.onSplitVisibilityChanged(isSplitScreenVisible());
        SplitLayout splitLayout = this.mSplitLayout;
        if (splitLayout != null) {
            splitScreenListener.onSplitBoundsChanged(new Rect(splitLayout.mRootBounds), getMainStageBounds(), getSideStageBounds());
        }
        this.mSideStage.onSplitScreenListenerRegistered(splitScreenListener, 1);
        this.mMainStage.onSplitScreenListenerRegistered(splitScreenListener, 0);
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            this.mCellStage.onSplitScreenListenerRegistered(splitScreenListener, 2);
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void setAnimScaleSetting(float f) {
        SplitScreenTransitions splitScreenTransitions = this.mSplitTransitions;
        if (splitScreenTransitions.mDurationScale != f) {
            Log.d("SplitScreenTransitions", "setAnimScaleSetting: " + splitScreenTransitions.mDurationScale + "->" + f);
            splitScreenTransitions.mDurationScale = f;
        }
    }

    public final void setCellDividerVisibility(SurfaceControl.Transaction transaction, boolean z) {
        if (!CoreRune.MW_MULTI_SPLIT_CELL_DIVIDER || z == this.mCellDividerVisible) {
            return;
        }
        this.mCellDividerVisible = z;
        applyCellDividerVisibility(transaction);
    }

    public final void setCellSplitVisible(boolean z) {
        StageListenerImpl stageListenerImpl = this.mCellStageListener;
        stageListenerImpl.mVisible = z;
        stageListenerImpl.mHasChildren = z;
    }

    public final void setCellStageWindowConfigPosition(int i, boolean z) {
        if (this.mCellStageWindowConfigPosition == i && !z) {
            return;
        }
        this.mCellStageWindowConfigPosition = i;
        boolean isVerticalDivision = isVerticalDivision();
        int i2 = this.mSideStagePosition;
        StageTaskListener stageTaskListener = this.mSideStage;
        StageTaskListener stageTaskListener2 = this.mMainStage;
        if (i2 != 0 ? (!isVerticalDivision || (i & 32) == 0) && (isVerticalDivision || (i & 64) == 0) : (!isVerticalDivision || (i & 8) == 0) && (isVerticalDivision || (i & 16) == 0)) {
            stageTaskListener = stageTaskListener2;
        }
        this.mCellStage.mHost = stageTaskListener;
    }

    public final void setDividerSizeIfNeeded(boolean z) {
        SplitLayout splitLayout = this.mSplitLayout;
        splitLayout.updateDividerConfig(splitLayout.mContext);
        splitLayout.updateBounds(splitLayout.mDividePosition);
        if (z) {
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.setDisplayIdForChangeTransition(splitLayout.mContext.getDisplayId(), "update_flex_panel");
            ((StageCoordinator) splitLayout.mSplitLayoutHandler).onLayoutSizeChanged(splitLayout, windowContainerTransaction);
        }
    }

    public final void setDividerVisibility(boolean z, SurfaceControl.Transaction transaction) {
        String str;
        if (z != this.mDividerVisible) {
            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                if (z) {
                    str = "show";
                } else {
                    str = "hide";
                }
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, -632717827, 0, "Request to %s divider bar from %s.", str, String.valueOf(Debug.getCaller()));
            }
            if (z && this.mKeyguardShowing) {
                if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                    ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 1375648146, 0, "   Defer showing divider bar due to keyguard showing.", null);
                    return;
                }
                return;
            }
            this.mDividerVisible = z;
            ArrayList arrayList = (ArrayList) this.mListeners;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((SplitScreen.SplitScreenListener) arrayList.get(size)).onSplitVisibilityChanged(this.mDividerVisible);
                }
            }
            sendOnBoundsChanged();
            SplitWindowManager splitWindowManager = this.mSplitLayout.mSplitWindowManager;
            boolean z2 = this.mDividerVisible;
            splitWindowManager.mDividerVisible = z2;
            if (!z2) {
                DividerView dividerView = splitWindowManager.mDividerView;
                if (dividerView != null && splitWindowManager.mIsPendingFirstAutoOpenDividerPanel) {
                    dividerView.removeCallbacks(splitWindowManager.mDividerPanelAutoOpen);
                    splitWindowManager.mIsPendingFirstAutoOpenDividerPanel = false;
                    Slog.d("SplitWindowManager", "removeCallbacks() DividerPanel first auto open / mIsFirstAutoOpenDividerPanel: " + splitWindowManager.mIsFirstAutoOpenDividerPanel);
                }
                splitWindowManager.mDividerPanel.removeDividerPanel();
                AlertDialog alertDialog = splitWindowManager.mDividerPanel.mAddToAppPairDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
            }
            if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION_SA_LOGGING) {
                sendSplitDirectionSaLogging();
            }
            if (this.mIsDividerRemoteAnimating) {
                if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                    ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, -1118138034, 0, "   Skip animating divider bar due to it's remote animating.", null);
                    return;
                }
                return;
            }
            applyDividerVisibility(transaction);
        }
    }

    public final void setLayoutOffsetTargetFromIme(int i, SplitLayout splitLayout) {
        StageTaskListener stageTaskListener;
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        if (CoreRune.MW_MULTI_SPLIT_ADJUST_FOR_IME && isMultiSplitActive()) {
            splitLayout.applyLayoutOffsetTargetForMultiSplit(windowContainerTransaction, i, getBottomStages());
        } else {
            if (this.mSideStagePosition == 0) {
                stageTaskListener = this.mMainStage;
            } else {
                stageTaskListener = this.mSideStage;
            }
            ActivityManager.RunningTaskInfo runningTaskInfo = stageTaskListener.mRootTaskInfo;
            Rect rect = splitLayout.mBounds2;
            if (i == 0) {
                windowContainerTransaction.setBounds(runningTaskInfo.token, rect);
                windowContainerTransaction.setScreenSizeDp(runningTaskInfo.token, 0, 0);
            } else {
                Rect rect2 = splitLayout.mTempRect;
                rect2.set(rect);
                rect2.offset(0, i);
                windowContainerTransaction.setBounds(runningTaskInfo.token, rect2);
                if (!runningTaskInfo.configuration.windowConfiguration.getBounds().equals(rect)) {
                    splitLayout.getDisplayLayout(splitLayout.mContext).getStableBounds(rect2, false);
                    rect2.intersectUnchecked(rect);
                    windowContainerTransaction.setScreenSizeDp(runningTaskInfo.token, (int) ((rect2.width() / splitLayout.getDisplayLayout(splitLayout.mContext).density()) + 0.5f), (int) ((rect2.height() / splitLayout.getDisplayLayout(splitLayout.mContext).density()) + 0.5f));
                } else {
                    WindowContainerToken windowContainerToken = runningTaskInfo.token;
                    Configuration configuration = runningTaskInfo.configuration;
                    windowContainerTransaction.setScreenSizeDp(windowContainerToken, configuration.screenWidthDp, configuration.screenHeightDp);
                }
            }
        }
        this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
    }

    public final void setRootForceTranslucent(WindowContainerTransaction windowContainerTransaction, boolean z) {
        if (this.mIsRootTranslucent == z) {
            return;
        }
        this.mIsRootTranslucent = z;
        windowContainerTransaction.setForceTranslucent(this.mRootTaskInfo.token, z);
    }

    public final void setSideStagePosition(WindowContainerTransaction windowContainerTransaction, int i) {
        setSideStagePosition(i, -1, windowContainerTransaction, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v7 */
    public final void setSideStagePositionByAdjacentTask(ActivityManager.RunningTaskInfo runningTaskInfo, WindowContainerTransaction windowContainerTransaction) {
        ?? r4;
        Intent intent = runningTaskInfo.baseIntent;
        if (intent != null && (intent.getFlags() & 4096) != 0) {
            this.mSplitLayout.mSplitWindowManager.getClass();
            windowContainerTransaction.setChangeStagePosition(true);
            if (this.mSplitLayoutChangedForLaunchAdjacent) {
                this.mSplitLayoutChangedForLaunchAdjacent = false;
                return;
            }
            if (CoreRune.MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS && isVideoControlsTaskInfo(runningTaskInfo)) {
                r4 = 1;
            } else {
                r4 = 0;
            }
            this.mWillBeVideoControls = r4;
            if (CoreRune.MW_MULTI_SPLIT_LAUNCH_ADJACENT) {
                setSideStagePosition(1, r4, windowContainerTransaction, true);
            } else if (r4 != 0 || this.mSideStagePosition == 0) {
                setSideStagePosition(windowContainerTransaction, 1);
            }
            if (r4 == 0) {
                return;
            }
            this.mWillBeVideoControls = r4;
            if (r4 != 0) {
                updateVideoControlsState(true, null, false);
            }
            if (!this.mMainStage.mIsActive) {
                this.mSkipFlexPanelUpdate = true;
                return;
            }
            return;
        }
        this.mSplitLayout.mSplitWindowManager.getClass();
    }

    public final MultiSplitLayoutInfo setSplitCreateMode(int i, boolean z) {
        boolean z2;
        if (i != 2 && i != 3 && i != 4 && i != 5) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z2) {
            return null;
        }
        MultiSplitLayoutInfo multiSplitLayoutInfo = new MultiSplitLayoutInfo();
        multiSplitLayoutInfo.sideStagePosition = this.mSideStagePosition;
        multiSplitLayoutInfo.splitDivision = getSplitDivision();
        multiSplitLayoutInfo.cellStagePosition = this.mCellStageWindowConfigPosition;
        if (i == convertCreateMode(multiSplitLayoutInfo)) {
            return null;
        }
        do {
        } while (i != rotateMultiSplitClockwise(multiSplitLayoutInfo));
        updateMultiSplitLayout(multiSplitLayoutInfo, z, null);
        return multiSplitLayoutInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean setSplitDivision(int i, boolean z) {
        byte b;
        int i2;
        ValueAnimator valueAnimator;
        if (i == -1) {
            return false;
        }
        if (z) {
            i = !isLandscape() ? 1 : 0;
        } else if (CoreRune.MW_MULTI_SPLIT_ENSURE_APP_SIZE) {
            SplitLayout splitLayout = this.mSplitLayout;
            if (splitLayout.mSplitScreenFeasibleMode == 1) {
                b = true;
            } else {
                b = false;
            }
            if (b != false && i != (i2 = splitLayout.mPossibleSplitDivision)) {
                Slog.d("StageCoordinator", "split division not feasible, so change: " + i2);
                i = i2;
            }
        }
        if (this.mSplitDivision == i) {
            return false;
        }
        if (CoreRune.SAFE_DEBUG || CoreRune.IS_DEBUG_LEVEL_MID) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("setSplitDivision: nextSplitDivision=", i, "   Caller=");
            m.append(Debug.getCallers(5));
            Slog.d("StageCoordinator", m.toString());
        }
        if (CoreRune.MW_SPLIT_SHELL_TRANSITION && (valueAnimator = this.mSplitTransitions.mDividerFadeAnimation) != null) {
            valueAnimator.cancel();
        }
        int i3 = this.mSplitDivision;
        this.mSplitDivision = i;
        SplitLayout splitLayout2 = this.mSplitLayout;
        if (splitLayout2.mSplitDivision != i) {
            splitLayout2.mSplitDivision = i;
            splitLayout2.updateSnapAlgorithm(i3);
        }
        this.mSplitLayout.update(null);
        if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION_SA_LOGGING) {
            sendSplitDirectionSaLogging();
        }
        return true;
    }

    public final void setSplitsVisible(boolean z, boolean z2) {
        boolean z3;
        String str;
        StageListenerImpl stageListenerImpl = this.mSideStageListener;
        stageListenerImpl.mVisible = z;
        StageListenerImpl stageListenerImpl2 = this.mMainStageListener;
        stageListenerImpl2.mVisible = z;
        stageListenerImpl.mHasChildren = z;
        stageListenerImpl2.mHasChildren = z;
        if (this.mDividerLeashHidden && z) {
            updateDividerLeashVisible(true);
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            boolean isMultiSplitActive = isMultiSplitActive();
            StageListenerImpl stageListenerImpl3 = this.mCellStageListener;
            if (isMultiSplitActive && z) {
                stageListenerImpl3.mVisible = true;
                stageListenerImpl3.mHasChildren = true;
            } else {
                stageListenerImpl3.mVisible = false;
                stageListenerImpl3.mHasChildren = false;
            }
        }
        boolean z4 = CoreRune.MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS;
        SplitBackgroundController splitBackgroundController = this.mSplitBackgroundController;
        if (z4 && !this.mSkipFlexPanelUpdate) {
            if (z && !this.mIsFlexPanelMode && !this.mIsVideoControls && this.mSplitLayout.mDividerSize == 0) {
                setDividerSizeIfNeeded(true);
            } else if (!z && ((z3 = this.mIsFlexPanelMode) || this.mIsVideoControls)) {
                if (z3) {
                    str = "flex_panel_finish";
                } else {
                    str = "video_controls_finish";
                }
                if (z3) {
                    if (z3) {
                        this.mIsFlexPanelMode = false;
                        if (CoreRune.MW_MULTI_SPLIT_ROUNDED_CORNER) {
                            updateCornerRadiusForStages(null);
                        }
                    }
                } else {
                    setVideoControlsMode(null, false);
                }
                splitBackgroundController.updateBackgroundVisibility(false, false);
                if (this.mMainStage.getChildCount() == 0) {
                    Log.d("StageCoordinator", "When pip is entered in Split, there is no need to evict side children.");
                } else if (!z2) {
                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                    windowContainerTransaction.setDisplayIdForChangeTransition(this.mDisplayId, str);
                    this.mSideStage.evictAllChildren(windowContainerTransaction, false);
                    this.mSyncQueue.queue(windowContainerTransaction);
                }
            }
        }
        splitBackgroundController.mIsDividerVisible = z;
        if (splitBackgroundController.canShow()) {
            splitBackgroundController.updateBackgroundVisibility(true, false);
        } else {
            splitBackgroundController.updateBackgroundVisibility(false, true);
        }
    }

    public final void setVideoControlsMode(SurfaceControl.Transaction transaction, boolean z) {
        if (this.mIsVideoControls != z) {
            this.mIsVideoControls = z;
            if (CoreRune.MW_MULTI_SPLIT_ROUNDED_CORNER) {
                updateCornerRadiusForStages(transaction);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:153:0x02b7, code lost:
    
        if (r2.taskId == r11.taskId) goto L157;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03f9 A[EDGE_INSN: B:213:0x03f9->B:214:0x03f9 BREAK  A[LOOP:1: B:31:0x007e->B:42:0x03e9], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x069e  */
    /* JADX WARN: Type inference failed for: r12v1, types: [com.android.wm.shell.splitscreen.SideStage, com.android.wm.shell.splitscreen.StageTaskListener] */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.android.wm.shell.transition.Transitions$TransitionHandler, com.android.wm.shell.splitscreen.StageCoordinator] */
    /* JADX WARN: Type inference failed for: r7v2, types: [com.android.wm.shell.splitscreen.CellStage, com.android.wm.shell.splitscreen.StageTaskListener] */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean startAnimation(android.os.IBinder r23, android.window.TransitionInfo r24, android.view.SurfaceControl.Transaction r25, android.view.SurfaceControl.Transaction r26, com.android.wm.shell.transition.Transitions.TransitionFinishCallback r27) {
        /*
            Method dump skipped, instructions count: 1702
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c2, code lost:
    
        if (r11 == false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startIntent(android.app.PendingIntent r16, android.content.Intent r17, int r18, android.os.Bundle r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.startIntent(android.app.PendingIntent, android.content.Intent, int, android.os.Bundle, int, int):void");
    }

    public final void startIntentToCell(PendingIntent pendingIntent, Intent intent, Intent intent2, UserHandle userHandle, int i, Bundle bundle) {
        PendingIntent activityAsUser;
        if (userHandle == null) {
            userHandle = UserHandle.CURRENT;
        }
        if (pendingIntent != null) {
            activityAsUser = pendingIntent;
        } else {
            activityAsUser = PendingIntent.getActivityAsUser(this.mContext, 0, intent, 1107296256, null, userHandle);
        }
        if (MultiWindowManager.getInstance().isVisibleTaskInDexDisplay(activityAsUser)) {
            StageLaunchOptions makeStartIntentOpts = StageLaunchOptions.makeStartIntentOpts(activityAsUser.getIntent(), userHandle, this.mSideStagePosition, this.mSplitDivision, i);
            makeStartIntentOpts.mPendingIntent = pendingIntent;
            sendMessageProxyService(makeStartIntentOpts, 3);
            Slog.d("StageCoordinator", "pending split screen by start intent to cell");
            return;
        }
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        windowContainerTransaction.sendPendingIntent(activityAsUser, intent2, resolveStartCellStage(-1, i, bundle, windowContainerTransaction));
        if (CoreRune.MW_SPLIT_STACKING && isMultiSplitScreenVisible()) {
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
            return;
        }
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY && !isMultiSplitScreenVisible()) {
            this.mSplitLayout.setCellDividerRatio(0.5f, i, true, false);
        }
        prepareEnterMultiSplitScreen(i, windowContainerTransaction);
        if (CoreRune.MW_MULTI_SPLIT_SHELL_TRANSITION) {
            applyCellHostResizeTransition(windowContainerTransaction);
        }
        this.mSplitTransitions.startEnterTransition(windowContainerTransaction, null, this, 1100, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:205:0x0861, code lost:
    
        if (r11.mPendingDismiss.mReason == 4) goto L383;
     */
    /* JADX WARN: Removed duplicated region for block: B:314:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x01ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x052f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0530  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean startPendingAnimation(android.os.IBinder r32, android.window.TransitionInfo r33, android.view.SurfaceControl.Transaction r34, android.view.SurfaceControl.Transaction r35, com.android.wm.shell.transition.Transitions.TransitionFinishCallback r36) {
        /*
            Method dump skipped, instructions count: 2620
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.startPendingAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):boolean");
    }

    public final void startSplitScreen(int i, PendingIntent pendingIntent, Intent intent, Intent intent2, Intent intent3, UserHandle userHandle, UserHandle userHandle2, UserHandle userHandle3, int i2, int i3, float f, float f2, int i4, int i5, WindowContainerTransaction windowContainerTransaction, RemoteTransition remoteTransition) {
        PendingIntent pendingIntent2;
        PendingIntent pendingIntent3;
        PendingIntent pendingIntent4;
        WindowContainerTransaction windowContainerTransaction2;
        Intent intent4;
        PendingIntent pendingIntent5;
        PendingIntent pendingIntent6;
        RemoteTransition remoteTransition2;
        int i6;
        boolean z;
        int i7;
        PendingIntent pendingIntent7;
        int i8;
        int i9 = i2;
        if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY) {
            this.mTopStageAfterFoldDismiss = -1;
        }
        RemoteTransition remoteTransition3 = null;
        if (pendingIntent != null) {
            pendingIntent2 = pendingIntent;
        } else if (intent != null) {
            pendingIntent2 = PendingIntent.getActivityAsUser(this.mContext, 0, intent, 167772160, null, userHandle);
        } else {
            pendingIntent2 = null;
        }
        PendingIntent pendingIntent8 = pendingIntent2;
        PendingIntent activityAsUser = PendingIntent.getActivityAsUser(this.mContext, 0, intent2, 167772160, null, userHandle2);
        if (intent3 != null) {
            pendingIntent3 = activityAsUser;
            pendingIntent4 = PendingIntent.getActivityAsUser(this.mContext, 0, intent3, 167772160, null, userHandle3);
        } else {
            pendingIntent3 = activityAsUser;
            pendingIntent4 = null;
        }
        if (pendingIntent3 != null && (i != -1 || pendingIntent8 != null)) {
            if (i != -1 && MultiWindowManager.getInstance().isVisibleTaskByTaskIdInDexDisplay(i)) {
                sendMessageProxyService(StageLaunchOptions.makeStartTaskAndIntentOpts(i, intent2, i9, i5), 2);
                Slog.d("StageCoordinator", "pending split screen by recent drag and drop");
                return;
            }
            if (pendingIntent != null && MultiWindowManager.getInstance().isVisibleTaskInDexDisplay(pendingIntent8)) {
                StageLaunchOptions makeStartIntentsOpts = StageLaunchOptions.makeStartIntentsOpts(pendingIntent.getIntent(), intent2, pendingIntent.getCreatorUserHandle(), userHandle2, i2, f, i5);
                makeStartIntentsOpts.mPendingIntent = pendingIntent;
                sendMessageProxyService(makeStartIntentsOpts, 1);
                Slog.d("StageCoordinator", "pending split screen by appsEdge drag and drop");
                return;
            }
            if (windowContainerTransaction != null) {
                windowContainerTransaction2 = windowContainerTransaction;
            } else {
                windowContainerTransaction2 = new WindowContainerTransaction();
            }
            int i10 = this.mDisplayId;
            SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
            SideStage sideStage = this.mSideStage;
            PendingIntent pendingIntent9 = pendingIntent3;
            CellStage cellStage = this.mCellStage;
            MainStage mainStage = this.mMainStage;
            PendingIntent pendingIntent10 = pendingIntent4;
            if (i4 == 1 && mainStage.mIsActive) {
                if (isSplitScreenVisible() && remoteTransition != null) {
                    remoteTransition2 = null;
                } else {
                    remoteTransition2 = remoteTransition;
                }
                this.mPausingTasks.clear();
                WindowContainerTransaction windowContainerTransaction3 = new WindowContainerTransaction();
                if (!isSameIntentRequested(mainStage.getTopRunningTaskInfo(), intent, userHandle)) {
                    mainStage.evictAllChildren(windowContainerTransaction3, false);
                }
                if (!isSameIntentRequested(sideStage.getTopRunningTaskInfo(), intent2, userHandle2)) {
                    sideStage.evictAllChildren(windowContainerTransaction3, false);
                }
                if (CoreRune.MW_MULTI_SPLIT_APP_PAIR && cellStage.mIsActive) {
                    intent4 = intent3;
                    pendingIntent5 = pendingIntent9;
                    pendingIntent6 = pendingIntent8;
                    if (!isSameIntentRequested(cellStage.getTopRunningTaskInfo(), intent4, userHandle3)) {
                        cellStage.evictAllChildren(windowContainerTransaction3, false);
                    }
                } else {
                    intent4 = intent3;
                    pendingIntent5 = pendingIntent9;
                    pendingIntent6 = pendingIntent8;
                }
                if (!windowContainerTransaction3.isEmpty()) {
                    if (remoteTransition2 == null) {
                        windowContainerTransaction3.setDisplayIdForChangeTransition(i10, "evict_all_children");
                    }
                    syncTransactionQueue.queue(windowContainerTransaction3);
                }
            } else {
                intent4 = intent3;
                pendingIntent5 = pendingIntent9;
                pendingIntent6 = pendingIntent8;
                remoteTransition2 = remoteTransition;
            }
            if (CoreRune.MW_MULTI_SPLIT_APP_PAIR && intent4 != null) {
                cellStage.mIsActive = true;
                MultiSplitLayoutInfo multiSplitLayoutInfo = new MultiSplitLayoutInfo();
                multiSplitLayoutInfo.sideStagePosition = i9;
                multiSplitLayoutInfo.splitDivision = i5;
                multiSplitLayoutInfo.cellStagePosition = i3;
                updateMultiSplitLayout(multiSplitLayoutInfo, false, windowContainerTransaction2);
                i6 = i3;
                z = false;
            } else {
                i6 = i3;
                if (i9 != 0 && i9 != 1) {
                    int i11 = this.mSideStagePosition;
                    if (i11 == -1) {
                        z = false;
                        i9 = 1;
                        setSideStagePosition(i9, i5, windowContainerTransaction2, z);
                    } else {
                        i9 = i11;
                    }
                }
                z = false;
                setSideStagePosition(i9, i5, windowContainerTransaction2, z);
            }
            windowContainerTransaction2.setTransactionType(i4);
            this.mLastTransactionType = i4;
            setRootForceTranslucent(windowContainerTransaction2, z);
            boolean z2 = mainStage.mIsActive;
            if (!z2) {
                mainStage.activate(windowContainerTransaction2, z);
                this.mSplitLayout.resetDividerPosition();
            }
            this.mSplitLayout.setDivideRatio(f, true, true);
            if (CoreRune.MW_MULTI_SPLIT_APP_PAIR && intent4 != null) {
                i7 = i10;
                this.mSplitLayout.setCellDividerRatio(f2, i6, true, false);
                updateWindowBounds(this.mSplitLayout, windowContainerTransaction2, true);
            } else {
                i7 = i10;
                updateWindowBounds(this.mSplitLayout, windowContainerTransaction2, false);
            }
            windowContainerTransaction2.reorder(this.mRootTaskInfo.token, true);
            updateStagePositionIfNeeded(windowContainerTransaction2);
            Bundle bundle = new Bundle();
            Bundle bundle2 = new Bundle();
            addActivityOptions(bundle, mainStage);
            addActivityOptions(bundle2, sideStage);
            if (i == -1) {
                windowContainerTransaction2.sendPendingIntent(pendingIntent6, intent, bundle);
            } else {
                if (i4 == 2 && z2 && sideStage.hasChild()) {
                    bundle.putBoolean("android.activity.splitTaskDeferResume", true);
                }
                windowContainerTransaction2.startTask(i, bundle);
            }
            windowContainerTransaction2.sendPendingIntent(pendingIntent5, intent2, bundle2);
            if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
                if (pendingIntent10 != null) {
                    Bundle bundle3 = new Bundle();
                    addActivityOptions(bundle3, cellStage);
                    pendingIntent7 = pendingIntent10;
                    windowContainerTransaction2.sendPendingIntent(pendingIntent7, intent4, bundle3);
                } else {
                    pendingIntent7 = pendingIntent10;
                    if (isMultiSplitActive()) {
                        prepareExitMultiSplitScreen(windowContainerTransaction2, false);
                    }
                }
            } else {
                pendingIntent7 = pendingIntent10;
            }
            if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                if (i4 == 1) {
                    this.mAppPairStarted = true;
                    if (remoteTransition2 != null) {
                        for (ActivityManager.RunningTaskInfo runningTaskInfo : MultiWindowManager.getInstance().getVisibleTasks()) {
                            if (!isVisibleTask(runningTaskInfo, intent, userHandle)) {
                                Intent intent5 = intent4;
                                if (!isVisibleTask(runningTaskInfo, intent2, userHandle2) && (!CoreRune.MW_MULTI_SPLIT_APP_PAIR || !isVisibleTask(runningTaskInfo, intent5, userHandle3))) {
                                    intent4 = intent5;
                                }
                            }
                            Slog.d("StageCoordinator", "startSplitScreen: If there is already a visible task, delete the remote transition because the animation does not look normal. task=" + runningTaskInfo);
                        }
                    }
                    remoteTransition3 = remoteTransition2;
                    if (remoteTransition3 == null) {
                        windowContainerTransaction2.setDisplayIdForChangeTransition(i7, "app_pair");
                    }
                } else {
                    remoteTransition3 = remoteTransition2;
                }
                if (pendingIntent7 != null) {
                    i8 = VolteConstants.ErrorCode.CALL_SESSION_ABORT;
                } else {
                    i8 = VolteConstants.ErrorCode.CLIENT_ERROR_NOT_ALLOWED_URI;
                }
                this.mSplitTransitions.startEnterTransition(windowContainerTransaction2, remoteTransition3, this, i8, false);
                return;
            }
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction2);
            syncTransactionQueue.runInSync(new StageCoordinator$$ExternalSyntheticLambda0(this, 1));
            return;
        }
        Slog.w("StageCoordinator", "startSplitScreen param is wrong. taskId:" + i + ",mainIntent:" + intent + ",sideIntent:" + intent2);
    }

    public final void startSplitTasks(int i, int i2, int i3, boolean z, int i4, float f, float f2) {
        int i5;
        boolean z2;
        if (checkNonResizableTaskAndStartTask(i, i2, i3)) {
            return;
        }
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        if (CoreRune.MW_MULTI_SPLIT_RECENT_TASKS && isMultiSplitActive() && i3 == -1) {
            prepareExitMultiSplitScreen(windowContainerTransaction, false);
        }
        windowContainerTransaction.setTransactionType(3);
        this.mLastTransactionType = 3;
        windowContainerTransaction.setDisplayIdForChangeTransition(this.mDisplayId, "split_tasks");
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = new Bundle();
        MainStage mainStage = this.mMainStage;
        if (!mainStage.mIsActive) {
            mainStage.activate(windowContainerTransaction, false);
        } else {
            bundle.putBoolean("android.activity.splitTaskDeferResume", true);
            bundle2.putBoolean("android.activity.splitTaskDeferResume", true);
            if (CoreRune.MW_MULTI_SPLIT_RECENT_TASKS && i3 != -1) {
                bundle3.putBoolean("android.activity.splitTaskDeferResume", true);
            }
        }
        addActivityOptions(bundle, mainStage);
        addActivityOptions(bundle2, this.mSideStage);
        windowContainerTransaction.startTask(i, bundle);
        windowContainerTransaction.startTask(i2, bundle2);
        if (CoreRune.MW_MULTI_SPLIT_RECENT_TASKS && i3 != -1) {
            CellStage cellStage = this.mCellStage;
            cellStage.mIsActive = true;
            addActivityOptions(bundle3, cellStage);
            windowContainerTransaction.startTask(i3, bundle3);
        }
        if (CoreRune.MW_MULTI_SPLIT_RECENT_TASKS && i3 != -1) {
            MultiSplitLayoutInfo multiSplitLayoutInfo = new MultiSplitLayoutInfo();
            multiSplitLayoutInfo.sideStagePosition = 1;
            multiSplitLayoutInfo.splitDivision = z ? 1 : 0;
            multiSplitLayoutInfo.cellStagePosition = i4;
            updateMultiSplitLayout(multiSplitLayoutInfo, false, windowContainerTransaction);
        } else {
            setSideStagePosition(1, z ? 1 : 0, windowContainerTransaction, false);
        }
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY) {
            this.mSplitLayout.setDivideRatio(f, true, false);
        } else {
            this.mSplitLayout.setDivideRatio(f, false, false);
        }
        if (i3 != -1) {
            if ((z && (i4 & 32) != 0) || (!z && (i4 & 64) != 0)) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.mSplitLayout.setCellDividerRatio(f2, i4, false, z2);
        }
        updateWindowBounds(this.mSplitLayout, windowContainerTransaction, false);
        windowContainerTransaction.reorder(this.mRootTaskInfo.token, true);
        updateStagePositionIfNeeded(windowContainerTransaction);
        setRootForceTranslucent(windowContainerTransaction, false);
        if (CoreRune.MW_MULTI_SPLIT_RECENT_TASKS && i3 != -1) {
            i5 = VolteConstants.ErrorCode.CALL_SESSION_ABORT;
        } else {
            i5 = VolteConstants.ErrorCode.CLIENT_ERROR_NOT_ALLOWED_URI;
        }
        this.mSplitTransitions.startEnterTransition(windowContainerTransaction, null, this, i5, false);
    }

    public final void startTaskAndIntent(int i, Intent intent, int i2, int i3, WindowContainerTransaction windowContainerTransaction) {
        startSplitScreen(i, null, null, intent, null, null, UserHandle.CURRENT, null, i2, 0, 0.5f, 0.0f, 2, i3, windowContainerTransaction, null);
    }

    public final void startTaskWithAllApps(int i, SplitScreenController.CallerInfo callerInfo, int i2) {
        int i3;
        try {
            for (ActivityManager.RecentTaskInfo recentTaskInfo : ActivityTaskManager.getInstance().getRecentTasks(Integer.MAX_VALUE, 3, -2)) {
                if (recentTaskInfo.taskId == i) {
                    break;
                }
            }
        } catch (Exception unused) {
        }
        recentTaskInfo = null;
        if (recentTaskInfo == null) {
            Slog.e("StageCoordinator", "task not found");
            return;
        }
        Slog.e("StageCoordinator", "startTaskWithAllApps from uid:" + callerInfo.mUid);
        ComponentName component = recentTaskInfo.baseIntent.getComponent();
        int i4 = recentTaskInfo.userId;
        if (isLandscape() && this.mSplitLayout.mRotation == 3 && (!CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY || isInSubDisplay())) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        int i5 = i3 ^ 1;
        Intent edgeAllAppsActivityIntent = MultiWindowUtils.getEdgeAllAppsActivityIntent(component, i4, recentTaskInfo.taskId);
        if (MultiWindowManager.getInstance().isVisibleTaskByTaskIdInDexDisplay(i)) {
            sendMessageProxyService(StageLaunchOptions.makeStartTaskAndIntentOpts(i, edgeAllAppsActivityIntent, i5, i2), 2);
            return;
        }
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        windowContainerTransaction.setReparentLeafTaskIfRelaunch(this.mRootTaskInfo.token, false);
        startTaskAndIntent(i, edgeAllAppsActivityIntent, i5, i2, windowContainerTransaction);
        if (CoreRune.MW_SPLIT_START_EDGE_ALL_APPS_SA_LOGGING && "com.sec.android.app.launcher".equalsIgnoreCase(this.mContext.getPackageManager().getNameForUid(callerInfo.mUid))) {
            CoreSaLogger.logForAdvanced("1000", "From recent_option");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startTasks(int r21, android.os.Bundle r22, int r23, android.os.Bundle r24, int r25, android.os.Bundle r26, int r27, float r28, int r29, float r30, android.window.RemoteTransition r31, com.android.internal.logging.InstanceId r32, int r33, com.android.wm.shell.splitscreen.SplitScreenController.CallerInfo r34) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.startTasks(int, android.os.Bundle, int, android.os.Bundle, int, android.os.Bundle, int, float, int, float, android.window.RemoteTransition, com.android.internal.logging.InstanceId, int, com.android.wm.shell.splitscreen.SplitScreenController$CallerInfo):void");
    }

    public final void startWithLegacyTransition(WindowContainerTransaction windowContainerTransaction, int i, Bundle bundle, int i2, float f, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        startWithLegacyTransition(windowContainerTransaction, i, null, null, null, bundle, i2, f, remoteAnimationAdapter, instanceId);
    }

    public final void startWithTask(WindowContainerTransaction windowContainerTransaction, int i, Bundle bundle, float f, int i2, Bundle bundle2, float f2, int i3, int i4, RemoteTransition remoteTransition, InstanceId instanceId, boolean z, boolean z2, Bundle bundle3) {
        boolean z3;
        Bundle bundle4;
        Bundle bundle5;
        int i5;
        boolean z4;
        MainStage mainStage = this.mMainStage;
        if (!mainStage.mIsActive) {
            mainStage.activate(windowContainerTransaction, false);
        }
        if (CoreRune.MW_MULTI_SPLIT_RECENT_TASKS && i2 != -1) {
            z3 = true;
        } else {
            z3 = false;
        }
        CellStage cellStage = this.mCellStage;
        if (z3) {
            cellStage.mIsActive = true;
        }
        this.mSplitLayout.setDivideRatio(f, z, z2);
        if (z3) {
            if ((i4 == 1 && (i3 & 32) != 0) || (i4 == 0 && (i3 & 64) != 0)) {
                z4 = true;
            } else {
                z4 = false;
            }
            this.mSplitLayout.setCellDividerRatio(f2, i3, false, z4);
        }
        updateWindowBounds(this.mSplitLayout, windowContainerTransaction, false);
        updateStagePositionIfNeeded(windowContainerTransaction);
        windowContainerTransaction.setTransactionType(5);
        this.mLastTransactionType = 5;
        windowContainerTransaction.reorder(this.mRootTaskInfo.token, true);
        windowContainerTransaction.setReparentLeafTaskIfRelaunch(this.mRootTaskInfo.token, false);
        setRootForceTranslucent(windowContainerTransaction, false);
        if (bundle != null) {
            bundle4 = bundle;
        } else {
            bundle4 = new Bundle();
        }
        addActivityOptions(bundle4, mainStage);
        windowContainerTransaction.startTask(i, bundle4);
        if (z3) {
            if (bundle2 != null) {
                bundle5 = bundle2;
            } else {
                bundle5 = new Bundle();
            }
            addActivityOptions(bundle5, cellStage);
            windowContainerTransaction.startTask(i2, bundle5);
        } else {
            bundle5 = bundle2;
        }
        if (remoteTransition != null && ((mainStage.hasChild() || this.mSideStage.hasChild()) && bundle3 != null)) {
            bundle4.putBoolean("android.activity.splitTaskDeferResume", true);
            bundle3.putBoolean("android.activity.splitTaskDeferResume", true);
            if (z3) {
                bundle5.putBoolean("android.activity.splitTaskDeferResume", true);
            }
        }
        ArrayList arrayList = this.mPausingTasks;
        if (arrayList.contains(Integer.valueOf(i))) {
            arrayList.clear();
        }
        if (CoreRune.MW_MULTI_SPLIT_RECENT_TASKS && i2 != -1) {
            i5 = VolteConstants.ErrorCode.CALL_SESSION_ABORT;
        } else {
            i5 = VolteConstants.ErrorCode.CLIENT_ERROR_NOT_ALLOWED_URI;
        }
        this.mSplitTransitions.startEnterTransition(windowContainerTransaction, remoteTransition, this, i5, false);
        if (instanceId != null) {
            SplitscreenEventLogger splitscreenEventLogger = this.mLogger;
            splitscreenEventLogger.mEnterSessionId = instanceId;
            splitscreenEventLogger.mEnterReason = 3;
        }
    }

    public final void swapTasksInSplitScreenMode$1() {
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mMainStage.mRootTaskInfo;
        ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mSideStage.mRootTaskInfo;
        if (runningTaskInfo != null && runningTaskInfo2 != null) {
            setSideStagePosition(SplitScreenUtils.reverseSplitPosition(this.mSideStagePosition), -1, windowContainerTransaction, false);
            windowContainerTransaction.setChangeTransitMode(runningTaskInfo.token, 1, "swap_split");
            windowContainerTransaction.setChangeTransitMode(runningTaskInfo2.token, 1, "swap_split");
            int invertedCurrentPosition = getInvertedCurrentPosition();
            this.mSplitLayout.updateSnapAlgorithm(invertedCurrentPosition);
            this.mSplitLayout.setDividePosition(this.mSplitLayout.getDividerSnapAlgorithm().calculateSnapTarget(invertedCurrentPosition, 0.0f).position, windowContainerTransaction, true);
            return;
        }
        Slog.e("StageCoordinator", "swapTasksInSplitScreenMode: main or side running task is empty");
    }

    public final void updateCornerRadiusForStages(SurfaceControl.Transaction transaction) {
        float roundedCornerRadius;
        boolean z;
        SurfaceControl.Transaction acquire;
        Context displayContext = this.mDisplayController.getDisplayContext(0);
        if (displayContext == null) {
            return;
        }
        if (CoreRune.MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS && this.mIsVideoControls) {
            roundedCornerRadius = 0.0f;
        } else {
            roundedCornerRadius = MultiWindowUtils.getRoundedCornerRadius(displayContext);
        }
        if (transaction != null) {
            z = true;
        } else {
            z = false;
        }
        TransactionPool transactionPool = this.mTransactionPool;
        if (transaction != null) {
            acquire = transaction;
        } else {
            acquire = transactionPool.acquire();
        }
        boolean applyCornerRadiusToLeashIfNeeded = this.mCellStage.applyCornerRadiusToLeashIfNeeded(roundedCornerRadius, acquire, z) | false | this.mMainStage.applyCornerRadiusToLeashIfNeeded(roundedCornerRadius, acquire, z) | this.mSideStage.applyCornerRadiusToLeashIfNeeded(roundedCornerRadius, acquire, z);
        if (transaction == null) {
            if (applyCornerRadiusToLeashIfNeeded) {
                acquire.apply();
            }
            transactionPool.release(acquire);
        }
    }

    public final boolean updateCoverDisplaySplitLayoutIfNeeded() {
        Configuration configuration;
        SplitLayout splitLayout;
        if (!isInSubDisplay() || (configuration = this.mTmpConfigAfterFoldDismiss) == null || (splitLayout = this.mSplitLayout) == null || !splitLayout.updateConfiguration(configuration)) {
            return false;
        }
        updateSplitDivisionIfNeeded();
        return true;
    }

    public final void updateDividerLeashVisible(boolean z) {
        float f;
        String str;
        SurfaceControl dividerLeash = this.mSplitLayout.getDividerLeash();
        if (dividerLeash != null && dividerLeash.isValid()) {
            this.mDividerLeashHidden = !z;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            TransactionPool transactionPool = this.mTransactionPool;
            SurfaceControl.Transaction acquire = transactionPool.acquire();
            acquire.setAlpha(dividerLeash, f).apply();
            transactionPool.release(acquire);
            StringBuilder sb = new StringBuilder("updateDividerLeashVisible: ");
            sb.append(dividerLeash);
            sb.append(", show=");
            sb.append(z);
            if (CoreRune.SAFE_DEBUG) {
                str = ", callers=" + Debug.getCallers(3);
            } else {
                str = "";
            }
            sb.append(str);
            Slog.d("StageCoordinator", sb.toString());
            return;
        }
        Slog.w("StageCoordinator", "updateDividerLeashVisible: leash was released or not be created");
    }

    public final void updateMultiSplitLayout(MultiSplitLayoutInfo multiSplitLayoutInfo, boolean z, WindowContainerTransaction windowContainerTransaction) {
        setSideStagePosition(multiSplitLayoutInfo.sideStagePosition, multiSplitLayoutInfo.splitDivision, windowContainerTransaction, false);
        setCellStageWindowConfigPosition(multiSplitLayoutInfo.cellStagePosition, true);
        this.mSplitLayout.updateCellStageWindowConfigPosition(this.mCellStageWindowConfigPosition);
        if (this.mSideStageListener.mVisible && z) {
            onLayoutSizeChanged(this.mSplitLayout, windowContainerTransaction);
        }
    }

    public final void updateRecentTasksSplitPair() {
        if (this.mShouldUpdateRecents && this.mPausingTasks.isEmpty()) {
            this.mRecentTasks.ifPresent(new StageCoordinator$$ExternalSyntheticLambda4(this, 2));
        }
    }

    public final void updateSplitDivisionIfNeeded() {
        boolean z;
        if (isInSubDisplay()) {
            if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY) {
                if (this.mTopStageAfterFoldDismiss != -1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            int i = !isLandscape() ? 1 : 0;
            if (this.mSplitDivision == i) {
                return;
            }
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Update split division for SubDisplay. d=", i, "  Call=");
            m.append(Debug.getCallers(5));
            Slog.i("StageCoordinator", m.toString());
            setSplitDivision(i, isInSubDisplay());
        }
    }

    public final void updateStagePositionIfNeeded(WindowContainerTransaction windowContainerTransaction) {
        int i;
        int mainStageWinConfigPosition = getMainStageWinConfigPosition();
        int sideStageWinConfigPosition = getSideStageWinConfigPosition();
        boolean z = CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER;
        boolean z2 = false;
        if (z) {
            i = this.mCellStageWindowConfigPosition;
        } else {
            i = 0;
        }
        if (sideStageWinConfigPosition == this.mLastReportedSideStageWinConfigPosition && i == this.mLastReportedCellStageWinConfigPosition) {
            z2 = true;
        }
        if (mainStageWinConfigPosition != this.mLastReportedMainStageWinConfigPosition || (z && !z2)) {
            this.mLastReportedMainStageWinConfigPosition = mainStageWinConfigPosition;
            windowContainerTransaction.setStagePosition(this.mMainStage.mRootTaskInfo.token, mainStageWinConfigPosition);
            windowContainerTransaction.setStagePosition(this.mSideStage.mRootTaskInfo.token, sideStageWinConfigPosition);
            if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
                this.mLastReportedSideStageWinConfigPosition = sideStageWinConfigPosition;
                this.mLastReportedCellStageWinConfigPosition = i;
                windowContainerTransaction.setStagePosition(this.mCellStage.mRootTaskInfo.token, i);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateSurfaceBounds(com.android.wm.shell.common.split.SplitLayout r13, android.view.SurfaceControl.Transaction r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 859
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.StageCoordinator.updateSurfaceBounds(com.android.wm.shell.common.split.SplitLayout, android.view.SurfaceControl$Transaction, boolean):void");
    }

    public final void updateVideoControlsState(boolean z, SurfaceControl.Transaction transaction, boolean z2) {
        if (this.mIsVideoControls == z) {
            return;
        }
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(3, RowView$$ExternalSyntheticOutline0.m("updateVideoControlsState: ", z, ", callers"), "StageCoordinator");
        if (z) {
            new WindowContainerTransaction();
            setDividerVisibility(false, null);
            setVideoControlsMode(transaction, true);
            if (this.mIsFlexPanelMode) {
                this.mIsFlexPanelMode = false;
                if (CoreRune.MW_MULTI_SPLIT_ROUNDED_CORNER) {
                    updateCornerRadiusForStages(null);
                }
            }
            setDividerSizeIfNeeded(z2);
            return;
        }
        setVideoControlsMode(transaction, false);
        setDividerSizeIfNeeded(z2);
        if (this.mMainStage.mIsActive) {
            setDividerVisibility(true, null);
            this.mSplitLayout.update(null);
        }
    }

    public final boolean updateWindowBounds(SplitLayout splitLayout, WindowContainerTransaction windowContainerTransaction, boolean z) {
        StageTaskListener stageTaskListener;
        int i = this.mSideStagePosition;
        StageTaskListener stageTaskListener2 = this.mSideStage;
        StageTaskListener stageTaskListener3 = this.mMainStage;
        if (i == 0) {
            stageTaskListener = stageTaskListener2;
        } else {
            stageTaskListener = stageTaskListener3;
        }
        if (i == 0) {
            stageTaskListener2 = stageTaskListener3;
        }
        overrideStageCoordinatorRootConfig(windowContainerTransaction);
        if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY) {
            CellStage cellStage = this.mCellStage;
            if (cellStage.mIsActive || z) {
                return splitLayout.applyTaskChanges(windowContainerTransaction, stageTaskListener.mRootTaskInfo, stageTaskListener2.mRootTaskInfo, cellStage.mRootTaskInfo);
            }
        }
        return splitLayout.applyTaskChanges(windowContainerTransaction, stageTaskListener.mRootTaskInfo, stageTaskListener2.mRootTaskInfo);
    }

    public final Bundle resolveStartStage(int i, int i2, Bundle bundle, WindowContainerTransaction windowContainerTransaction, int i3) {
        if (i == -1) {
            if (i2 != -1) {
                if (isSplitScreenVisible()) {
                    return resolveStartStage(i2 != this.mSideStagePosition ? 0 : 1, i2, bundle, windowContainerTransaction, i3);
                }
                return resolveStartStage(1, i2, bundle, windowContainerTransaction, i3);
            }
            Slog.w("StageCoordinator", "No stage type nor split position specified to resolve start stage");
            return bundle;
        }
        StageTaskListener stageTaskListener = this.mSideStage;
        StageTaskListener stageTaskListener2 = this.mMainStage;
        if (i == 0) {
            if (i2 != -1) {
                setSideStagePosition(SplitScreenUtils.reverseSplitPosition(i2), i3, windowContainerTransaction, true);
            } else {
                i2 = getMainStagePosition();
            }
            if (bundle == null) {
                bundle = new Bundle();
            }
            if (i2 != this.mSideStagePosition) {
                stageTaskListener = stageTaskListener2;
            }
            addActivityOptions(bundle, stageTaskListener);
            return bundle;
        }
        if (i == 1) {
            if (i2 != -1) {
                setSideStagePosition(i2, i3, windowContainerTransaction, true);
            } else {
                i2 = this.mSideStagePosition;
            }
            if (bundle == null) {
                bundle = new Bundle();
            }
            if (i2 != this.mSideStagePosition) {
                stageTaskListener = stageTaskListener2;
            }
            addActivityOptions(bundle, stageTaskListener);
            return bundle;
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unknown stage=", i));
    }

    public final void setSideStagePosition(int i, int i2, WindowContainerTransaction windowContainerTransaction, boolean z) {
        boolean splitDivision = CoreRune.MW_MULTI_SPLIT_FREE_POSITION ? setSplitDivision(i2, isInSubDisplay()) : false;
        if (this.mSideStagePosition != i || (CoreRune.MW_MULTI_SPLIT_FREE_POSITION && splitDivision)) {
            this.mSideStagePosition = i;
            ArrayList arrayList = (ArrayList) this.mListeners;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                SplitScreen.SplitScreenListener splitScreenListener = (SplitScreen.SplitScreenListener) arrayList.get(size);
                splitScreenListener.onStagePositionChanged(0, getMainStagePosition());
                splitScreenListener.onStagePositionChanged(1, this.mSideStagePosition);
            }
            if (this.mSideStageListener.mVisible && z) {
                if (windowContainerTransaction == null) {
                    onLayoutSizeChanged(this.mSplitLayout, null);
                    return;
                }
                updateStagePositionIfNeeded(windowContainerTransaction);
                updateWindowBounds(this.mSplitLayout, windowContainerTransaction, false);
                sendOnBoundsChanged();
            }
        }
    }

    public final void startWithLegacyTransition(WindowContainerTransaction windowContainerTransaction, int i, PendingIntent pendingIntent, Intent intent, ShortcutInfo shortcutInfo, Bundle bundle, int i2, float f, final RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        if (!isSplitScreenVisible()) {
            exitSplitScreen(null, 10);
        }
        this.mSplitLayout.init();
        this.mSplitLayout.setDivideRatio(f, true, true);
        TransactionPool transactionPool = this.mTransactionPool;
        SurfaceControl.Transaction acquire = transactionPool.acquire();
        int i3 = 0;
        updateSurfaceBounds(this.mSplitLayout, acquire, false);
        acquire.apply();
        transactionPool.release(acquire);
        this.mShouldUpdateRecents = false;
        this.mIsDividerRemoteAnimating = true;
        if (this.mSplitRequest == null) {
            this.mSplitRequest = new SplitRequest(this, i, pendingIntent != null ? pendingIntent.getIntent() : null, i2);
        }
        setSideStagePosition(windowContainerTransaction, i2);
        MainStage mainStage = this.mMainStage;
        if (!mainStage.mIsActive) {
            mainStage.activate(windowContainerTransaction, false);
        }
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        addActivityOptions(bundle2, mainStage);
        updateWindowBounds(this.mSplitLayout, windowContainerTransaction, false);
        updateStagePositionIfNeeded(windowContainerTransaction);
        windowContainerTransaction.reorder(this.mRootTaskInfo.token, true);
        setRootForceTranslucent(windowContainerTransaction, false);
        SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
        if (i != -1) {
            final WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
            if (isSplitScreenVisible()) {
                mainStage.evictAllChildren(windowContainerTransaction2, false);
                this.mSideStage.evictAllChildren(windowContainerTransaction2, false);
            }
            RemoteAnimationAdapter remoteAnimationAdapter2 = new RemoteAnimationAdapter(new IRemoteAnimationRunner.Stub() { // from class: com.android.wm.shell.splitscreen.StageCoordinator.4
                public final void onAnimationCancelled() {
                    StageCoordinator.m2469$$Nest$monRemoteAnimationFinishedOrCancelled(StageCoordinator.this, windowContainerTransaction2);
                    StageCoordinator.this.setDividerVisibility(true, null);
                    try {
                        remoteAnimationAdapter.getRunner().onAnimationCancelled();
                    } catch (RemoteException e) {
                        Slog.e("StageCoordinator", "Error starting remote animation", e);
                    }
                }

                public final void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, final IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
                    IRemoteAnimationFinishedCallback.Stub stub = new IRemoteAnimationFinishedCallback.Stub() { // from class: com.android.wm.shell.splitscreen.StageCoordinator.4.1
                        public final void onAnimationFinished() {
                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                            StageCoordinator.m2469$$Nest$monRemoteAnimationFinishedOrCancelled(StageCoordinator.this, windowContainerTransaction2);
                            iRemoteAnimationFinishedCallback.onAnimationFinished();
                        }
                    };
                    Transitions.setRunningRemoteTransitionDelegate(remoteAnimationAdapter.getCallingApplication());
                    try {
                        remoteAnimationAdapter.getRunner().onAnimationStart(i4, remoteAnimationTargetArr, remoteAnimationTargetArr2, (RemoteAnimationTarget[]) ArrayUtils.appendElement(RemoteAnimationTarget.class, remoteAnimationTargetArr3, StageCoordinator.this.getDividerBarLegacyTarget()), stub);
                    } catch (RemoteException e) {
                        Slog.e("StageCoordinator", "Error starting remote animation", e);
                    }
                }
            }, remoteAnimationAdapter.getDuration(), remoteAnimationAdapter.getStatusBarTransitionDelay());
            ActivityOptions fromBundle = ActivityOptions.fromBundle(bundle2);
            fromBundle.update(ActivityOptions.makeRemoteAnimation(remoteAnimationAdapter2));
            windowContainerTransaction.startTask(i, fromBundle.toBundle());
            syncTransactionQueue.queue(windowContainerTransaction);
        } else {
            if (shortcutInfo != null) {
                windowContainerTransaction.startShortcut(this.mContext.getPackageName(), shortcutInfo, bundle2);
            } else {
                windowContainerTransaction.sendPendingIntent(pendingIntent, intent, bundle2);
            }
            syncTransactionQueue.queue(new StageCoordinator$$ExternalSyntheticLambda12(this, remoteAnimationAdapter, i3), windowContainerTransaction);
        }
        if (instanceId != null) {
            SplitscreenEventLogger splitscreenEventLogger = this.mLogger;
            splitscreenEventLogger.mEnterSessionId = instanceId;
            splitscreenEventLogger.mEnterReason = 3;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplitRequest {
        public final int mActivatePosition;
        public final int mActivateTaskId;
        public final int mActivateTaskId2;
        public final Intent mStartIntent;
        public final Intent mStartIntent2;

        public SplitRequest(StageCoordinator stageCoordinator, int i, Intent intent, int i2) {
            this.mActivateTaskId = i;
            this.mStartIntent = intent;
            this.mActivatePosition = i2;
        }

        public SplitRequest(StageCoordinator stageCoordinator, Intent intent, int i) {
            this.mStartIntent = intent;
            this.mActivatePosition = i;
        }

        public SplitRequest(StageCoordinator stageCoordinator, Intent intent, Intent intent2, int i) {
            this.mStartIntent = intent;
            this.mStartIntent2 = intent2;
            this.mActivatePosition = i;
        }

        public SplitRequest(StageCoordinator stageCoordinator, int i, int i2, int i3) {
            this.mActivateTaskId = i;
            this.mActivateTaskId2 = i2;
            this.mActivatePosition = i3;
        }
    }

    public final StageTaskListener getStageOfTask(ActivityManager.RunningTaskInfo runningTaskInfo) {
        CellStage cellStage;
        ActivityManager.RunningTaskInfo runningTaskInfo2;
        MainStage mainStage = this.mMainStage;
        ActivityManager.RunningTaskInfo runningTaskInfo3 = mainStage.mRootTaskInfo;
        if (runningTaskInfo3 != null && runningTaskInfo.parentTaskId == runningTaskInfo3.taskId) {
            return mainStage;
        }
        SideStage sideStage = this.mSideStage;
        ActivityManager.RunningTaskInfo runningTaskInfo4 = sideStage.mRootTaskInfo;
        if (runningTaskInfo4 != null && runningTaskInfo.parentTaskId == runningTaskInfo4.taskId) {
            return sideStage;
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && (runningTaskInfo2 = (cellStage = this.mCellStage).mRootTaskInfo) != null && runningTaskInfo.parentTaskId == runningTaskInfo2.taskId) {
            return cellStage;
        }
        return null;
    }

    public void onSplitScreenEnter() {
    }

    public void onSplitScreenExit() {
    }

    public StageCoordinator(Context context, int i, SyncTransactionQueue syncTransactionQueue, ShellTaskOrganizer shellTaskOrganizer, MainStage mainStage, SideStage sideStage, DisplayController displayController, DisplayImeController displayImeController, DisplayInsetsController displayInsetsController, SplitLayout splitLayout, Transitions transitions, TransactionPool transactionPool, ShellExecutor shellExecutor, Optional<RecentTasksController> optional) {
        new SurfaceSession();
        this.mMainStageListener = new StageListenerImpl();
        this.mSideStageListener = new StageListenerImpl();
        this.mCellStageListener = new StageListenerImpl();
        int i2 = 0;
        this.mCellStageWindowConfigPosition = 0;
        this.mSideStagePosition = 1;
        ArrayList arrayList = new ArrayList();
        this.mListeners = arrayList;
        this.mPausingTasks = new ArrayList();
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRect3 = new Rect();
        this.mTopStageAfterFoldDismiss = -1;
        this.mIsFolded = false;
        this.mIsFlexPanelMode = false;
        this.mSkipFlexPanelUpdate = false;
        this.mIsVideoControls = false;
        this.mWillBeVideoControls = false;
        this.mDelayedHandleLayoutSizeChange = new StageCoordinator$$ExternalSyntheticLambda3(this, 3);
        this.mLastPackageNameList = new ArrayList();
        this.mCurrentPackageNameList = new ArrayList();
        this.mExcludeLoggingPackages = Arrays.asList("com.sec.android.app.launcher", "com.android.systemui");
        this.mSeqForAsyncTransaction = -1L;
        this.mLastTransactionType = 0;
        this.mTempRect = new Rect();
        Configuration configuration = new Configuration();
        this.mLastConfiguration = configuration;
        this.mParentContainerCallbacks = new AnonymousClass1();
        if (CoreRune.MW_MULTI_SPLIT_BACKGROUND) {
            new RecentsTransitionCallback(this, i2);
        }
        this.mSplitDivision = 0;
        this.mLastMainSplitDivision = 0;
        this.mSplitLayoutChangedForLaunchAdjacent = false;
        this.mAppPairStarted = false;
        new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
        this.mContext = context;
        this.mDisplayId = i;
        this.mSyncQueue = syncTransactionQueue;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mMainStage = mainStage;
        this.mSideStage = sideStage;
        this.mDisplayController = displayController;
        this.mDisplayImeController = displayImeController;
        this.mDisplayInsetsController = displayInsetsController;
        this.mTransactionPool = transactionPool;
        this.mSplitLayout = splitLayout;
        this.mSplitTransitions = new SplitScreenTransitions(transactionPool, transitions, new StageCoordinator$$ExternalSyntheticLambda3(this, 5), this);
        this.mLogger = new SplitscreenEventLogger();
        this.mMainExecutor = shellExecutor;
        this.mRecentTasks = optional;
        displayController.addDisplayWindowListener(this);
        this.mSplitLayout.mStageCoordinator = this;
        transitions.addHandler(this);
        this.mSplitUnsupportedToast = Toast.makeText(context, R.string.dock_non_resizeble_failed_to_dock_text, 0);
        SplitBackgroundController splitBackgroundController = new SplitBackgroundController(context, this, transactionPool, shellExecutor, displayController);
        this.mSplitBackgroundController = splitBackgroundController;
        if (!arrayList.contains(splitBackgroundController)) {
            arrayList.add(splitBackgroundController);
            sendStatusToListener(splitBackgroundController);
        }
        configuration.updateFrom(context.getResources().getConfiguration());
    }
}
