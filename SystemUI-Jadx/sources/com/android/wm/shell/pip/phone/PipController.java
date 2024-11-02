package com.android.wm.shell.pip.phone;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.media.session.MediaSessionManager;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.ArraySet;
import android.util.Log;
import android.util.Size;
import android.util.Slog;
import android.window.WindowContainerTransaction;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.server.LocalServices;
import com.android.systemui.R;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$$ExternalSyntheticLambda0;
import com.android.wm.shell.WindowManagerShellWrapper;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.ExternalInterfaceBinder;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.RemoteCallable;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SingleInstanceRemoteListener;
import com.android.wm.shell.common.TabletopModeController;
import com.android.wm.shell.common.TaskStackListenerImpl;
import com.android.wm.shell.onehanded.OneHandedController;
import com.android.wm.shell.pip.IPip$Stub;
import com.android.wm.shell.pip.IPipAnimationListener;
import com.android.wm.shell.pip.IPipAnimationListener$Stub$Proxy;
import com.android.wm.shell.pip.PinnedStackListenerForwarder;
import com.android.wm.shell.pip.Pip;
import com.android.wm.shell.pip.PipAnimationController;
import com.android.wm.shell.pip.PipAppOpsListener;
import com.android.wm.shell.pip.PipBoundsAlgorithm;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import com.android.wm.shell.pip.PipKeepClearAlgorithmInterface;
import com.android.wm.shell.pip.PipMediaController;
import com.android.wm.shell.pip.PipMediaController$$ExternalSyntheticLambda0;
import com.android.wm.shell.pip.PipMenuControlService;
import com.android.wm.shell.pip.PipParamsChangedForwarder;
import com.android.wm.shell.pip.PipSnapAlgorithm;
import com.android.wm.shell.pip.PipTaskOrganizer;
import com.android.wm.shell.pip.PipTransitionController;
import com.android.wm.shell.pip.PipTransitionState;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.sysui.ConfigurationChangeListener;
import com.android.wm.shell.sysui.KeyguardChangeListener;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.sysui.UserChangeListener;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.rune.CoreRune;
import java.util.Locale;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipController implements PipTransitionController.PipTransitionCallback, RemoteCallable, ConfigurationChangeListener, KeyguardChangeListener, UserChangeListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long PIP_KEEP_CLEAR_AREAS_DELAY = SystemProperties.getLong("persist.wm.debug.pip_keep_clear_areas_delay", 200);
    public final PipAppOpsListener mAppOpsListener;
    public final AnonymousClass6 mConnection;
    public final Context mContext;
    public final DisplayController mDisplayController;
    public final DisplayInsetsController mDisplayInsetsController;
    public final int mEnterAnimationDuration;
    public final PipImpl mImpl;
    public boolean mIsInFixedRotation;
    public boolean mIsKeyguardShowingOrAnimating;
    public final ShellExecutor mMainExecutor;
    public final PipMediaController mMediaController;
    public final PhonePipMenuController mMenuController;
    public final PipController$$ExternalSyntheticLambda1 mMovePipInResponseToKeepClearAreasChangeCallback;
    public Consumer mOnIsInPipStateChangedListener;
    public final Optional mOneHandedController;
    public PipAnimationListener mPinnedStackAnimationRecentsCallback;
    public final PipControllerPinnedTaskListener mPinnedTaskListener;
    public final PipAnimationController mPipAnimationController;
    public final PipBoundsAlgorithm mPipBoundsAlgorithm;
    public final PipBoundsState mPipBoundsState;
    public final PipDisplayLayoutState mPipDisplayLayoutState;
    public PipInputConsumer mPipInputConsumer;
    public final PipKeepClearAlgorithmInterface mPipKeepClearAlgorithm;
    public final PipMotionHelper mPipMotionHelper;
    public final PipParamsChangedForwarder mPipParamsChangedForwarder;
    public final PipSizeSpecHandler mPipSizeSpecHandler;
    public final PipTaskOrganizer mPipTaskOrganizer;
    public final PipTransitionController mPipTransitionController;
    public final PipTransitionState mPipTransitionState;
    public final ShellCommandHandler mShellCommandHandler;
    public final ShellController mShellController;
    public final TabletopModeController mTabletopModeController;
    public final TaskStackListenerImpl mTaskStackListener;
    public final PipTouchHandler mTouchHandler;
    public final WindowManagerShellWrapper mWindowManagerShellWrapper;
    public boolean mEnablePipKeepClearAlgorithm = SystemProperties.getBoolean("persist.wm.debug.enable_pip_keep_clear_algorithm", true);
    public final Rect mTmpInsetBounds = new Rect();
    public final PipController$$ExternalSyntheticLambda2 mRotationController = new PipController$$ExternalSyntheticLambda2(this);
    final DisplayController.OnDisplaysChangedListener mDisplaysChangedListener = new DisplayController.OnDisplaysChangedListener() { // from class: com.android.wm.shell.pip.phone.PipController.1
        @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
        public final void onDisplayAdded(int i) {
            PipController pipController = PipController.this;
            if (i != pipController.mPipDisplayLayoutState.mDisplayId) {
                return;
            }
            pipController.onDisplayChanged(pipController.mDisplayController.getDisplayLayout(i), false);
        }

        @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
        public final void onDisplayConfigurationChanged(int i, Configuration configuration) {
            PipController pipController = PipController.this;
            if (i != pipController.mPipDisplayLayoutState.mDisplayId || configuration.isDexMode()) {
                return;
            }
            pipController.onDisplayChanged(pipController.mDisplayController.getDisplayLayout(i), true);
        }

        @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
        public final void onFixedRotationFinished(int i) {
            PipController.this.mIsInFixedRotation = false;
        }

        @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
        public final void onFixedRotationStarted(int i, int i2) {
            PipController.this.mIsInFixedRotation = true;
        }

        @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
        public final void onKeepClearAreasChanged(int i, Set set, Set set2) {
            PipController pipController = PipController.this;
            if (pipController.mPipDisplayLayoutState.mDisplayId == i && pipController.mEnablePipKeepClearAlgorithm) {
                PipBoundsState pipBoundsState = pipController.mPipBoundsState;
                ArraySet arraySet = (ArraySet) pipBoundsState.mRestrictedKeepClearAreas;
                arraySet.clear();
                arraySet.addAll(set);
                ArraySet arraySet2 = (ArraySet) pipBoundsState.mUnrestrictedKeepClearAreas;
                arraySet2.clear();
                arraySet2.addAll(set2);
                ShellExecutor shellExecutor = pipController.mMainExecutor;
                PipController$$ExternalSyntheticLambda1 pipController$$ExternalSyntheticLambda1 = pipController.mMovePipInResponseToKeepClearAreasChangeCallback;
                ((HandlerExecutor) shellExecutor).removeCallbacks(pipController$$ExternalSyntheticLambda1);
                ((HandlerExecutor) shellExecutor).executeDelayed(PipController.PIP_KEEP_CLEAR_AREAS_DELAY, pipController$$ExternalSyntheticLambda1);
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class IPipImpl extends IPip$Stub implements ExternalInterfaceBinder {
        public PipController mController;
        public final SingleInstanceRemoteListener mListener;
        public final AnonymousClass1 mPipAnimationListener = new PipAnimationListener() { // from class: com.android.wm.shell.pip.phone.PipController.IPipImpl.1
            @Override // com.android.wm.shell.pip.phone.PipController.PipAnimationListener
            public final void onExpandPip() {
                IInterface iInterface = IPipImpl.this.mListener.mListener;
                if (iInterface == null) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call on null listener");
                    return;
                }
                try {
                    ((IPipAnimationListener$Stub$Proxy) ((IPipAnimationListener) iInterface)).onExpandPip();
                } catch (RemoteException e) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call", e);
                }
            }

            @Override // com.android.wm.shell.pip.phone.PipController.PipAnimationListener
            public final void onPipAnimationStarted() {
                IInterface iInterface = IPipImpl.this.mListener.mListener;
                if (iInterface == null) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call on null listener");
                    return;
                }
                try {
                    ((IPipAnimationListener$Stub$Proxy) ((IPipAnimationListener) iInterface)).onPipAnimationStarted();
                } catch (RemoteException e) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call", e);
                }
            }

            @Override // com.android.wm.shell.pip.phone.PipController.PipAnimationListener
            public final void onPipResourceDimensionsChanged(int i, int i2) {
                IInterface iInterface = IPipImpl.this.mListener.mListener;
                if (iInterface == null) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call on null listener");
                    return;
                }
                try {
                    ((IPipAnimationListener$Stub$Proxy) ((IPipAnimationListener) iInterface)).onPipResourceDimensionsChanged(i, i2);
                } catch (RemoteException e) {
                    Slog.e("SingleInstanceRemoteListener", "Failed remote call", e);
                }
            }
        };

        /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.pip.phone.PipController$IPipImpl$1] */
        public IPipImpl(PipController pipController) {
            this.mController = pipController;
            int i = 1;
            this.mListener = new SingleInstanceRemoteListener(pipController, new PipController$$ExternalSyntheticLambda4(this, i), new PipController$IPipImpl$$ExternalSyntheticLambda6(i));
        }

        @Override // com.android.wm.shell.common.ExternalInterfaceBinder
        public final void invalidate() {
            this.mController = null;
            this.mListener.unregister();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface PipAnimationListener {
        void onExpandPip();

        void onPipAnimationStarted();

        void onPipResourceDimensionsChanged(int i, int i2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PipControllerPinnedTaskListener extends PinnedStackListenerForwarder.PinnedTaskListener {
        public /* synthetic */ PipControllerPinnedTaskListener(PipController pipController, int i) {
            this();
        }

        @Override // com.android.wm.shell.pip.PinnedStackListenerForwarder.PinnedTaskListener
        public final void onActivityHidden(ComponentName componentName) {
            PipController pipController = PipController.this;
            if (componentName.equals(pipController.mPipBoundsState.mLastPipComponentName)) {
                pipController.mPipBoundsState.setLastPipComponentName(null);
            }
        }

        @Override // com.android.wm.shell.pip.PinnedStackListenerForwarder.PinnedTaskListener
        public final void onImeVisibilityChanged(boolean z, int i) {
            PipController pipController = PipController.this;
            PipBoundsState pipBoundsState = pipController.mPipBoundsState;
            pipBoundsState.mIsImeShowing = z;
            pipBoundsState.mImeHeight = i;
            PipTouchHandler pipTouchHandler = pipController.mTouchHandler;
            pipTouchHandler.mIsImeShowing = z;
            pipTouchHandler.mImeHeight = i;
            if (z) {
                pipController.updatePipPositionForKeepClearAreas();
            }
        }

        @Override // com.android.wm.shell.pip.PinnedStackListenerForwarder.PinnedTaskListener
        public final void onMovementBoundsChanged(boolean z) {
            PipController pipController = PipController.this;
            int i = PipController.$r8$clinit;
            pipController.updateMovementBounds(null, false, z, false, null);
        }

        private PipControllerPinnedTaskListener() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PipImpl implements Pip {
        public /* synthetic */ PipImpl(PipController pipController, int i) {
            this();
        }

        @Override // com.android.wm.shell.pip.Pip
        public final void addPipExclusionBoundsChangeListener(Consumer consumer) {
            ((HandlerExecutor) PipController.this.mMainExecutor).execute(new PipController$$ExternalSyntheticLambda0(1, this, consumer));
        }

        @Override // com.android.wm.shell.pip.Pip
        public final boolean isExitingPipTask(int i) {
            PipController pipController = PipController.this;
            ActivityManager.RunningTaskInfo runningTaskInfo = pipController.mPipTaskOrganizer.mTaskInfo;
            if (runningTaskInfo != null && runningTaskInfo.taskId == i && !pipController.mPipTransitionState.isInPip()) {
                return true;
            }
            return false;
        }

        @Override // com.android.wm.shell.pip.Pip
        public final void onSystemUiStateChanged(final long j, final boolean z) {
            ((HandlerExecutor) PipController.this.mMainExecutor).execute(new Runnable(z, j) { // from class: com.android.wm.shell.pip.phone.PipController$PipImpl$$ExternalSyntheticLambda0
                public final /* synthetic */ boolean f$1;

                @Override // java.lang.Runnable
                public final void run() {
                    PipController.this.mTouchHandler.mPipResizeGestureHandler.mIsSysUiStateValid = this.f$1;
                }
            });
        }

        @Override // com.android.wm.shell.pip.Pip
        public final void removePipExclusionBoundsChangeListener(Consumer consumer) {
            ((HandlerExecutor) PipController.this.mMainExecutor).execute(new PipController$$ExternalSyntheticLambda0(3, this, consumer));
        }

        @Override // com.android.wm.shell.pip.Pip
        public final void setOnIsInPipStateChangedListener(EdgeBackGestureHandler$$ExternalSyntheticLambda0 edgeBackGestureHandler$$ExternalSyntheticLambda0) {
            ((HandlerExecutor) PipController.this.mMainExecutor).execute(new PipController$$ExternalSyntheticLambda0(2, this, edgeBackGestureHandler$$ExternalSyntheticLambda0));
        }

        @Override // com.android.wm.shell.pip.Pip
        public final void showPictureInPictureMenu() {
            ((HandlerExecutor) PipController.this.mMainExecutor).execute(new PipController$$ExternalSyntheticLambda1(this, 5));
        }

        private PipImpl() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SettingsObserver extends ContentObserver {
        public final Uri mEdgeHandleSizePercentUri;
        public final Uri mEdgeHandlerPositionPercentUri;

        public SettingsObserver(Handler handler) {
            super(handler);
            Uri uriFor = Settings.Global.getUriFor("edge_handle_size_percent");
            this.mEdgeHandleSizePercentUri = uriFor;
            Uri uriFor2 = Settings.System.getUriFor("edge_handler_position_percent");
            this.mEdgeHandlerPositionPercentUri = uriFor2;
            ContentResolver contentResolver = PipController.this.mContext.getContentResolver();
            contentResolver.registerContentObserver(uriFor, false, this, -1);
            contentResolver.registerContentObserver(uriFor2, false, this, -1);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            if (uri == null) {
                return;
            }
            if ((uri.equals(this.mEdgeHandleSizePercentUri) || uri.equals(this.mEdgeHandlerPositionPercentUri)) && PipController.this.mPipBoundsState.isStashed()) {
                PipController pipController = PipController.this;
                PipMotionHelper pipMotionHelper = pipController.mTouchHandler.mMotionHelper;
                Rect bounds = pipController.mPipBoundsState.getBounds();
                pipMotionHelper.adjustPipBoundsForEdge(bounds);
                pipMotionHelper.movePip(bounds, false);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v7, types: [android.content.ServiceConnection, com.android.wm.shell.pip.phone.PipController$6] */
    public PipController(Context context, ShellInit shellInit, ShellCommandHandler shellCommandHandler, ShellController shellController, DisplayController displayController, PipAnimationController pipAnimationController, PipAppOpsListener pipAppOpsListener, PipBoundsAlgorithm pipBoundsAlgorithm, PipKeepClearAlgorithmInterface pipKeepClearAlgorithmInterface, PipBoundsState pipBoundsState, PipSizeSpecHandler pipSizeSpecHandler, PipDisplayLayoutState pipDisplayLayoutState, PipMotionHelper pipMotionHelper, PipMediaController pipMediaController, PhonePipMenuController phonePipMenuController, PipTaskOrganizer pipTaskOrganizer, PipTransitionState pipTransitionState, PipTouchHandler pipTouchHandler, PipTransitionController pipTransitionController, WindowManagerShellWrapper windowManagerShellWrapper, TaskStackListenerImpl taskStackListenerImpl, PipParamsChangedForwarder pipParamsChangedForwarder, DisplayInsetsController displayInsetsController, TabletopModeController tabletopModeController, Optional<OneHandedController> optional, ShellExecutor shellExecutor) {
        int i = 0;
        this.mMovePipInResponseToKeepClearAreasChangeCallback = new PipController$$ExternalSyntheticLambda1(this, i);
        this.mPinnedTaskListener = new PipControllerPinnedTaskListener(this, i);
        ?? r2 = new ServiceConnection() { // from class: com.android.wm.shell.pip.phone.PipController.6
            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                PipMenuControlService pipMenuControlService = (PipMenuControlService) LocalServices.getService(PipMenuControlService.class);
                if (pipMenuControlService != null) {
                    int i2 = PipMenuControlService.$r8$clinit;
                    Log.d("PipMenuControlService", "onServiceConnected. inject PhonePipMenuController");
                    PipController pipController = PipController.this;
                    PhonePipMenuController phonePipMenuController2 = pipController.mMenuController;
                    ShellExecutor shellExecutor2 = pipController.mMainExecutor;
                    pipMenuControlService.mPhonePipMenuController = phonePipMenuController2;
                    pipMenuControlService.mMainExecutor = shellExecutor2;
                }
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                int i2 = PipMenuControlService.$r8$clinit;
                Log.d("PipMenuControlService", "onServiceDisconnected.");
            }
        };
        this.mConnection = r2;
        this.mContext = context;
        this.mShellCommandHandler = shellCommandHandler;
        this.mShellController = shellController;
        this.mImpl = new PipImpl(this, i);
        this.mWindowManagerShellWrapper = windowManagerShellWrapper;
        this.mDisplayController = displayController;
        this.mPipBoundsAlgorithm = pipBoundsAlgorithm;
        this.mPipKeepClearAlgorithm = pipKeepClearAlgorithmInterface;
        this.mPipBoundsState = pipBoundsState;
        this.mPipSizeSpecHandler = pipSizeSpecHandler;
        this.mPipDisplayLayoutState = pipDisplayLayoutState;
        this.mPipMotionHelper = pipMotionHelper;
        this.mPipTaskOrganizer = pipTaskOrganizer;
        this.mPipTransitionState = pipTransitionState;
        this.mMainExecutor = shellExecutor;
        this.mMediaController = pipMediaController;
        this.mMenuController = phonePipMenuController;
        this.mTouchHandler = pipTouchHandler;
        this.mPipAnimationController = pipAnimationController;
        this.mAppOpsListener = pipAppOpsListener;
        this.mOneHandedController = optional;
        this.mPipTransitionController = pipTransitionController;
        this.mTaskStackListener = taskStackListenerImpl;
        this.mEnterAnimationDuration = context.getResources().getInteger(R.integer.config_pipEnterAnimationDuration);
        this.mPipParamsChangedForwarder = pipParamsChangedForwarder;
        this.mDisplayInsetsController = displayInsetsController;
        this.mTabletopModeController = tabletopModeController;
        shellInit.addInitCallback(new PipController$$ExternalSyntheticLambda1(this, 1), this);
        context.bindService(new Intent(context, (Class<?>) PipMenuControlService.class), (ServiceConnection) r2, 1);
        new SettingsObserver(context.getMainThreadHandler());
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final Context getContext() {
        return this.mContext;
    }

    @Override // com.android.wm.shell.common.RemoteCallable
    public final ShellExecutor getRemoteCallExecutor() {
        return this.mMainExecutor;
    }

    public boolean hasPinnedStackAnimationListener() {
        if (this.mPinnedStackAnimationRecentsCallback != null) {
            return true;
        }
        return false;
    }

    @Override // com.android.wm.shell.sysui.ConfigurationChangeListener
    public final void onConfigurationChanged(Configuration configuration) {
        this.mPipBoundsAlgorithm.onConfigurationChanged(this.mContext);
        PipTouchHandler pipTouchHandler = this.mTouchHandler;
        pipTouchHandler.mPipResizeGestureHandler.reloadResources();
        pipTouchHandler.mMotionHelper.synchronizePinnedStackBounds();
        pipTouchHandler.reloadResources();
        if (pipTouchHandler.mPipTaskOrganizer.isInPip()) {
            pipTouchHandler.mPipDismissTargetHandler.getClass();
        }
        PipBoundsState pipBoundsState = this.mPipBoundsState;
        pipBoundsState.onConfigurationChanged();
        this.mPipSizeSpecHandler.reloadResources();
        if (pipBoundsState.isStashed()) {
            PipMotionHelper pipMotionHelper = pipTouchHandler.mMotionHelper;
            Rect bounds = pipBoundsState.getBounds();
            pipMotionHelper.adjustPipBoundsForEdge(bounds);
            pipMotionHelper.movePip(bounds, false);
        }
        PipTaskOrganizer pipTaskOrganizer = this.mPipTaskOrganizer;
        if (pipTaskOrganizer.isInPip()) {
            PhonePipMenuController phonePipMenuController = this.mMenuController;
            if (phonePipMenuController.mLastDensityDpi != configuration.densityDpi || !Locale.getDefault().equals(phonePipMenuController.mLastLocale)) {
                phonePipMenuController.attachPipMenuView();
            }
            phonePipMenuController.setSplitMenuEnabled(pipTaskOrganizer.shouldShowSplitMenu());
        }
    }

    @Override // com.android.wm.shell.sysui.ConfigurationChangeListener
    public final void onDensityOrFontScaleChanged$1() {
        this.mPipTaskOrganizer.mSurfaceTransactionHelper.onDensityOrFontScaleChanged(this.mContext);
        onPipResourceDimensionsChanged();
    }

    public final void onDisplayChanged(DisplayLayout displayLayout, boolean z) {
        boolean z2;
        if (displayLayout == null) {
            Log.w("PipController", "onDisplayChanged - layout is null");
            return;
        }
        DisplayLayout displayLayout2 = this.mPipDisplayLayoutState.getDisplayLayout();
        if (displayLayout2.mWidth == displayLayout.mWidth && displayLayout2.mHeight == displayLayout.mHeight && displayLayout2.mRotation == displayLayout.mRotation && displayLayout2.mDensityDpi == displayLayout.mDensityDpi && Objects.equals(displayLayout2.mCutout, displayLayout.mCutout)) {
            z2 = true;
        } else {
            z2 = false;
        }
        PipTransitionController pipTransitionController = this.mPipTransitionController;
        if (!z2 || (z && pipTransitionController.mDeferBoundsTransaction)) {
            if (pipTransitionController.mDeferBoundsTransaction) {
                pipTransitionController.mDeferBoundsTransaction = false;
            }
            PipAnimationController.PipTransitionAnimator pipTransitionAnimator = this.mPipAnimationController.mCurrentAnimator;
            if (pipTransitionAnimator != null && pipTransitionAnimator.isRunning()) {
                pipTransitionAnimator.cancel();
            }
            onDisplayChangedUncheck(displayLayout, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d3, code lost:
    
        if (r14.getBounds().height() <= (r9.y + 1)) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDisplayChangedUncheck(com.android.wm.shell.common.DisplayLayout r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.phone.PipController.onDisplayChangedUncheck(com.android.wm.shell.common.DisplayLayout, boolean):void");
    }

    @Override // com.android.wm.shell.sysui.KeyguardChangeListener
    public final void onKeyguardDismissAnimationFinished() {
        PipTaskOrganizer pipTaskOrganizer = this.mPipTaskOrganizer;
        if (pipTaskOrganizer.isInPip()) {
            this.mIsKeyguardShowingOrAnimating = false;
            if (pipTaskOrganizer.mWaitForFixedRotation) {
                Log.d("PipController", "mWaitForFixedRotation skip setPipVisibility");
            } else {
                pipTaskOrganizer.setPipVisibility(true);
            }
        }
    }

    @Override // com.android.wm.shell.sysui.KeyguardChangeListener
    public final void onKeyguardVisibilityChanged(boolean z, boolean z2) {
        boolean z3;
        if (this.mPipTransitionState.mState == 4) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z3) {
            return;
        }
        PipTaskOrganizer pipTaskOrganizer = this.mPipTaskOrganizer;
        if (z) {
            this.mIsKeyguardShowingOrAnimating = true;
            PhonePipMenuController phonePipMenuController = this.mMenuController;
            if (phonePipMenuController.isMenuVisible()) {
                phonePipMenuController.mPipMenuView.hideMenu$1();
            }
            pipTaskOrganizer.setPipVisibility(false);
            if (pipTaskOrganizer.isInPip() && pipTaskOrganizer.mIsInSecureFolder) {
                this.mTouchHandler.mMotionHelper.expandLeavePip(false, false);
                return;
            }
            return;
        }
        if (!z2) {
            this.mIsKeyguardShowingOrAnimating = false;
            pipTaskOrganizer.setPipVisibility(true);
        }
    }

    public final void onPipResourceDimensionsChanged() {
        int dimensionPixelSize;
        PipAnimationListener pipAnimationListener = this.mPinnedStackAnimationRecentsCallback;
        if (pipAnimationListener != null) {
            boolean z = CoreRune.MW_PIP_DISABLE_ROUND_CORNER;
            int i = 0;
            Context context = this.mContext;
            if (z) {
                dimensionPixelSize = 0;
            } else {
                dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.pip_corner_radius);
            }
            if (!CoreRune.MW_PIP_DISABLE_ROUND_CORNER) {
                i = context.getResources().getDimensionPixelSize(R.dimen.pip_shadow_radius);
            }
            pipAnimationListener.onPipResourceDimensionsChanged(dimensionPixelSize, i);
        }
    }

    @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
    public final void onPipTransitionCanceled(int i) {
        onPipTransitionFinishedOrCanceled(i);
    }

    @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
    public final void onPipTransitionFinished(int i) {
        onPipTransitionFinishedOrCanceled(i);
    }

    public final void onPipTransitionFinishedOrCanceled(int i) {
        InteractionJankMonitor.getInstance().end(35);
        PipTouchHandler pipTouchHandler = this.mTouchHandler;
        PipTouchState pipTouchState = pipTouchHandler.mTouchState;
        pipTouchState.mAllowTouches = true;
        if (pipTouchState.mIsUserInteracting) {
            pipTouchState.reset();
        }
        pipTouchHandler.mMotionHelper.synchronizePinnedStackBounds();
        pipTouchHandler.updateMovementBounds();
        int i2 = 2;
        if (i == 2) {
            pipTouchHandler.mPipResizeGestureHandler.setUserResizeBounds(pipTouchHandler.mPipBoundsState.getBounds());
        }
        if (i == 2) {
            ((HandlerExecutor) this.mMainExecutor).executeDelayed(150L, new PipController$$ExternalSyntheticLambda1(this, i2));
        }
    }

    @Override // com.android.wm.shell.pip.PipTransitionController.PipTransitionCallback
    public final void onPipTransitionStarted(int i, Rect rect) {
        String str;
        InteractionJankMonitor.Configuration.Builder withSurface = InteractionJankMonitor.Configuration.Builder.withSurface(35, this.mContext, this.mPipTaskOrganizer.mLeash);
        switch (i) {
            case 2:
                str = "TRANSITION_TO_PIP";
                break;
            case 3:
                str = "TRANSITION_LEAVE_PIP";
                break;
            case 4:
                str = "TRANSITION_LEAVE_PIP_TO_SPLIT_SCREEN";
                break;
            case 5:
                str = "TRANSITION_REMOVE_STACK";
                break;
            case 6:
                str = "TRANSITION_SNAP_AFTER_RESIZE";
                break;
            case 7:
                str = "TRANSITION_USER_RESIZE";
                break;
            case 8:
                str = "TRANSITION_EXPAND_OR_UNEXPAND";
                break;
            default:
                str = "TRANSITION_LEAVE_UNKNOWN";
                break;
        }
        InteractionJankMonitor.getInstance().begin(withSurface.setTag(str).setTimeout(2000L));
        boolean isOutPipDirection = PipAnimationController.isOutPipDirection(i);
        PipTouchHandler pipTouchHandler = this.mTouchHandler;
        if (isOutPipDirection) {
            PipBoundsAlgorithm pipBoundsAlgorithm = this.mPipBoundsAlgorithm;
            float snapFraction = pipBoundsAlgorithm.mSnapAlgorithm.getSnapFraction(0, rect, pipBoundsAlgorithm.getMovementBounds(rect, true));
            PipBoundsState pipBoundsState = this.mPipBoundsState;
            if (!pipBoundsState.mHasUserResizedPip) {
                pipBoundsState.mPipReentryState = new PipBoundsState.PipReentryState(null, snapFraction);
            } else {
                Size size = new Size(rect.width(), rect.height());
                if (!pipTouchHandler.mPipResizeGestureHandler.mUserResizeBounds.isEmpty()) {
                    Rect rect2 = pipTouchHandler.mPipResizeGestureHandler.mUserResizeBounds;
                    size = new Size(rect2.width(), rect2.height());
                }
                pipBoundsState.mPipReentryState = new PipBoundsState.PipReentryState(size, snapFraction);
            }
        }
        PipTouchState pipTouchState = pipTouchHandler.mTouchState;
        pipTouchState.mAllowTouches = false;
        if (pipTouchState.mIsUserInteracting) {
            pipTouchState.reset();
        }
        PipAnimationListener pipAnimationListener = this.mPinnedStackAnimationRecentsCallback;
        if (pipAnimationListener != null) {
            pipAnimationListener.onPipAnimationStarted();
            if (i == 3) {
                this.mPinnedStackAnimationRecentsCallback.onExpandPip();
            }
        }
    }

    @Override // com.android.wm.shell.sysui.ConfigurationChangeListener
    public final void onThemeChanged() {
        this.mTouchHandler.mPipDismissTargetHandler.getClass();
        Context context = this.mContext;
        onDisplayChanged(new DisplayLayout(context, context.getDisplay()), false);
    }

    @Override // com.android.wm.shell.sysui.UserChangeListener
    public final void onUserChanged$1(int i) {
        PipMediaController pipMediaController = this.mMediaController;
        MediaSessionManager mediaSessionManager = pipMediaController.mMediaSessionManager;
        PipMediaController$$ExternalSyntheticLambda0 pipMediaController$$ExternalSyntheticLambda0 = pipMediaController.mSessionsChangedListener;
        mediaSessionManager.removeOnActiveSessionsChangedListener(pipMediaController$$ExternalSyntheticLambda0);
        mediaSessionManager.addOnActiveSessionsChangedListener(null, UserHandle.CURRENT, pipMediaController.mHandlerExecutor, pipMediaController$$ExternalSyntheticLambda0);
    }

    public void setEnablePipKeepClearAlgorithm(boolean z) {
        this.mEnablePipKeepClearAlgorithm = z;
    }

    public void setPinnedStackAnimationListener(PipAnimationListener pipAnimationListener) {
        this.mPinnedStackAnimationRecentsCallback = pipAnimationListener;
        onPipResourceDimensionsChanged();
    }

    public final void updateMovementBounds(Rect rect, boolean z, boolean z2, boolean z3, WindowContainerTransaction windowContainerTransaction) {
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        int i2;
        int i3;
        int i4;
        boolean z7;
        int i5;
        PipTaskOrganizer pipTaskOrganizer = this.mPipTaskOrganizer;
        int i6 = pipTaskOrganizer.mPipTransitionState.mState;
        if (z3 && (i6 == 2 || i6 == 3)) {
            return;
        }
        Rect rect2 = new Rect(rect);
        int i7 = this.mPipDisplayLayoutState.getDisplayLayout().mRotation;
        PipBoundsAlgorithm pipBoundsAlgorithm = this.mPipBoundsAlgorithm;
        Rect rect3 = this.mTmpInsetBounds;
        pipBoundsAlgorithm.getInsetBounds(rect3);
        Rect defaultBounds = pipBoundsAlgorithm.getDefaultBounds(null, -1.0f);
        float f = pipBoundsAlgorithm.mPipBoundsState.mAspectRatio;
        Rect rect4 = new Rect(defaultBounds);
        int i8 = 0;
        if (Float.compare(pipBoundsAlgorithm.mMinAspectRatio, f) <= 0 && Float.compare(f, pipBoundsAlgorithm.mMaxAspectRatio) <= 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z4) {
            pipBoundsAlgorithm.transformBoundsToAspectRatio(rect4, f, false, false);
        }
        PipBoundsState pipBoundsState = this.mPipBoundsState;
        pipBoundsState.mNormalBounds.set(rect4);
        if (rect2.isEmpty()) {
            rect2.set(pipBoundsAlgorithm.getDefaultBounds(null, -1.0f));
        }
        boolean z8 = pipTaskOrganizer.mWaitForFixedRotation;
        PipTransitionState pipTransitionState = pipTaskOrganizer.mPipTransitionState;
        if (z8 && pipTransitionState.mState != 4) {
            z5 = true;
        } else {
            z5 = false;
        }
        boolean z9 = pipTransitionState.mInSwipePipToHomeTransition;
        if ((z9 || z5) && z) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -1566841868, 124, "%s: Skip onMovementBoundsChanged on rotation change InSwipePipToHomeTransition=%b mWaitForFixedRotation=%b getTransitionState=%d", "PipTaskOrganizer", Boolean.valueOf(z9), Boolean.valueOf(z8), Long.valueOf(pipTransitionState.mState));
            }
        } else {
            PipAnimationController.PipTransitionAnimator pipTransitionAnimator = pipTaskOrganizer.mPipAnimationController.mCurrentAnimator;
            PipBoundsState pipBoundsState2 = pipTaskOrganizer.mPipBoundsState;
            if (pipTransitionAnimator != null && pipTransitionAnimator.isRunning() && pipTransitionAnimator.getTransitionDirection() == 2) {
                Rect rect5 = pipTransitionAnimator.mDestinationBounds;
                rect2.set(rect5);
                if (z2 || z3 || !pipBoundsState2.getDisplayBounds().contains(rect5)) {
                    Rect entryDestinationBounds = pipTaskOrganizer.mPipBoundsAlgorithm.getEntryDestinationBounds();
                    if (!entryDestinationBounds.equals(rect5)) {
                        pipTaskOrganizer.updateAnimatorBounds(entryDestinationBounds);
                        rect2.set(entryDestinationBounds);
                    }
                }
            } else {
                if (pipTransitionState.isInPip() && z) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && Transitions.ENABLE_SHELL_TRANSITIONS) {
                    pipBoundsState2.setBounds(rect2);
                } else if (z7 && pipTaskOrganizer.mWaitForFixedRotation && pipTaskOrganizer.mHasFadeOut) {
                    pipBoundsState2.setBounds(rect2);
                } else if (z7) {
                    pipBoundsState2.setBounds(rect2);
                    if (pipTransitionAnimator != null) {
                        i5 = pipTransitionAnimator.getTransitionDirection();
                        PipAnimationController.quietCancel(pipTransitionAnimator);
                        pipTaskOrganizer.mPipTransitionController.sendOnPipTransitionCancelled(i5);
                        pipTaskOrganizer.sendOnPipTransitionFinished(i5);
                    } else {
                        i5 = 0;
                    }
                    pipTaskOrganizer.prepareFinishResizeTransaction(rect2, i5, pipTaskOrganizer.createFinishResizeSurfaceTransaction(rect2), windowContainerTransaction);
                } else if (pipTransitionAnimator != null && pipTransitionAnimator.isRunning()) {
                    if (!pipTransitionAnimator.mDestinationBounds.isEmpty()) {
                        rect2.set(pipTransitionAnimator.mDestinationBounds);
                    }
                } else if (!pipBoundsState2.getBounds().isEmpty()) {
                    rect2.set(pipBoundsState2.getBounds());
                }
            }
        }
        pipTaskOrganizer.finishResizeForMenu(rect2);
        PipTouchHandler pipTouchHandler = this.mTouchHandler;
        boolean isEmpty = pipTouchHandler.mPipResizeGestureHandler.mUserResizeBounds.isEmpty();
        Rect rect6 = pipBoundsState.mNormalBounds;
        if (isEmpty) {
            pipTouchHandler.mPipResizeGestureHandler.setUserResizeBounds(rect6);
        }
        if (pipTouchHandler.mIsImeShowing) {
            i = pipTouchHandler.mImeHeight;
        } else {
            i = 0;
        }
        if (pipTouchHandler.mDisplayRotation != i7) {
            z6 = true;
        } else {
            z6 = false;
        }
        PipTouchState pipTouchState = pipTouchHandler.mTouchState;
        if (z6) {
            pipTouchState.reset();
        }
        Rect rect7 = new Rect();
        PipBoundsAlgorithm pipBoundsAlgorithm2 = pipTouchHandler.mPipBoundsAlgorithm;
        pipBoundsAlgorithm2.getClass();
        PipBoundsAlgorithm.getMovementBounds(rect6, rect3, rect7, i);
        PipBoundsState pipBoundsState3 = pipTouchHandler.mPipBoundsState;
        boolean isEmpty2 = pipBoundsState3.mMovementBounds.isEmpty();
        Rect rect8 = pipBoundsState3.mMovementBounds;
        if (isEmpty2) {
            PipBoundsAlgorithm.getMovementBounds(rect2, rect3, rect8, 0);
        }
        float width = rect6.width() / rect6.height();
        Size defaultSize = pipTouchHandler.mPipSizeSpecHandler.mSizeSpecSourceImpl.getDefaultSize(width);
        Rect rect9 = new Rect(0, 0, defaultSize.getWidth(), defaultSize.getHeight());
        Rect rect10 = pipBoundsState3.mExpandedBounds;
        rect10.set(rect9);
        Rect rect11 = new Rect();
        PipBoundsAlgorithm.getMovementBounds(rect10, rect3, rect11, i);
        pipTouchHandler.updatePipSizeConstraints(rect6, width);
        boolean z10 = pipTouchHandler.mIsImeShowing;
        if (z10) {
            i2 = pipTouchHandler.mImeOffset;
        } else {
            i2 = 0;
        }
        if (!z10 && pipTouchHandler.mIsShelfShowing) {
            i3 = pipTouchHandler.mShelfHeight;
        } else {
            i3 = 0;
        }
        int max = Math.max(i2, i3);
        if ((z2 || z3) && ((!pipTouchState.mIsUserInteracting || !pipTouchState.mIsDragging) && !pipTouchHandler.mEnablePipKeepClearAlgorithm)) {
            boolean z11 = true;
            if (pipTouchHandler.mMenuState != 1 || !pipTouchHandler.willResizeMenu()) {
                z11 = false;
            }
            Rect rect12 = new Rect();
            if (pipTouchHandler.mIsImeShowing) {
                i8 = pipTouchHandler.mImeHeight;
            }
            PipBoundsAlgorithm.getMovementBounds(rect2, rect3, rect12, i8);
            int i9 = rect8.bottom - pipTouchHandler.mMovementBoundsExtraOffsets;
            int i10 = rect12.bottom;
            if (i10 >= rect12.top) {
                i10 -= max;
            }
            if (z11) {
                rect2.set(rect10);
                float f2 = pipTouchHandler.mSavedSnapFraction;
                pipBoundsAlgorithm2.mSnapAlgorithm.getClass();
                PipSnapAlgorithm.applySnapFraction(f2, rect2, rect12);
            }
            if (i9 < i10) {
                int i11 = rect2.top;
                if (i11 > i9 - pipTouchHandler.mBottomOffsetBufferPx) {
                    pipTouchHandler.mMotionHelper.animateToOffset(i10 - i11, rect2);
                }
            } else if (i9 > i10 && (i4 = rect2.top) > i10 - pipTouchHandler.mBottomOffsetBufferPx) {
                pipTouchHandler.mMotionHelper.animateToOffset(i10 - i4, rect2);
            }
        }
        Rect rect13 = pipBoundsState3.mNormalMovementBounds;
        rect13.set(rect7);
        Rect rect14 = pipBoundsState3.mExpandedMovementBounds;
        rect14.set(rect11);
        pipTouchHandler.mDisplayRotation = i7;
        pipTouchHandler.mInsetBounds.set(rect3);
        pipTouchHandler.updateMovementBounds();
        pipTouchHandler.mMovementBoundsExtraOffsets = max;
        PipAccessibilityInteractionConnection pipAccessibilityInteractionConnection = pipTouchHandler.mConnection;
        pipAccessibilityInteractionConnection.mNormalBounds.set(rect6);
        pipAccessibilityInteractionConnection.mExpandedBounds.set(rect10);
        pipAccessibilityInteractionConnection.mNormalMovementBounds.set(rect13);
        pipAccessibilityInteractionConnection.mExpandedMovementBounds.set(rect14);
        if (pipTouchHandler.mDeferResizeToNormalBoundsUntilRotation == i7) {
            pipTouchHandler.mMotionHelper.animateToUnexpandedState(rect6, pipTouchHandler.mSavedSnapFraction, pipBoundsState3.mNormalMovementBounds, pipBoundsState3.mMovementBounds, true);
            pipTouchHandler.mSavedSnapFraction = -1.0f;
            pipTouchHandler.mDeferResizeToNormalBoundsUntilRotation = -1;
        }
    }

    public final void updatePipPositionForKeepClearAreas() {
        boolean z;
        boolean z2;
        if (!this.mEnablePipKeepClearAlgorithm || this.mIsKeyguardShowingOrAnimating) {
            return;
        }
        PipTransitionState pipTransitionState = this.mPipTransitionState;
        int i = pipTransitionState.mState;
        boolean z3 = true;
        if (i >= 3 && i != 5) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            PipKeepClearAlgorithmInterface pipKeepClearAlgorithmInterface = this.mPipKeepClearAlgorithm;
            PipBoundsState pipBoundsState = this.mPipBoundsState;
            Rect adjust = pipKeepClearAlgorithmInterface.adjust(pipBoundsState, this.mPipBoundsAlgorithm);
            if (!adjust.equals(pipBoundsState.getBounds())) {
                int i2 = pipTransitionState.mState;
                if (i2 == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                PipTaskOrganizer pipTaskOrganizer = this.mPipTaskOrganizer;
                if (z2) {
                    pipTaskOrganizer.scheduleAnimateResizePip(adjust, this.mEnterAnimationDuration, 0);
                    return;
                }
                if (i2 != 3) {
                    z3 = false;
                }
                if (z3) {
                    pipTaskOrganizer.updateAnimatorBounds(adjust);
                }
            }
        }
    }
}
