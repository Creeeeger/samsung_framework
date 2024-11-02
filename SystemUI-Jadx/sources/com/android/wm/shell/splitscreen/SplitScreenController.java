package com.android.wm.shell.splitscreen;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.app.TaskInfo;
import android.app.TaskStackListener;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.LauncherApps;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArrayMap;
import android.util.Slog;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.IRemoteAnimationRunner;
import android.view.IWindowSession;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.WindowManagerGlobal;
import android.view.inputmethod.InputMethodManager;
import android.window.RemoteTransition;
import android.window.TransitionInfo;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.internal.logging.InstanceId;
import com.android.launcher3.icons.IconProvider;
import com.android.server.LocalServices;
import com.android.systemui.R;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayImeController;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.common.ExternalInterfaceBinder;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.RemoteCallable;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SingleInstanceRemoteListener;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.common.split.CellUtil;
import com.android.wm.shell.common.split.DividerResizeController;
import com.android.wm.shell.common.split.MultiSplitLayoutInfo;
import com.android.wm.shell.common.split.SplitLayout;
import com.android.wm.shell.common.split.SplitScreenUtils;
import com.android.wm.shell.draganddrop.DragAndDropController;
import com.android.wm.shell.draganddrop.DragAndDropPolicy;
import com.android.wm.shell.fullscreen.FullscreenTaskListener;
import com.android.wm.shell.recents.RecentTasksController;
import com.android.wm.shell.splitscreen.SplitScreen;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.android.wm.shell.splitscreen.StageTaskListener;
import com.android.wm.shell.sysui.KeyguardChangeListener;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.core.RunestoneLogger;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import com.sec.ims.volte2.data.VolteConstants;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Optional;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.function.BiConsumer;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SplitScreenController implements DragAndDropPolicy.Starter, RemoteCallable, KeyguardChangeListener {
    public final String[] mAppsSupportMultiInstances;
    public final AnonymousClass1 mConnection;
    public final Context mContext;
    public final DisplayController mDisplayController;
    public final DisplayImeController mDisplayImeController;
    public final DisplayInsetsController mDisplayInsetsController;
    public DividerResizeController mDividerResizeController;
    public final Optional mDragAndDropController;
    public int mFocusedTaskPosition;
    public FullscreenTaskListener mFullscreenTaskListener;
    public final Optional mGestureStarter;
    public SurfaceControl mGoingToRecentsTasksLayer;
    public final IconProvider mIconProvider;
    public final SplitScreenImpl mImpl;
    public BooleanSupplier mIsKeyguardOccludedAndShowingSupplier;
    public final ShellExecutor mMainExecutor;
    public final Optional mRecentTasksOptional;
    public final RootTaskDisplayAreaOrganizer mRootTDAOrganizer;
    public SplitScreenProxyService mService;
    public final ShellCommandHandler mShellCommandHandler;
    public final ShellController mShellController;
    public final SplitScreenShellCommandHandler mSplitScreenShellCommandHandler;
    StageCoordinator mStageCoordinator;
    public SurfaceControl mStartingSplitTasksLayer;
    public final SyncTransactionQueue mSyncQueue;
    public final ShellTaskOrganizer mTaskOrganizer;
    public final TransactionPool mTransactionPool;
    public final Transitions mTransitions;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CallerInfo {
        public final int mUid;

        public CallerInfo() {
            Binder.getCallingPid();
            this.mUid = Binder.getCallingUid();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ISplitScreenImpl extends ISplitScreen$Stub implements ExternalInterfaceBinder {
        public static final /* synthetic */ int $r8$clinit = 0;
        public SplitScreenController mController;
        public final SingleInstanceRemoteListener mListener;
        public final AnonymousClass1 mSplitScreenListener = new SplitScreen.SplitScreenListener() { // from class: com.android.wm.shell.splitscreen.SplitScreenController.ISplitScreenImpl.1
            @Override // com.android.wm.shell.splitscreen.SplitScreen.SplitScreenListener
            public final void onStagePositionChanged(int i, int i2) {
                IInterface iInterface = ISplitScreenImpl.this.mListener.mListener;
                if (iInterface == null) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call on null listener");
                    return;
                }
                try {
                    ((ISplitScreenListener$Stub$Proxy) ((ISplitScreenListener) iInterface)).onStagePositionChanged(i, i2);
                } catch (RemoteException e) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call", e);
                }
            }

            @Override // com.android.wm.shell.splitscreen.SplitScreen.SplitScreenListener
            public final void onTaskStageChanged(int i, int i2, boolean z) {
                IInterface iInterface = ISplitScreenImpl.this.mListener.mListener;
                if (iInterface == null) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call on null listener");
                    return;
                }
                try {
                    ((ISplitScreenListener$Stub$Proxy) ((ISplitScreenListener) iInterface)).onTaskStageChanged(i, i2, z);
                } catch (RemoteException e) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call", e);
                }
            }
        };

        /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$1] */
        public ISplitScreenImpl(SplitScreenController splitScreenController) {
            this.mController = splitScreenController;
            this.mListener = new SingleInstanceRemoteListener(splitScreenController, new SplitScreenController$$ExternalSyntheticLambda2(this, 1), new SplitScreenController$$ExternalSyntheticLambda2(this, 2));
        }

        @Override // com.android.wm.shell.common.ExternalInterfaceBinder
        public final void invalidate() {
            this.mController = null;
            this.mListener.unregister();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Impl extends TaskStackListener {
        public Impl() {
        }

        public final void onTaskFocusChanged(int i, boolean z) {
            ((HandlerExecutor) SplitScreenController.this.mMainExecutor).execute(new SplitScreenController$Impl$$ExternalSyntheticLambda0(this, z, i));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplitScreenImpl implements SplitScreen {
        public final ArrayMap mExecutors;
        public final AnonymousClass1 mListener;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.wm.shell.splitscreen.SplitScreenController$SplitScreenImpl$1, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass1 implements SplitScreen.SplitScreenListener {
            public AnonymousClass1() {
            }

            @Override // com.android.wm.shell.splitscreen.SplitScreen.SplitScreenListener
            public final void onSplitBoundsChanged(final Rect rect, final Rect rect2, final Rect rect3) {
                int i = 0;
                while (true) {
                    SplitScreenImpl splitScreenImpl = SplitScreenImpl.this;
                    if (i < splitScreenImpl.mExecutors.size()) {
                        final int i2 = i;
                        ((Executor) splitScreenImpl.mExecutors.valueAt(i)).execute(new Runnable() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                SplitScreenController.SplitScreenImpl.AnonymousClass1 anonymousClass1 = SplitScreenController.SplitScreenImpl.AnonymousClass1.this;
                                int i3 = i2;
                                ((SplitScreen.SplitScreenListener) SplitScreenController.SplitScreenImpl.this.mExecutors.keyAt(i3)).onSplitBoundsChanged(rect, rect2, rect3);
                            }
                        });
                        i++;
                    } else {
                        return;
                    }
                }
            }

            @Override // com.android.wm.shell.splitscreen.SplitScreen.SplitScreenListener
            public final void onSplitVisibilityChanged(boolean z) {
                int i = 0;
                while (true) {
                    SplitScreenImpl splitScreenImpl = SplitScreenImpl.this;
                    if (i < splitScreenImpl.mExecutors.size()) {
                        ((Executor) splitScreenImpl.mExecutors.valueAt(i)).execute(new SplitScreenController$Impl$$ExternalSyntheticLambda0(this, i, z));
                        i++;
                    } else {
                        return;
                    }
                }
            }

            @Override // com.android.wm.shell.splitscreen.SplitScreen.SplitScreenListener
            public final void onStagePositionChanged(final int i, final int i2) {
                final int i3 = 0;
                while (true) {
                    SplitScreenImpl splitScreenImpl = SplitScreenImpl.this;
                    if (i3 < splitScreenImpl.mExecutors.size()) {
                        ((Executor) splitScreenImpl.mExecutors.valueAt(i3)).execute(new Runnable() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                SplitScreenController.SplitScreenImpl.AnonymousClass1 anonymousClass1 = SplitScreenController.SplitScreenImpl.AnonymousClass1.this;
                                int i4 = i3;
                                ((SplitScreen.SplitScreenListener) SplitScreenController.SplitScreenImpl.this.mExecutors.keyAt(i4)).onStagePositionChanged(i, i2);
                            }
                        });
                        i3++;
                    } else {
                        return;
                    }
                }
            }

            @Override // com.android.wm.shell.splitscreen.SplitScreen.SplitScreenListener
            public final void onTaskStageChanged(final int i, final int i2, final boolean z) {
                int i3 = 0;
                while (true) {
                    SplitScreenImpl splitScreenImpl = SplitScreenImpl.this;
                    if (i3 < splitScreenImpl.mExecutors.size()) {
                        final int i4 = i3;
                        ((Executor) splitScreenImpl.mExecutors.valueAt(i3)).execute(new Runnable() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SplitScreenController.SplitScreenImpl.AnonymousClass1 anonymousClass1 = SplitScreenController.SplitScreenImpl.AnonymousClass1.this;
                                int i5 = i4;
                                ((SplitScreen.SplitScreenListener) SplitScreenController.SplitScreenImpl.this.mExecutors.keyAt(i5)).onTaskStageChanged(i, i2, z);
                            }
                        });
                        i3++;
                    } else {
                        return;
                    }
                }
            }
        }

        public /* synthetic */ SplitScreenImpl(SplitScreenController splitScreenController, int i) {
            this();
        }

        public final void startSplitByTwoTouchSwipeIfPossible(final int i) {
            final String caller = Debug.getCaller();
            ((HandlerExecutor) SplitScreenController.this.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SplitScreenController.this.mGestureStarter.ifPresent(new SplitScreenController$$ExternalSyntheticLambda7(i, caller, 1));
                }
            });
        }

        private SplitScreenImpl() {
            this.mExecutors = new ArrayMap();
            this.mListener = new AnonymousClass1();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplitTwoFingerGestureStarter {
        public final boolean DEBUG;
        public final String TAG = SplitTwoFingerGestureStarter.class.getSimpleName();
        public final ComponentName allAppsComponentName;
        public boolean mEnabled;
        public final IWindowSession mRealWm;

        public SplitTwoFingerGestureStarter() {
            boolean z;
            if (!CoreRune.SAFE_DEBUG && !CoreRune.IS_DEBUG_LEVEL_MID) {
                z = false;
            } else {
                z = true;
            }
            this.DEBUG = z;
            this.mRealWm = WindowManagerGlobal.getWindowSession();
            this.allAppsComponentName = MultiWindowUtils.getEdgeAllAppsComponent();
        }

        public static boolean intValueIn(int i, int... iArr) {
            for (int i2 : iArr) {
                if (i == i2) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0057 A[RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void startSplitByTwoTouchSwipeIfPossible(final int r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 425
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenController.SplitTwoFingerGestureStarter.startSplitByTwoTouchSwipeIfPossible(int, java.lang.String):void");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.wm.shell.splitscreen.SplitScreenController$1, android.content.ServiceConnection] */
    public SplitScreenController(Context context, ShellInit shellInit, ShellCommandHandler shellCommandHandler, ShellController shellController, ShellTaskOrganizer shellTaskOrganizer, SyncTransactionQueue syncTransactionQueue, RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer, DisplayController displayController, DisplayImeController displayImeController, DisplayInsetsController displayInsetsController, Optional<DragAndDropController> optional, Transitions transitions, TransactionPool transactionPool, IconProvider iconProvider, Optional<RecentTasksController> optional2, ShellExecutor shellExecutor) {
        int i = 0;
        this.mImpl = new SplitScreenImpl(this, i);
        ?? r2 = new ServiceConnection() { // from class: com.android.wm.shell.splitscreen.SplitScreenController.1
            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Slog.d("SplitScreenProxyService", "onServiceConnected. inject splitController obj");
                SplitScreenProxyService splitScreenProxyService = (SplitScreenProxyService) LocalServices.getService(SplitScreenProxyService.class);
                if (splitScreenProxyService != null) {
                    SplitScreenController splitScreenController = SplitScreenController.this;
                    splitScreenProxyService.mSplitScreenController = splitScreenController;
                    splitScreenProxyService.mRecentTasksController = (RecentTasksController) splitScreenController.mRecentTasksOptional.get();
                    SplitScreenController.this.mService = splitScreenProxyService;
                }
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
            }
        };
        this.mConnection = r2;
        this.mFocusedTaskPosition = 0;
        Impl impl = new Impl();
        new CopyOnWriteArrayList();
        this.mShellCommandHandler = shellCommandHandler;
        this.mShellController = shellController;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mSyncQueue = syncTransactionQueue;
        this.mContext = context;
        this.mRootTDAOrganizer = rootTaskDisplayAreaOrganizer;
        this.mMainExecutor = shellExecutor;
        this.mDisplayController = displayController;
        this.mDisplayImeController = displayImeController;
        this.mDisplayInsetsController = displayInsetsController;
        this.mDragAndDropController = optional;
        this.mTransitions = transitions;
        this.mTransactionPool = transactionPool;
        this.mIconProvider = iconProvider;
        this.mRecentTasksOptional = optional2;
        this.mSplitScreenShellCommandHandler = new SplitScreenShellCommandHandler(this);
        if (ActivityTaskManager.deviceSupportsMultiWindow(context)) {
            shellInit.addInitCallback(new SplitScreenController$$ExternalSyntheticLambda3(i, this), this);
        }
        this.mAppsSupportMultiInstances = context.getResources().getStringArray(R.array.config_appsSupportMultiInstancesSplit);
        context.bindService(new Intent(context, (Class<?>) SplitScreenProxyService.class), (ServiceConnection) r2, 1);
        try {
            ActivityTaskManager.getService().registerTaskStackListener(impl);
        } catch (RemoteException unused) {
        }
        ShellTaskOrganizer shellTaskOrganizer2 = this.mTaskOrganizer;
        ShellTaskOrganizer.MultiWindowCoreStateChangeListener multiWindowCoreStateChangeListener = new ShellTaskOrganizer.MultiWindowCoreStateChangeListener() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$$ExternalSyntheticLambda4
            @Override // com.android.wm.shell.ShellTaskOrganizer.MultiWindowCoreStateChangeListener
            public final boolean onMultiWindowCoreStateChanged(int i2) {
                boolean z;
                int i3;
                SplitScreenController splitScreenController = SplitScreenController.this;
                StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                boolean z2 = false;
                if (stageCoordinator.mMainStage.mIsActive) {
                    if ((i2 & 1024) != 0 || (i2 & 512) != 0) {
                        if (!MultiWindowCoreState.MW_SPLIT_IMMERSIVE_MODE_ENABLED && !MultiWindowCoreState.MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED) {
                            z = false;
                        } else {
                            z = true;
                        }
                        HandlerExecutor handlerExecutor = (HandlerExecutor) stageCoordinator.mMainExecutor;
                        Handler handler = handlerExecutor.mHandler;
                        StageCoordinator$$ExternalSyntheticLambda3 stageCoordinator$$ExternalSyntheticLambda3 = stageCoordinator.mDelayedHandleLayoutSizeChange;
                        if (handler.hasCallbacks(stageCoordinator$$ExternalSyntheticLambda3)) {
                            handlerExecutor.removeCallbacks(stageCoordinator$$ExternalSyntheticLambda3);
                        }
                        if (z) {
                            i3 = 0;
                        } else {
                            i3 = 300;
                        }
                        handlerExecutor.executeDelayed(i3, stageCoordinator$$ExternalSyntheticLambda3);
                    }
                    if ((i2 & 1) != 0 && !MultiWindowCoreState.MW_ENABLED) {
                        z2 = splitScreenController.isSplitScreenVisible();
                        StageCoordinator stageCoordinator2 = splitScreenController.mStageCoordinator;
                        StageTaskListener stageTaskListener = stageCoordinator2.mSideStage;
                        if (!stageTaskListener.isFocused()) {
                            stageTaskListener = stageCoordinator2.mMainStage;
                        }
                        ActivityManager.RunningTaskInfo runningTaskInfo = stageTaskListener.mRootTaskInfo;
                        if (runningTaskInfo == null) {
                            Slog.e("SplitScreenController", "onMultiWindowCoreStateChanged: cannot find focusedInfo");
                        } else if (splitScreenController.mFocusedTaskPosition == 0) {
                            Slog.d("SplitScreenController", "onMultiWindowCoreStateChanged: dismiss split");
                            splitScreenController.exitSplitScreen(-1, 1);
                        } else {
                            Slog.d("SplitScreenController", "onMultiWindowCoreStateChanged: maximize split #" + runningTaskInfo.taskId);
                            splitScreenController.maximizeSplitTask(runningTaskInfo.token);
                        }
                    }
                }
                return z2;
            }
        };
        shellTaskOrganizer2.mMultiWindowCoreStateChangeListeners.remove(multiWindowCoreStateChangeListener);
        shellTaskOrganizer2.mMultiWindowCoreStateChangeListeners.add(multiWindowCoreStateChangeListener);
        this.mGestureStarter = Optional.of(new SplitTwoFingerGestureStarter());
        Transitions transitions2 = this.mTransitions;
        transitions2.mObservers.add(new Transitions.TransitionObserver() { // from class: com.android.wm.shell.splitscreen.SplitScreenController.2
            @Override // com.android.wm.shell.transition.Transitions.TransitionObserver
            public final void onTransitionFinished(IBinder iBinder) {
                SplitScreenController splitScreenController;
                SplitScreenProxyService splitScreenProxyService = SplitScreenController.this.mService;
                if (splitScreenProxyService != null && (splitScreenController = splitScreenProxyService.mSplitScreenController) != null) {
                    ((HandlerExecutor) splitScreenController.mMainExecutor).execute(new SplitScreenProxyService$$ExternalSyntheticLambda0(splitScreenProxyService, 0));
                }
            }

            @Override // com.android.wm.shell.transition.Transitions.TransitionObserver
            public final void onTransitionStarting() {
            }

            @Override // com.android.wm.shell.transition.Transitions.TransitionObserver
            public final void onTransitionMerged(IBinder iBinder, IBinder iBinder2) {
            }

            @Override // com.android.wm.shell.transition.Transitions.TransitionObserver
            public final void onTransitionReady(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
            }
        });
    }

    public static String exitReasonToString(int i) {
        switch (i) {
            case 0:
                return "UNKNOWN_EXIT";
            case 1:
                return "APP_DOES_NOT_SUPPORT_MULTIWINDOW";
            case 2:
                return "APP_FINISHED";
            case 3:
                return "DEVICE_FOLDED";
            case 4:
                return "DRAG_DIVIDER";
            case 5:
                return "RETURN_HOME";
            case 6:
                return "ROOT_TASK_VANISHED";
            case 7:
                return "SCREEN_LOCKED";
            case 8:
                return "SCREEN_LOCKED_SHOW_ON_TOP";
            case 9:
                return "CHILD_TASK_ENTER_PIP";
            case 10:
                return "RECREATE_SPLIT";
            default:
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown reason, reason int = ", i);
        }
    }

    public static ActivityManager.RunningTaskInfo getToggleSplitScreenTarget() {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        Iterator it = ActivityTaskManager.getInstance().getTasks(99).iterator();
        while (true) {
            if (it.hasNext()) {
                runningTaskInfo = (ActivityManager.RunningTaskInfo) it.next();
                if (runningTaskInfo.getWindowingMode() == 1) {
                    break;
                }
            } else {
                runningTaskInfo = null;
                break;
            }
        }
        if (runningTaskInfo == null || !runningTaskInfo.originallySupportedMultiWindow || runningTaskInfo.getActivityType() != 1) {
            return null;
        }
        return runningTaskInfo;
    }

    public StageCoordinator createStageCoordinator() {
        return new StageCoordinator(this.mContext, 0, this.mSyncQueue, this.mTaskOrganizer, this.mDisplayController, this.mDisplayImeController, this.mDisplayInsetsController, this.mTransitions, this.mTransactionPool, this.mIconProvider, this.mMainExecutor, this.mRecentTasksOptional);
    }

    public final void dismissAddToAppPairDialog() {
        AlertDialog alertDialog;
        SplitLayout splitLayout = this.mStageCoordinator.mSplitLayout;
        if (splitLayout != null && (alertDialog = splitLayout.mSplitWindowManager.mDividerPanel.mAddToAppPairDialog) != null) {
            alertDialog.dismiss();
        }
    }

    public final void dismissSplitTask(WindowContainerToken windowContainerToken) {
        this.mStageCoordinator.dismissSplitTask(windowContainerToken, null, false);
    }

    public final void enterSplitScreen() {
        ActivityManager.RunningTaskInfo toggleSplitScreenTarget;
        int i;
        if (this.mStageCoordinator.isSplitScreenVisible() || (toggleSplitScreenTarget = getToggleSplitScreenTarget()) == null) {
            return;
        }
        Intent edgeAllAppsActivityIntent = MultiWindowUtils.getEdgeAllAppsActivityIntent(toggleSplitScreenTarget.baseIntent.getComponent(), toggleSplitScreenTarget.userId, toggleSplitScreenTarget.taskId);
        if (CoreRune.MW_MULTI_SPLIT_CREATE_MODE && !MultiWindowUtils.isInSubDisplay(this.mContext)) {
            i = 0;
        } else {
            i = -1;
        }
        startIntent(edgeAllAppsActivityIntent, null, 1, i);
    }

    public final void exitSplitScreen(int i, int i2) {
        int i3;
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        MainStage mainStage = stageCoordinator.mMainStage;
        if (mainStage.mIsActive) {
            if (mainStage.containsTask(i)) {
                i3 = 0;
            } else if (stageCoordinator.mSideStage.containsTask(i)) {
                i3 = 1;
            } else {
                i3 = -1;
            }
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            stageCoordinator.prepareExitSplitScreen(i3, windowContainerTransaction, true);
            stageCoordinator.mSplitTransitions.startDismissTransition(windowContainerTransaction, stageCoordinator, i3, i2);
            if (CoreRune.MW_SA_RUNESTONE_LOGGING) {
                RunestoneLogger.sendDismissMultiWindowState(stageCoordinator.mContext);
            }
        }
    }

    public final void finishEnterSplitScreen(SurfaceControl.Transaction transaction) {
        this.mStageCoordinator.finishEnterSplitScreen(transaction, false);
    }

    public final int getActivateSplitPosition(TaskInfo taskInfo) {
        return this.mStageCoordinator.getActivateSplitPosition(taskInfo);
    }

    public final void getAllStageBounds(Rect rect, Rect rect2, Rect rect3) {
        SplitLayout splitLayout = this.mStageCoordinator.mSplitLayout;
        boolean isCellInLeftOrTopBounds = CellUtil.isCellInLeftOrTopBounds(splitLayout.mCellStageWindowConfigPosition, splitLayout.isVerticalDivision());
        Rect rect4 = splitLayout.mRootBounds;
        if (isCellInLeftOrTopBounds) {
            rect.set(splitLayout.getRefHostBounds());
            Rect bounds2 = splitLayout.getBounds2();
            bounds2.offset(-rect4.left, -rect4.top);
            rect3.set(bounds2);
        } else {
            Rect bounds1 = splitLayout.getBounds1();
            bounds1.offset(-rect4.left, -rect4.top);
            rect3.set(bounds1);
            rect.set(splitLayout.getRefHostBounds());
        }
        Rect rect5 = new Rect(splitLayout.mBounds3);
        rect5.offset(-rect4.left, -rect4.top);
        rect2.set(rect5);
    }

    public final Rect getCellDividerBounds() {
        SplitLayout splitLayout = this.mStageCoordinator.mSplitLayout;
        splitLayout.getClass();
        return new Rect(splitLayout.mCellDividerBounds);
    }

    public final int getCellHostStageType() {
        return this.mStageCoordinator.getCellHostStageType();
    }

    public final int getCellStageWindowConfigPosition() {
        return this.mStageCoordinator.mCellStageWindowConfigPosition;
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final Context getContext() {
        return this.mContext;
    }

    public final Rect getDividerBounds() {
        SplitLayout splitLayout = this.mStageCoordinator.mSplitLayout;
        splitLayout.getClass();
        return new Rect(splitLayout.mDividerBounds);
    }

    public final int getMainStagePositionExt() {
        return this.mStageCoordinator.getMainStageWinConfigPosition();
    }

    public final String getPackageName(int i) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        if (isSplitScreenVisible()) {
            runningTaskInfo = getTaskInfo(i);
        } else {
            runningTaskInfo = (ActivityManager.RunningTaskInfo) this.mRecentTasksOptional.map(new SplitScreenController$$ExternalSyntheticLambda5(0)).orElse(null);
            if (!SplitScreenUtils.isValidToSplit(runningTaskInfo)) {
                return null;
            }
        }
        if (runningTaskInfo == null) {
            return null;
        }
        return SplitScreenUtils.getPackageName(runningTaskInfo.baseIntent);
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final ShellExecutor getRemoteCallExecutor() {
        return this.mMainExecutor;
    }

    public final int getSideStagePosition() {
        return this.mStageCoordinator.mSideStagePosition;
    }

    public final int getSplitCreateMode() {
        return this.mStageCoordinator.getSplitCreateMode();
    }

    public final int getSplitDivision() {
        return this.mStageCoordinator.getSplitDivision();
    }

    public final int getSplitPosition(int i) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        if (stageCoordinator.mSideStage.getTopVisibleChildTaskId() == i) {
            return stageCoordinator.mSideStagePosition;
        }
        if (stageCoordinator.mMainStage.getTopVisibleChildTaskId() == i) {
            return stageCoordinator.getMainStagePosition();
        }
        return -1;
    }

    public final void getStageBounds(Rect rect, Rect rect2) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        if (stageCoordinator.isSplitScreenVisible()) {
            rect.set(stageCoordinator.mSplitLayout.getBounds1());
            rect2.set(stageCoordinator.mSplitLayout.getBounds2());
        } else {
            stageCoordinator.mSplitLayout.getInitBounds(rect, rect2);
        }
    }

    public final int getStageOfTask(int i) {
        return this.mStageCoordinator.getStageOfTask(i);
    }

    public final int getStageTypeAtPosition(int i) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        StageTaskListener stageAtPosition = stageCoordinator.getStageAtPosition(i);
        if (stageAtPosition == stageCoordinator.mMainStage) {
            return 0;
        }
        if (stageAtPosition == stageCoordinator.mSideStage) {
            return 1;
        }
        if (stageAtPosition != stageCoordinator.mCellStage) {
            return 0;
        }
        return 2;
    }

    public final SurfaceControl getTargetLeash(int i) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        stageCoordinator.getClass();
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && i == 2) {
            return stageCoordinator.mCellStage.mRootLeash;
        }
        if (i == 0) {
            return stageCoordinator.mMainStage.mRootLeash;
        }
        return stageCoordinator.mSideStage.mRootLeash;
    }

    public final ActivityManager.RunningTaskInfo getTaskInfo(int i) {
        int topVisibleChildTaskId;
        if (isSplitScreenVisible()) {
            int i2 = -1;
            if (i != -1) {
                StageCoordinator stageCoordinator = this.mStageCoordinator;
                if (i == -1) {
                    stageCoordinator.getClass();
                } else {
                    if (stageCoordinator.mSideStagePosition == i) {
                        topVisibleChildTaskId = stageCoordinator.mSideStage.getTopVisibleChildTaskId();
                    } else {
                        topVisibleChildTaskId = stageCoordinator.mMainStage.getTopVisibleChildTaskId();
                    }
                    i2 = topVisibleChildTaskId;
                }
                return this.mTaskOrganizer.getRunningTaskInfo(i2);
            }
            return null;
        }
        return null;
    }

    public final ActivityManager.RunningTaskInfo getTopRunningTaskInfoByPosition(int i) {
        StageTaskListener stageAtPosition = this.mStageCoordinator.getStageAtPosition(i);
        if (stageAtPosition != null) {
            return stageAtPosition.getTopRunningTaskInfo();
        }
        return null;
    }

    public final StageCoordinator getTransitionHandler() {
        return this.mStageCoordinator;
    }

    public final int getUserId(int i) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        if (isSplitScreenVisible()) {
            runningTaskInfo = getTaskInfo(i);
        } else {
            runningTaskInfo = (ActivityManager.RunningTaskInfo) this.mRecentTasksOptional.map(new SplitScreenController$$ExternalSyntheticLambda5(1)).orElse(null);
            if (!SplitScreenUtils.isValidToSplit(runningTaskInfo)) {
                return -1;
            }
        }
        if (runningTaskInfo == null) {
            return -1;
        }
        return runningTaskInfo.userId;
    }

    public final void invertDividerPosition(WindowContainerTransaction windowContainerTransaction) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        int invertedCurrentPosition = stageCoordinator.getInvertedCurrentPosition();
        stageCoordinator.mSplitLayout.updateSnapAlgorithm(invertedCurrentPosition);
        stageCoordinator.mSplitLayout.setDividePosition(stageCoordinator.mSplitLayout.getDividerSnapAlgorithm().calculateSnapTarget(invertedCurrentPosition, 0.0f).position, windowContainerTransaction, true);
    }

    public final boolean isLaunchToSplit(TaskInfo taskInfo) {
        if (this.mStageCoordinator.getActivateSplitPosition(taskInfo) != -1) {
            return true;
        }
        return false;
    }

    public final boolean isMultiSplitScreenVisible() {
        return this.mStageCoordinator.isMultiSplitScreenVisible();
    }

    public final boolean isSplitScreenActive() {
        return this.mStageCoordinator.mMainStage.mIsActive;
    }

    public final boolean isSplitScreenFeasible(boolean z) {
        SplitLayout splitLayout = this.mStageCoordinator.mSplitLayout;
        if (splitLayout != null && splitLayout.isSplitScreenFeasible(z)) {
            return true;
        }
        return false;
    }

    public final boolean isSplitScreenVisible() {
        return this.mStageCoordinator.isSplitScreenVisible();
    }

    public final boolean isTaskInSplitScreen(int i) {
        return this.mStageCoordinator.getStageOfTask(i) != -1;
    }

    public final boolean isTaskRoot(int i) {
        boolean z;
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        if (stageCoordinator == null) {
            return false;
        }
        ActivityManager.RunningTaskInfo runningTaskInfo = stageCoordinator.mRootTaskInfo;
        if (runningTaskInfo != null && runningTaskInfo.taskId == i) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isTaskRootOrStageRoot(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        ActivityManager.RunningTaskInfo runningTaskInfo = stageCoordinator.mRootTaskInfo;
        if (runningTaskInfo != null && runningTaskInfo.taskId == i) {
            return true;
        }
        ActivityManager.RunningTaskInfo runningTaskInfo2 = stageCoordinator.mMainStage.mRootTaskInfo;
        if (runningTaskInfo2 != null && runningTaskInfo2.taskId == i) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        ActivityManager.RunningTaskInfo runningTaskInfo3 = stageCoordinator.mSideStage.mRootTaskInfo;
        if (runningTaskInfo3 != null && runningTaskInfo3.taskId == i) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return true;
        }
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
            ActivityManager.RunningTaskInfo runningTaskInfo4 = stageCoordinator.mCellStage.mRootTaskInfo;
            if (runningTaskInfo4 != null && runningTaskInfo4.taskId == i) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                return true;
            }
        }
        return false;
    }

    public final boolean isVerticalDivision() {
        return this.mStageCoordinator.isVerticalDivision();
    }

    public final void maximizeSplitTask(WindowContainerToken windowContainerToken) {
        this.mStageCoordinator.maximizeSplitTask(windowContainerToken, null);
    }

    public final void moveSplitToFreeform(WindowContainerToken windowContainerToken, Rect rect, boolean z) {
        this.mStageCoordinator.moveSplitToFreeform(windowContainerToken, rect, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        if (r2.mSideStagePosition == 1) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000d, code lost:
    
        if (r2.mSideStagePosition == 0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001e, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        r3 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void moveTaskToFullscreen(int r3) {
        /*
            r2 = this;
            com.android.wm.shell.splitscreen.StageCoordinator r2 = r2.mStageCoordinator
            com.android.wm.shell.splitscreen.MainStage r0 = r2.mMainStage
            boolean r0 = r0.containsTask(r3)
            r1 = 1
            if (r0 == 0) goto L10
            int r3 = r2.mSideStagePosition
            if (r3 != 0) goto L1e
            goto L1c
        L10:
            com.android.wm.shell.splitscreen.SideStage r0 = r2.mSideStage
            boolean r3 = r0.containsTask(r3)
            if (r3 == 0) goto L27
            int r3 = r2.mSideStagePosition
            if (r3 != r1) goto L1e
        L1c:
            r3 = r1
            goto L1f
        L1e:
            r3 = 0
        L1f:
            com.android.wm.shell.common.split.SplitLayout r2 = r2.mSplitLayout
            r3 = r3 ^ r1
            r0 = 11
            r2.flingDividerToDismiss(r0, r3)
        L27:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenController.moveTaskToFullscreen(int):void");
    }

    public final void moveToStage(int i, int i2, WindowContainerTransaction windowContainerTransaction) {
        int i3;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskOrganizer.getRunningTaskInfo(i);
        if (runningTaskInfo != null) {
            if (!isTaskInSplitScreen(i)) {
                StageCoordinator stageCoordinator = this.mStageCoordinator;
                stageCoordinator.prepareEnterSplitScreen(windowContainerTransaction, runningTaskInfo, i2, false);
                if (Transitions.ENABLE_SHELL_TRANSITIONS) {
                    SplitScreenTransitions splitScreenTransitions = stageCoordinator.mSplitTransitions;
                    if (stageCoordinator.isSplitScreenVisible()) {
                        i3 = 1005;
                    } else {
                        i3 = VolteConstants.ErrorCode.CLIENT_ERROR_NOT_ALLOWED_URI;
                    }
                    splitScreenTransitions.startEnterTransition(windowContainerTransaction, null, stageCoordinator, i3, !stageCoordinator.mIsDropEntering);
                } else {
                    SyncTransactionQueue syncTransactionQueue = stageCoordinator.mSyncQueue;
                    syncTransactionQueue.queue(windowContainerTransaction);
                    syncTransactionQueue.runInSync(new StageCoordinator$$ExternalSyntheticLambda0(stageCoordinator, 3));
                }
                stageCoordinator.mIsDropEntering = false;
                return;
            }
            throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("taskId is in split", i));
        }
        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unknown taskId", i));
    }

    public final void onDroppedToSplit(int i, InstanceId instanceId) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        if (!stageCoordinator.isSplitScreenVisible()) {
            stageCoordinator.mIsDropEntering = true;
        }
        if (!stageCoordinator.isSplitScreenVisible() && !Transitions.ENABLE_SHELL_TRANSITIONS) {
            stageCoordinator.exitSplitScreen(null, 10);
        }
        SplitscreenEventLogger splitscreenEventLogger = stageCoordinator.mLogger;
        splitscreenEventLogger.mDragEnterPosition = i;
        splitscreenEventLogger.mEnterSessionId = instanceId;
        splitscreenEventLogger.mEnterReason = 2;
    }

    public final void onFreeformToSplitRequested(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, int i, boolean z2, Rect rect, boolean z3) {
        this.mStageCoordinator.onFreeformToSplitRequested(runningTaskInfo, z, i, z2, rect, z3, "freeform_to_split");
    }

    public void onInit() {
        BiConsumer biConsumer = new BiConsumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$$ExternalSyntheticLambda0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                SplitScreenController splitScreenController = SplitScreenController.this;
                PrintWriter printWriter = (PrintWriter) obj;
                String str = (String) obj2;
                splitScreenController.getClass();
                printWriter.println(str + "SplitScreenController");
                StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                if (stageCoordinator != null) {
                    stageCoordinator.dump(printWriter, str);
                }
            }
        };
        ShellCommandHandler shellCommandHandler = this.mShellCommandHandler;
        shellCommandHandler.addDumpCallback(biConsumer, this);
        shellCommandHandler.addCommandCallback("splitscreen", this.mSplitScreenShellCommandHandler, this);
        ShellController shellController = this.mShellController;
        CopyOnWriteArrayList copyOnWriteArrayList = shellController.mKeyguardChangeListeners;
        copyOnWriteArrayList.remove(this);
        copyOnWriteArrayList.add(this);
        shellController.addExternalInterface(QuickStepContract.KEY_EXTRA_SHELL_SPLIT_SCREEN, new Supplier() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                SplitScreenController splitScreenController = SplitScreenController.this;
                splitScreenController.getClass();
                return new SplitScreenController.ISplitScreenImpl(splitScreenController);
            }
        }, this);
        if (this.mStageCoordinator == null) {
            this.mStageCoordinator = createStageCoordinator();
            DividerResizeController dividerResizeController = new DividerResizeController(this.mContext, this.mMainExecutor);
            this.mDividerResizeController = dividerResizeController;
            StageCoordinator stageCoordinator = this.mStageCoordinator;
            stageCoordinator.mDividerResizeController = dividerResizeController;
            dividerResizeController.mStageCoordinator = stageCoordinator;
        }
        this.mDragAndDropController.ifPresent(new SplitScreenController$$ExternalSyntheticLambda2(this, 0));
    }

    @Override // com.android.wm.shell.sysui.KeyguardChangeListener
    public final void onKeyguardVisibilityChanged(boolean z, boolean z2) {
        boolean z3;
        InputMethodManager inputMethodManager;
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        boolean z4 = stageCoordinator.mKeyguardShowing;
        stageCoordinator.mKeyguardShowing = z;
        boolean z5 = stageCoordinator.mMainStage.mIsActive;
        Context context = stageCoordinator.mContext;
        if (!z5) {
            if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION) {
                stageCoordinator.updateSplitDivisionIfNeeded();
            }
            if (z4 != z) {
                int i = context.getResources().getConfiguration().orientation;
                if (!z && i != stageCoordinator.mOrientation) {
                    stageCoordinator.handleLayoutSizeChange(stageCoordinator.mSplitLayout, false);
                }
                stageCoordinator.mOrientation = i;
                return;
            }
            return;
        }
        if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY && !z && stageCoordinator.mTopStageAfterFoldDismiss != -1) {
            stageCoordinator.mTopStageAfterFoldDismiss = -1;
            if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION) {
                stageCoordinator.updateSplitDivisionIfNeeded();
            }
            if (stageCoordinator.updateCoverDisplaySplitLayoutIfNeeded()) {
                stageCoordinator.mSplitLayout.update(null);
                stageCoordinator.onLayoutSizeChanged(stageCoordinator.mSplitLayout, null);
            }
        } else if (z) {
            if (stageCoordinator.mSplitLayout.mImePositionProcessor.mYOffsetForIme != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 && (inputMethodManager = (InputMethodManager) context.getSystemService(InputMethodManager.class)) != null && inputMethodManager.isInputMethodShown()) {
                ((HandlerExecutor) stageCoordinator.mMainExecutor).execute(new StageCoordinator$$ExternalSyntheticLambda6(inputMethodManager, 0));
            }
        }
        if (stageCoordinator.isSplitScreenVisible()) {
            stageCoordinator.setDividerVisibility(!stageCoordinator.mKeyguardShowing, null);
        }
    }

    public final void onPipToSplitRequested(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, int i, boolean z2, Rect rect, boolean z3) {
        this.mStageCoordinator.onFreeformToSplitRequested(runningTaskInfo, z, i, z2, rect, z3, "pip_to_split");
    }

    public final void openInSplitWithAllApps(int i, Intent intent, UserHandle userHandle) {
        int i2;
        if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION && !MultiWindowUtils.isInSubDisplay(this.mContext)) {
            i2 = 0;
        } else {
            i2 = -1;
        }
        if (i != -1) {
            this.mStageCoordinator.startTaskWithAllApps(i, new CallerInfo(), i2);
        } else {
            if (userHandle == null) {
                userHandle = UserHandle.CURRENT;
            }
            startPendingIntentAndIntent(PendingIntent.getActivityAsUser(this.mContext, 0, intent, 1107296256, null, userHandle), MultiWindowUtils.getEdgeAllAppsActivityIntent(intent.getComponent(), userHandle.getIdentifier(), -1), 1, i2);
        }
    }

    public final void prepareEnterSplitScreen(int i, ActivityManager.RunningTaskInfo runningTaskInfo, WindowContainerTransaction windowContainerTransaction) {
        this.mStageCoordinator.prepareEnterSplitScreen(windowContainerTransaction, runningTaskInfo, i, false);
    }

    public final void prepareExitSplitScreen(WindowContainerTransaction windowContainerTransaction, int i) {
        this.mStageCoordinator.prepareExitSplitScreen(i, windowContainerTransaction, true);
    }

    public final boolean removeFromSideStage(int i) {
        WindowContainerToken windowContainerToken;
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        stageCoordinator.getClass();
        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
        MainStage mainStage = stageCoordinator.mMainStage;
        if (mainStage.mIsActive) {
            windowContainerToken = mainStage.mRootTaskInfo.token;
        } else {
            windowContainerToken = null;
        }
        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) stageCoordinator.mSideStage.mChildrenTaskInfo.get(i);
        boolean z = false;
        if (runningTaskInfo != null) {
            windowContainerTransaction.reparent(runningTaskInfo.token, windowContainerToken, false);
            z = true;
        }
        stageCoordinator.mTaskOrganizer.applyTransaction(windowContainerTransaction);
        return z;
    }

    public final SurfaceControl reparentSplitTasksForAnimation(RemoteAnimationTarget[] remoteAnimationTargetArr, SurfaceControl.Transaction transaction, String str) {
        SurfaceControl.Builder callsite = new SurfaceControl.Builder(new SurfaceSession()).setContainerLayer().setName("RecentsAnimationSplitTasks").setHidden(false).setCallsite(str);
        callsite.setParent((SurfaceControl) this.mRootTDAOrganizer.mLeashes.get(0));
        SurfaceControl build = callsite.build();
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            transaction.reparent(remoteAnimationTarget.leash, build);
            SurfaceControl surfaceControl = remoteAnimationTarget.leash;
            Rect rect = remoteAnimationTarget.screenSpaceBounds;
            transaction.setPosition(surfaceControl, rect.left, rect.top);
        }
        return build;
    }

    public final boolean rotateMultiSplitWithTransition() {
        return this.mStageCoordinator.rotateMultiSplitWithTransition();
    }

    public final void setDividerVisibilityFromNS(boolean z) {
        this.mStageCoordinator.setDividerVisibility(z, null);
    }

    public final void setSideStagePosition(int i, WindowContainerTransaction windowContainerTransaction) {
        this.mStageCoordinator.setSideStagePosition(i, -1, windowContainerTransaction, true);
    }

    public final void setSplitInvisible() {
        this.mStageCoordinator.setSplitsVisible(false, true);
    }

    public final void setSplitVisible() {
        this.mStageCoordinator.setSplitsVisible(true, false);
    }

    public final void setWindowDecorViewModel(Optional optional) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        if (stageCoordinator != null) {
            stageCoordinator.mMainStage.mWindowDecorViewModel = optional;
            stageCoordinator.mSideStage.mWindowDecorViewModel = optional;
            if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER) {
                stageCoordinator.mCellStage.mWindowDecorViewModel = optional;
            }
        }
    }

    @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
    public final void startDragAndSplit(Intent intent, int i, Bundle bundle, int i2, int i3, int i4) {
        startIntent(PendingIntent.getActivityAsUser(this.mContext, 0, intent, 1107296256, null, new UserHandle(i2)), i2, null, i, bundle, i3, i4);
    }

    public final void startIntent(Intent intent, UserHandle userHandle, int i, int i2) {
        startIntent(intent, userHandle, i, i2, (Bundle) null);
    }

    public final void startIntentToCell(PendingIntent pendingIntent, Intent intent, UserHandle userHandle, int i) {
        if (CoreRune.MW_MULTI_SPLIT_TASK_ORGANIZER && this.mStageCoordinator.isSplitScreenVisible()) {
            Intent intent2 = new Intent();
            intent2.addFlags(262144);
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            if (this.mStageCoordinator.isMultiSplitActive()) {
                makeBasic.setResumedAffordanceAnimation();
            }
            this.mStageCoordinator.startIntentToCell(pendingIntent, intent, intent2, userHandle, i, makeBasic.toBundle());
        }
    }

    public final void startIntents(Intent intent, Intent intent2, UserHandle userHandle, UserHandle userHandle2, int i, float f, int i2, RemoteTransition remoteTransition) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        stageCoordinator.getClass();
        stageCoordinator.startSplitScreen(-1, null, intent, intent2, null, userHandle == null ? UserHandle.CURRENT : userHandle, userHandle2 == null ? UserHandle.CURRENT : userHandle2, null, i, 0, f, 0.0f, 1, i2, null, remoteTransition);
    }

    public final void startPendingIntentAndIntent(PendingIntent pendingIntent, Intent intent, int i, int i2) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        stageCoordinator.getClass();
        stageCoordinator.startSplitScreen(-1, pendingIntent, null, intent, null, null, UserHandle.CURRENT, null, i, 0, 0.5f, 0.0f, 2, i2, null, null);
    }

    @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
    public final void startShortcut(String str, String str2, int i, Bundle bundle, UserHandle userHandle) {
        startShortcut(str, str2, i, bundle, userHandle, -1, 0);
    }

    public final void startSplitTasks(int i, int i2, int i3, boolean z, int i4, float f, float f2) {
        try {
            this.mStageCoordinator.startSplitTasks(i, i2, i3, z, i4, f, f2);
        } catch (Exception e) {
            Slog.e("SplitScreenController", "Failed to launch tasks", e);
        }
    }

    @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
    public final void startTask(int i, int i2, Bundle bundle) {
        startTask(i, i2, bundle, -1, 0, false);
    }

    public final void startTaskAndIntent(int i, Intent intent, int i2, int i3) {
        this.mStageCoordinator.startTaskAndIntent(i, intent, i2, i3, null);
    }

    public final void startTasks(int i, Bundle bundle, int i2, Bundle bundle2, int i3, float f, RemoteTransition remoteTransition, InstanceId instanceId) {
        try {
            this.mStageCoordinator.startTasks(i, bundle, i2, bundle2, -1, null, i3, f, 0, 0.5f, remoteTransition, null, -1, null);
        } catch (Exception e) {
            Slog.e("SplitScreenController", "Failed to launch tasks", e);
        }
    }

    public boolean supportMultiInstancesSplit(String str) {
        if (str != null) {
            int i = 0;
            while (true) {
                String[] strArr = this.mAppsSupportMultiInstances;
                if (i >= strArr.length) {
                    break;
                }
                if (strArr[i].equals(str)) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    public final void swapStageTasks(int i, int i2, WindowContainerTransaction windowContainerTransaction) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        StageTaskListener stageTaskListenerByStageType = stageCoordinator.getStageTaskListenerByStageType(2);
        StageTaskListener stageTaskListenerByStageType2 = stageCoordinator.getStageTaskListenerByStageType(i2);
        WindowContainerToken windowContainerToken = stageTaskListenerByStageType2.mRootTaskInfo.token;
        StageTaskListener.RunningTaskInfoList runningTaskInfoList = stageTaskListenerByStageType.mChildrenTaskInfo;
        int size = runningTaskInfoList.size();
        for (int i3 = 0; i3 < size; i3++) {
            windowContainerTransaction.reparent(((ActivityManager.RunningTaskInfo) runningTaskInfoList.valueAt(i3)).token, windowContainerToken, true);
        }
        WindowContainerToken windowContainerToken2 = stageTaskListenerByStageType.mRootTaskInfo.token;
        StageTaskListener.RunningTaskInfoList runningTaskInfoList2 = stageTaskListenerByStageType2.mChildrenTaskInfo;
        int size2 = runningTaskInfoList2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            windowContainerTransaction.reparent(((ActivityManager.RunningTaskInfo) runningTaskInfoList2.valueAt(i4)).token, windowContainerToken2, true);
        }
    }

    public final void swapTasksInSplitScreenMode() {
        this.mStageCoordinator.swapTasksInSplitScreenMode$1();
    }

    public final void toggleSplitScreen(int i) {
        ComponentName componentName;
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        int i2 = 1;
        int i3 = -1;
        if (stageCoordinator.mMainStage.mIsActive && stageCoordinator.isSplitScreenVisible()) {
            StageCoordinator stageCoordinator2 = this.mStageCoordinator;
            StageTaskListener stageTaskListener = stageCoordinator2.mSideStage;
            if (!stageTaskListener.isFocused()) {
                stageTaskListener = stageCoordinator2.mMainStage;
            }
            ActivityManager.RunningTaskInfo runningTaskInfo = stageTaskListener.mRootTaskInfo;
            if (runningTaskInfo != null && (componentName = runningTaskInfo.topActivity) != null) {
                if (MultiWindowUtils.isAppsEdgeActivity(componentName)) {
                    if (stageTaskListener.mStageType != 0) {
                        i2 = 0;
                    }
                    i3 = this.mStageCoordinator.getTaskIdByStageType(i2);
                } else {
                    StageCoordinator stageCoordinator3 = this.mStageCoordinator;
                    i3 = stageCoordinator3.getTaskIdByStageType(stageCoordinator3.getFocusedStageType());
                }
            } else {
                Slog.d("SplitScreenController", "focusStageRootTaskInfo is null, " + runningTaskInfo);
            }
            exitSplitScreen(i3, 13);
            return;
        }
        ActivityManager.RunningTaskInfo toggleSplitScreenTarget = getToggleSplitScreenTarget();
        if (toggleSplitScreenTarget == null) {
            return;
        }
        Intent edgeAllAppsActivityIntent = MultiWindowUtils.getEdgeAllAppsActivityIntent(toggleSplitScreenTarget.baseIntent.getComponent(), toggleSplitScreenTarget.userId, toggleSplitScreenTarget.taskId);
        if (CoreRune.MW_MULTI_SPLIT_CREATE_MODE && !MultiWindowUtils.isInSubDisplay(this.mContext)) {
            i3 = 0;
        }
        StageCoordinator stageCoordinator4 = this.mStageCoordinator;
        if (!stageCoordinator4.isLandscape() || stageCoordinator4.mSplitLayout.mRotation != 3 || (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY && !stageCoordinator4.isInSubDisplay())) {
            i2 = 0;
        }
        if (i2 != 0) {
            i = 0;
        }
        startIntent(edgeAllAppsActivityIntent, null, i, i3);
    }

    public final void updateMultiSplitLayout(MultiSplitLayoutInfo multiSplitLayoutInfo, boolean z, WindowContainerTransaction windowContainerTransaction) {
        this.mStageCoordinator.updateMultiSplitLayout(multiSplitLayoutInfo, true, windowContainerTransaction);
    }

    public final void updateSplitScreenSurfaces(SurfaceControl.Transaction transaction) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        stageCoordinator.updateSurfaceBounds(stageCoordinator.mSplitLayout, transaction, false);
        stageCoordinator.mSplitLayout.update(transaction);
    }

    public final void updateSurfaceBoundsForNS(SurfaceControl.Transaction transaction) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        stageCoordinator.updateSurfaceBounds(stageCoordinator.mSplitLayout, transaction, false);
    }

    public final boolean isTaskInSplitScreen(WindowContainerToken windowContainerToken) {
        return this.mStageCoordinator.getSplitItemPosition(windowContainerToken) != -1;
    }

    public final void startIntent(Intent intent, UserHandle userHandle, int i, int i2, Bundle bundle) {
        UserHandle userHandle2 = userHandle == null ? UserHandle.CURRENT : userHandle;
        Slog.d("SplitScreenController", "startIntent: position=" + i);
        PendingIntent activityAsUser = PendingIntent.getActivityAsUser(this.mContext, 0, intent, 1107296256, null, userHandle2);
        if (!this.mStageCoordinator.mMainStage.mIsActive && getToggleSplitScreenTarget() == null) {
            try {
                activityAsUser.send(this.mContext, 0, null, null, null, null, bundle);
                return;
            } catch (PendingIntent.CanceledException e) {
                e.printStackTrace();
                return;
            }
        }
        startIntent(activityAsUser, userHandle2.getIdentifier(), intent, i, bundle, i2, 0);
    }

    @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
    public final void startShortcut(String str, String str2, int i, Bundle bundle, UserHandle userHandle, int i2, int i3) {
        Bundle resolveStartStage;
        if (CoreRune.MW_DND_MULTI_SPLIT_DROP_TARGET && this.mStageCoordinator.isSplitScreenVisible() && i3 != 0) {
            resolveStartStage = this.mStageCoordinator.resolveStartCellStage(-1, i3, bundle, null);
        } else {
            resolveStartStage = this.mStageCoordinator.resolveStartStage(-1, i, bundle, null, i2);
        }
        if (resolveStartStage == null) {
            resolveStartStage = new Bundle();
        }
        ActivityOptions fromBundle = ActivityOptions.fromBundle(resolveStartStage);
        SplitScreenUtils.samePackage(userHandle.getIdentifier(), getUserId(SplitScreenUtils.reverseSplitPosition(i)), str, getPackageName(SplitScreenUtils.reverseSplitPosition(i)));
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        Bundle bundle2 = fromBundle.toBundle();
        StageCoordinator.AnonymousClass2 anonymousClass2 = new StageCoordinator.AnonymousClass2(!stageCoordinator.mMainStage.mIsActive, i);
        Bundle resolveStartStage2 = stageCoordinator.resolveStartStage(-1, i, bundle2, null);
        RemoteAnimationAdapter remoteAnimationAdapter = new RemoteAnimationAdapter(anonymousClass2, 0L, 0L);
        ActivityOptions fromBundle2 = ActivityOptions.fromBundle(resolveStartStage2);
        fromBundle2.setApplyNoUserActionFlagForShortcut(true);
        fromBundle2.update(ActivityOptions.makeRemoteAnimation(remoteAnimationAdapter));
        try {
            ((LauncherApps) stageCoordinator.mContext.getSystemService(LauncherApps.class)).startShortcut(str, str2, null, fromBundle2.toBundle(), userHandle);
        } catch (ActivityNotFoundException e) {
            Slog.e("StageCoordinator", "Failed to launch shortcut", e);
        }
    }

    @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
    public final void startTask(int i, final int i2, Bundle bundle, int i3, int i4, boolean z) {
        Bundle bundle2;
        int i5;
        if (z && i2 != -1) {
            StageCoordinator stageCoordinator = this.mStageCoordinator;
            stageCoordinator.getClass();
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            ActivityOptions fromBundle = ActivityOptions.fromBundle(bundle);
            if (fromBundle != null) {
                fromBundle.setLaunchedFromDnD(true);
                bundle2 = fromBundle.toBundle();
            } else {
                bundle2 = bundle;
            }
            boolean isVisibleTaskByTaskIdInDexDisplay = MultiWindowManager.getInstance().isVisibleTaskByTaskIdInDexDisplay(i);
            boolean z2 = CoreRune.MW_DND_MULTI_SPLIT_DROP_TARGET;
            ShellTaskOrganizer shellTaskOrganizer = stageCoordinator.mTaskOrganizer;
            if (z2 && stageCoordinator.isSplitScreenVisible() && i4 != 0) {
                windowContainerTransaction.startTask(i, stageCoordinator.resolveStartCellStage(-1, i4, bundle2, windowContainerTransaction));
                if ((CoreRune.MW_SPLIT_STACKING && stageCoordinator.isMultiSplitScreenVisible()) || isVisibleTaskByTaskIdInDexDisplay) {
                    shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                    return;
                }
                if (CoreRune.MW_MULTI_SPLIT_BOUNDS_POLICY) {
                    stageCoordinator.mSplitLayout.setCellDividerRatio(0.5f, i4, true, false);
                }
                stageCoordinator.prepareEnterMultiSplitScreen(i4, windowContainerTransaction);
                if (CoreRune.MW_MULTI_SPLIT_SHELL_TRANSITION) {
                    stageCoordinator.applyCellHostResizeTransition(windowContainerTransaction);
                }
                i5 = 1100;
            } else {
                windowContainerTransaction.startTask(i, stageCoordinator.resolveStartStage(-1, i2, bundle2, windowContainerTransaction, i3));
                if ((CoreRune.MW_SPLIT_STACKING && stageCoordinator.isSplitScreenVisible()) || isVisibleTaskByTaskIdInDexDisplay) {
                    shellTaskOrganizer.applyTransaction(windowContainerTransaction);
                    return;
                } else {
                    i5 = stageCoordinator.mMainStage.mIsActive ? 1005 : VolteConstants.ErrorCode.CLIENT_ERROR_NOT_ALLOWED_URI;
                    stageCoordinator.prepareEnterSplitScreen(windowContainerTransaction, null, i2, false);
                }
            }
            stageCoordinator.mSplitTransitions.startEnterTransition(windowContainerTransaction, null, stageCoordinator, i5, false);
            return;
        }
        final int[] iArr = new int[1];
        IRemoteAnimationRunner.Stub stub = new IRemoteAnimationRunner.Stub() { // from class: com.android.wm.shell.splitscreen.SplitScreenController.3
            public final void onAnimationCancelled() {
                WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                StageCoordinator stageCoordinator2 = SplitScreenController.this.mStageCoordinator;
                stageCoordinator2.mMainStage.evictInvisibleChildren(windowContainerTransaction2);
                stageCoordinator2.mSideStage.evictInvisibleChildren(windowContainerTransaction2);
                SplitScreenController.this.mSyncQueue.queue(windowContainerTransaction2);
            }

            public final void onAnimationStart(int i6, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
                try {
                    iRemoteAnimationFinishedCallback.onAnimationFinished();
                } catch (RemoteException e) {
                    Slog.e("SplitScreenController", "Failed to invoke onAnimationFinished", e);
                }
                int i7 = iArr[0];
                if (i7 == 0 || i7 == 2) {
                    WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                    StageCoordinator stageCoordinator2 = SplitScreenController.this.mStageCoordinator;
                    if (i2 == stageCoordinator2.mSideStagePosition) {
                        stageCoordinator2.mSideStage.evictNonOpeningChildren(remoteAnimationTargetArr, windowContainerTransaction2);
                    } else {
                        stageCoordinator2.mMainStage.evictNonOpeningChildren(remoteAnimationTargetArr, windowContainerTransaction2);
                    }
                    SplitScreenController.this.mSyncQueue.queue(windowContainerTransaction2);
                }
            }
        };
        Bundle resolveStartStage = this.mStageCoordinator.resolveStartStage(-1, i2, bundle, null);
        RemoteAnimationAdapter remoteAnimationAdapter = new RemoteAnimationAdapter(stub, 0L, 0L);
        ActivityOptions fromBundle2 = ActivityOptions.fromBundle(resolveStartStage);
        fromBundle2.update(ActivityOptions.makeRemoteAnimation(remoteAnimationAdapter));
        try {
            iArr[0] = ActivityTaskManager.getService().startActivityFromRecents(i, fromBundle2.toBundle());
        } catch (RemoteException e) {
            Slog.e("SplitScreenController", "Failed to launch task", e);
        }
    }

    public final void startIntents(Intent intent, Intent intent2, Intent intent3, UserHandle userHandle, UserHandle userHandle2, UserHandle userHandle3, int i, int i2, float f, float f2, int i3, RemoteTransition remoteTransition) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        stageCoordinator.getClass();
        stageCoordinator.startSplitScreen(-1, null, intent, intent2, intent3, userHandle == null ? UserHandle.CURRENT : userHandle, userHandle2 == null ? UserHandle.CURRENT : userHandle2, userHandle3 == null ? UserHandle.CURRENT : userHandle3, i, i2, f, f2, 1, i3, null, remoteTransition);
    }

    public final Rect getStageBounds(int i) {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        if (i == 0) {
            return stageCoordinator.getMainStageBounds();
        }
        if (i == 1) {
            return stageCoordinator.getSideStageBounds();
        }
        if (i == 2) {
            SplitLayout splitLayout = stageCoordinator.mSplitLayout;
            splitLayout.getClass();
            return new Rect(splitLayout.mBounds3);
        }
        stageCoordinator.getClass();
        return null;
    }

    @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
    public final void startIntent(int i, int i2, PendingIntent pendingIntent, Intent intent, Bundle bundle) {
        startIntent(pendingIntent, i, intent, i2, bundle, -1, 0);
    }

    @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
    public final void startIntent(PendingIntent pendingIntent, int i, Intent intent, int i2, Bundle bundle, int i3, int i4) {
        if (intent == null) {
            intent = new Intent();
        }
        Intent intent2 = intent;
        intent2.addFlags(262144);
        SplitScreenUtils.samePackage(i, getUserId(SplitScreenUtils.reverseSplitPosition(i2)), SplitScreenUtils.getPackageName(pendingIntent), getPackageName(SplitScreenUtils.reverseSplitPosition(i2)));
        if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION) {
            this.mStageCoordinator.startIntent(pendingIntent, intent2, i2, bundle, i3, i4);
        } else {
            this.mStageCoordinator.startIntent(pendingIntent, intent2, i2, bundle, -1, 0);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.wm.shell.splitscreen.SplitScreenController$1] */
    public SplitScreenController(Context context, ShellInit shellInit, ShellCommandHandler shellCommandHandler, ShellController shellController, ShellTaskOrganizer shellTaskOrganizer, SyncTransactionQueue syncTransactionQueue, RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer, DisplayController displayController, DisplayImeController displayImeController, DisplayInsetsController displayInsetsController, DragAndDropController dragAndDropController, Transitions transitions, TransactionPool transactionPool, IconProvider iconProvider, RecentTasksController recentTasksController, ShellExecutor shellExecutor, StageCoordinator stageCoordinator) {
        this.mImpl = new SplitScreenImpl(this, 0);
        this.mConnection = new ServiceConnection() { // from class: com.android.wm.shell.splitscreen.SplitScreenController.1
            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Slog.d("SplitScreenProxyService", "onServiceConnected. inject splitController obj");
                SplitScreenProxyService splitScreenProxyService = (SplitScreenProxyService) LocalServices.getService(SplitScreenProxyService.class);
                if (splitScreenProxyService != null) {
                    SplitScreenController splitScreenController = SplitScreenController.this;
                    splitScreenProxyService.mSplitScreenController = splitScreenController;
                    splitScreenProxyService.mRecentTasksController = (RecentTasksController) splitScreenController.mRecentTasksOptional.get();
                    SplitScreenController.this.mService = splitScreenProxyService;
                }
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
            }
        };
        this.mFocusedTaskPosition = 0;
        new Impl();
        new CopyOnWriteArrayList();
        this.mShellCommandHandler = shellCommandHandler;
        this.mShellController = shellController;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mSyncQueue = syncTransactionQueue;
        this.mContext = context;
        this.mRootTDAOrganizer = rootTaskDisplayAreaOrganizer;
        this.mMainExecutor = shellExecutor;
        this.mDisplayController = displayController;
        this.mDisplayImeController = displayImeController;
        this.mDisplayInsetsController = displayInsetsController;
        this.mDragAndDropController = Optional.of(dragAndDropController);
        this.mTransitions = transitions;
        this.mTransactionPool = transactionPool;
        this.mIconProvider = iconProvider;
        this.mRecentTasksOptional = Optional.of(recentTasksController);
        this.mStageCoordinator = stageCoordinator;
        this.mSplitScreenShellCommandHandler = new SplitScreenShellCommandHandler(this);
        shellInit.addInitCallback(new SplitScreenController$$ExternalSyntheticLambda3(1, this), this);
        this.mAppsSupportMultiInstances = context.getResources().getStringArray(R.array.config_appsSupportMultiInstancesSplit);
    }
}
