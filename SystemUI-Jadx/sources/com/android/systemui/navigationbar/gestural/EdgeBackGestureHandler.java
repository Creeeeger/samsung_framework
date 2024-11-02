package com.android.systemui.navigationbar.gestural;

import android.R;
import android.app.ActivityManager;
import android.app.IActivityTaskManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.input.InputManager;
import android.icu.text.SimpleDateFormat;
import android.metrics.LogMaker;
import android.os.Looper;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.StatsEvent;
import android.util.StatsLog;
import android.util.TypedValue;
import android.view.Choreographer;
import android.view.ISystemGestureExclusionListener;
import android.view.IWindowManager;
import android.view.InputEvent;
import android.view.InputMonitor;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.window.BackAnimationAdapter;
import android.window.BackMotionEvent;
import android.window.BackNavigationInfo;
import android.window.IOnBackInvokedCallback;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.policy.GestureNavigationSettingsObserver;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.LockIconView$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.flags.ReleasedFlag;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.model.SysUiState;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.navigationbar.gestural.BackPanelController;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.navigationbar.util.NavigationModeUtil;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.NavigationEdgeBackPlugin;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.PluginManager;
import com.android.systemui.recents.OverviewProxyService;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputChannelCompat$InputEventListener;
import com.android.systemui.shared.system.InputChannelCompat$InputEventReceiver;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import com.android.systemui.shared.tracing.FrameProtoTracer;
import com.android.systemui.shared.tracing.ProtoTraceable;
import com.android.systemui.tracing.ProtoTracer;
import com.android.systemui.tracing.nano.EdgeBackGestureHandlerProto;
import com.android.systemui.tracing.nano.SystemUiTraceProto;
import com.android.systemui.util.Assert;
import com.android.systemui.util.SettingsHelper;
import com.android.wm.shell.back.BackAnimationController;
import com.android.wm.shell.back.BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.desktopmode.DesktopMode;
import com.android.wm.shell.pip.Pip;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.multiwindow.MultiWindowEdgeDetector;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeBackGestureHandler implements PluginListener, ProtoTraceable {
    public static final int MAX_LONG_PRESS_TIMEOUT;
    public boolean mAllowGesture;
    public BackAnimationController.BackAnimationImpl mBackAnimation;
    public final AnonymousClass5 mBackCallback;
    public BackGestureTfClassifierProvider mBackGestureTfClassifierProvider;
    public final Provider mBackGestureTfClassifierProviderProvider;
    public final BackPanelController.Factory mBackPanelControllerFactory;
    public float mBackSwipeLinearThreshold;
    public final Executor mBackgroundExecutor;
    public float mBottomGestureHeight;
    public Consumer mButtonForcedVisibleCallback;
    public final Context mContext;
    public boolean mDeferSetIsOnLeftEdge;
    public final EdgeBackGestureHandler$$ExternalSyntheticLambda0 mDesktopCornersChangedListener;
    public final Region mDesktopModeExcludeRegion;
    public final Optional mDesktopModeOptional;
    public boolean mDisabledByPolicy;
    public boolean mDisabledForQuickstep;
    public final int mDisplayId;
    public final Point mDisplaySize;
    public final PointF mDownPoint;
    public NavigationEdgeBackPlugin mEdgeBackPlugin;
    public final EdgeBackSplitGestureHandler mEdgeBackSplitGestureHandler;
    public int mEdgeWidthLeft;
    public int mEdgeWidthRight;
    public final PointF mEndPoint;
    public final Region mExcludeRegion;
    public final FalsingManager mFalsingManager;
    public final FeatureFlags mFeatureFlags;
    public final List mGestureBlockingActivities;
    public boolean mGestureBlockingActivityRunning;
    public final LogArray mGestureLogInsideInsets;
    public final LogArray mGestureLogOutsideInsets;
    public final GestureNavigationSettingsObserver mGestureNavigationSettingsObserver;
    public boolean mInRejectedExclusion;
    public InputChannelCompat$InputEventReceiver mInputEventReceiver;
    public InputMonitor mInputMonitor;
    public boolean mIsAttached;
    public boolean mIsBackGestureAllowed;
    public boolean mIsBlockGestureOnGame;
    public boolean mIsButtonForcedVisible;
    public boolean mIsEnabled;
    public boolean mIsGesturalModeEnabled;
    public boolean mIsInPip;
    public boolean mIsLargeCoverBackGestureEnabled;
    public boolean mIsNavBarShownTransiently;
    public boolean mIsNewBackAffordanceEnabled;
    public boolean mIsOnLeftEdge;
    public final Configuration mLastReportedConfig;
    public int mLeftInset;
    public final Provider mLightBarControllerProvider;
    public final SimpleDateFormat mLogDateFormat;
    public boolean mLogGesture;
    public final int mLongPressTimeout;
    public int mMLEnableWidth;
    public boolean mMLModelIsLoading;
    public float mMLModelThreshold;
    public float mMLResults;
    public final Executor mMainExecutor;
    public final MetricsLogger mMetricsLogger;
    public MultiWindowEdgeDetector mMultiWindowEdgeDetector;
    public final Provider mNavBarEdgePanelProvider;
    public final Rect mNavBarOverlayExcludedBounds;
    public final NavBarStateManager mNavBarStateManager;
    public final NavBarStore mNavBarStore;
    public final NavigationModeController mNavigationModeController;
    public float mNonLinearFactor;
    public final EdgeBackGestureHandler$$ExternalSyntheticLambda0 mOnIsInPipStateChangedListener;
    public final OverviewProxyService mOverviewProxyService;
    public String mPackageName;
    public final Rect mPipExcludedBounds;
    public final Optional mPipOptional;
    public final PluginManager mPluginManager;
    public final LogArray mPredictionLog;
    public final ProtoTracer mProtoTracer;
    public int mRightInset;
    public final SettingsHelper mSettingsHelper;
    public int mStartingQuickstepRotation;
    public Runnable mStateChangeCallback;
    public long mSysUiFlags;
    public final SysUiState mSysUiState;
    public final AnonymousClass6 mSysUiStateCallback;
    public boolean mThresholdCrossed;
    public final Date mTmpLogDate;
    public float mTouchSlop;
    public final Region mUnrestrictedExcludeRegion;
    public boolean mUseMLModel;
    public final UserTracker.Callback mUserChangedCallback;
    public final UserTracker mUserTracker;
    public final ViewConfiguration mViewConfiguration;
    public Map mVocab;
    public final WindowManager mWindowManager;
    public final IWindowManager mWindowManagerService;
    public final AnonymousClass1 mGestureExclusionListener = new AnonymousClass1();
    public final AnonymousClass2 mQuickSwitchListener = new OverviewProxyService.OverviewProxyListener() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler.2
        @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
        public final void onPrioritizedRotation(int i) {
            boolean z;
            EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
            edgeBackGestureHandler.mStartingQuickstepRotation = i;
            int rotation = edgeBackGestureHandler.mLastReportedConfig.windowConfiguration.getRotation();
            int i2 = edgeBackGestureHandler.mStartingQuickstepRotation;
            if (i2 > -1 && i2 != rotation) {
                z = true;
            } else {
                z = false;
            }
            edgeBackGestureHandler.mDisabledForQuickstep = z;
        }
    };
    public final AnonymousClass3 mTaskStackListener = new TaskStackChangeListener() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler.3
        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onTaskCreated(ComponentName componentName) {
            EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
            if (componentName != null) {
                edgeBackGestureHandler.mPackageName = componentName.getPackageName();
            } else {
                edgeBackGestureHandler.mPackageName = "_UNKNOWN";
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onTaskStackChanged() {
            ComponentName componentName;
            boolean z;
            int i = EdgeBackGestureHandler.MAX_LONG_PRESS_TIMEOUT;
            EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
            edgeBackGestureHandler.getClass();
            ActivityManager.RunningTaskInfo runningTask = ActivityManagerWrapper.sInstance.getRunningTask();
            if (runningTask == null) {
                componentName = null;
            } else {
                componentName = runningTask.topActivity;
            }
            if (componentName != null) {
                edgeBackGestureHandler.mPackageName = componentName.getPackageName();
            } else {
                edgeBackGestureHandler.mPackageName = "_UNKNOWN";
            }
            if (componentName != null && ((ArrayList) edgeBackGestureHandler.mGestureBlockingActivities).contains(componentName)) {
                z = true;
            } else {
                z = false;
            }
            edgeBackGestureHandler.mGestureBlockingActivityRunning = z;
        }
    };
    public final AnonymousClass4 mOnPropertiesChangedListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler.4
        public final void onPropertiesChanged(DeviceConfig.Properties properties) {
            if ("systemui".equals(properties.getNamespace())) {
                if (properties.getKeyset().contains("back_gesture_ml_model_threshold") || properties.getKeyset().contains("use_back_gesture_ml_model") || properties.getKeyset().contains("back_gesture_ml_model_name")) {
                    EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
                    int i = EdgeBackGestureHandler.MAX_LONG_PRESS_TIMEOUT;
                    edgeBackGestureHandler.updateMLModelState();
                }
            }
        }
    };
    public final VelocityTracker mVelocityTracker = VelocityTracker.obtain();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ISystemGestureExclusionListener.Stub {
        public AnonymousClass1() {
        }

        public final void onSystemGestureExclusionChanged(int i, final Region region, final Region region2) {
            EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
            if (i == edgeBackGestureHandler.mDisplayId) {
                edgeBackGestureHandler.mMainExecutor.execute(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        EdgeBackGestureHandler.AnonymousClass1 anonymousClass1 = EdgeBackGestureHandler.AnonymousClass1.this;
                        Region region3 = region;
                        Region region4 = region2;
                        EdgeBackGestureHandler.this.mExcludeRegion.set(region3);
                        Region region5 = EdgeBackGestureHandler.this.mUnrestrictedExcludeRegion;
                        if (region4 != null) {
                            region3 = region4;
                        }
                        region5.set(region3);
                        if (BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE) {
                            EdgeBackGestureHandler edgeBackGestureHandler2 = EdgeBackGestureHandler.this;
                            EdgeBackSplitGestureHandler edgeBackSplitGestureHandler = edgeBackGestureHandler2.mEdgeBackSplitGestureHandler;
                            edgeBackSplitGestureHandler.gestureDetector.setGestureExclusionRegion(edgeBackGestureHandler2.mExcludeRegion);
                        }
                    }
                });
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Factory {
        public final Provider mBackGestureTfClassifierProviderProvider;
        public final BackPanelController.Factory mBackPanelControllerFactory;
        public final Executor mBackgroundExecutor;
        public final Optional mDesktopModeOptional;
        public final Executor mExecutor;
        public final FalsingManager mFalsingManager;
        public final FeatureFlags mFeatureFlags;
        public final Provider mLightBarControllerProvider;
        public final Provider mNavBarEdgePanelProvider;
        public final NavigationModeController mNavigationModeController;
        public final OverviewProxyService mOverviewProxyService;
        public final Optional mPipOptional;
        public final PluginManager mPluginManager;
        public final ProtoTracer mProtoTracer;
        public final SysUiState mSysUiState;
        public final UserTracker mUserTracker;
        public final ViewConfiguration mViewConfiguration;
        public final WindowManager mWindowManager;
        public final IWindowManager mWindowManagerService;

        public Factory(OverviewProxyService overviewProxyService, SysUiState sysUiState, PluginManager pluginManager, Executor executor, Executor executor2, UserTracker userTracker, ProtoTracer protoTracer, NavigationModeController navigationModeController, BackPanelController.Factory factory, ViewConfiguration viewConfiguration, WindowManager windowManager, IWindowManager iWindowManager, Optional<Pip> optional, Optional<DesktopMode> optional2, FalsingManager falsingManager, Provider provider, Provider provider2, FeatureFlags featureFlags, Provider provider3) {
            this.mOverviewProxyService = overviewProxyService;
            this.mSysUiState = sysUiState;
            this.mPluginManager = pluginManager;
            this.mExecutor = executor;
            this.mBackgroundExecutor = executor2;
            this.mUserTracker = userTracker;
            this.mProtoTracer = protoTracer;
            this.mNavigationModeController = navigationModeController;
            this.mBackPanelControllerFactory = factory;
            this.mViewConfiguration = viewConfiguration;
            this.mWindowManager = windowManager;
            this.mWindowManagerService = iWindowManager;
            this.mPipOptional = optional;
            this.mDesktopModeOptional = optional2;
            this.mFalsingManager = falsingManager;
            this.mNavBarEdgePanelProvider = provider;
            this.mBackGestureTfClassifierProviderProvider = provider2;
            this.mFeatureFlags = featureFlags;
            this.mLightBarControllerProvider = provider3;
        }

        public final EdgeBackGestureHandler create(Context context) {
            return new EdgeBackGestureHandler(context, this.mOverviewProxyService, this.mSysUiState, this.mPluginManager, this.mExecutor, this.mBackgroundExecutor, this.mUserTracker, this.mProtoTracer, this.mNavigationModeController, this.mBackPanelControllerFactory, this.mViewConfiguration, this.mWindowManager, this.mWindowManagerService, this.mPipOptional, this.mDesktopModeOptional, this.mFalsingManager, this.mNavBarEdgePanelProvider, this.mBackGestureTfClassifierProviderProvider, this.mFeatureFlags, this.mLightBarControllerProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class LogArray extends ArrayDeque<String> {
        private final int mLength;

        public LogArray(int i) {
            this.mLength = i;
        }

        public final void log(String str) {
            if (size() >= this.mLength) {
                removeFirst();
            }
            addLast(str);
        }
    }

    /* renamed from: -$$Nest$msendEvent, reason: not valid java name */
    public static void m1291$$Nest$msendEvent(EdgeBackGestureHandler edgeBackGestureHandler, int i) {
        edgeBackGestureHandler.getClass();
        if (BasicRune.NAVBAR_GESTURE) {
            edgeBackGestureHandler.mMetricsLogger.write(new LogMaker(1931).setType(4).setSubtype(4).addTaggedData(933, Integer.valueOf(i)).addTaggedData(932, 0));
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        KeyEvent keyEvent = new KeyEvent(uptimeMillis, uptimeMillis, i, 4, 0, 0, -1, 0, 72, 257);
        Context context = edgeBackGestureHandler.mContext;
        keyEvent.setDisplayId(context.getDisplay().getDisplayId());
        ((InputManager) context.getSystemService(InputManager.class)).injectInputEvent(keyEvent, 0);
    }

    static {
        int i;
        if (BasicRune.NAVBAR_GESTURE) {
            i = 200;
        } else {
            i = SystemProperties.getInt("gestures.back_timeout", IKnoxCustomManager.Stub.TRANSACTION_addDexURLShortcutExtend);
        }
        MAX_LONG_PRESS_TIMEOUT = i;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$2] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$3] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$4] */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$5] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$6] */
    public EdgeBackGestureHandler(Context context, OverviewProxyService overviewProxyService, SysUiState sysUiState, PluginManager pluginManager, Executor executor, Executor executor2, UserTracker userTracker, ProtoTracer protoTracer, NavigationModeController navigationModeController, BackPanelController.Factory factory, ViewConfiguration viewConfiguration, WindowManager windowManager, IWindowManager iWindowManager, Optional<Pip> optional, Optional<DesktopMode> optional2, FalsingManager falsingManager, Provider provider, Provider provider2, FeatureFlags featureFlags, Provider provider3) {
        Configuration configuration = new Configuration();
        this.mLastReportedConfig = configuration;
        this.mGestureBlockingActivities = new ArrayList();
        this.mDisplaySize = new Point();
        this.mPipExcludedBounds = new Rect();
        this.mNavBarOverlayExcludedBounds = new Rect();
        this.mExcludeRegion = new Region();
        this.mDesktopModeExcludeRegion = new Region();
        this.mUnrestrictedExcludeRegion = new Region();
        this.mStartingQuickstepRotation = -1;
        this.mDownPoint = new PointF();
        this.mEndPoint = new PointF();
        this.mThresholdCrossed = false;
        this.mAllowGesture = false;
        this.mLogGesture = false;
        this.mInRejectedExclusion = false;
        this.mPredictionLog = new LogArray(10);
        this.mGestureLogInsideInsets = new LogArray(10);
        this.mGestureLogOutsideInsets = new LogArray(10);
        this.mLogDateFormat = new SimpleDateFormat("HH:mm:ss.SSS", Locale.US);
        this.mTmpLogDate = new Date();
        this.mBackCallback = new NavigationEdgeBackPlugin.BackCallback() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler.5
            @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin.BackCallback
            public final void cancelBack() {
                EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
                BackAnimationController.BackAnimationImpl backAnimationImpl = edgeBackGestureHandler.mBackAnimation;
                if (backAnimationImpl != null) {
                    ((HandlerExecutor) BackAnimationController.this.mShellExecutor).execute(new BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0(backAnimationImpl, false));
                }
                edgeBackGestureHandler.logGesture(4);
            }

            @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin.BackCallback
            public final void setTriggerBack(boolean z) {
                BackAnimationController.BackAnimationImpl backAnimationImpl = EdgeBackGestureHandler.this.mBackAnimation;
                if (backAnimationImpl != null) {
                    ((HandlerExecutor) BackAnimationController.this.mShellExecutor).execute(new BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0(backAnimationImpl, z));
                }
            }

            @Override // com.android.systemui.plugins.NavigationEdgeBackPlugin.BackCallback
            public final void triggerBack() {
                EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
                edgeBackGestureHandler.mFalsingManager.isFalseTouch(16);
                BackAnimationController.BackAnimationImpl backAnimationImpl = edgeBackGestureHandler.mBackAnimation;
                int i = 1;
                boolean z = true;
                if (backAnimationImpl == null) {
                    EdgeBackGestureHandler.m1291$$Nest$msendEvent(edgeBackGestureHandler, 0);
                    EdgeBackGestureHandler.m1291$$Nest$msendEvent(edgeBackGestureHandler, 1);
                } else {
                    ((HandlerExecutor) BackAnimationController.this.mShellExecutor).execute(new BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0(backAnimationImpl, z ? 1 : 0));
                }
                if (edgeBackGestureHandler.mInRejectedExclusion) {
                    i = 2;
                }
                edgeBackGestureHandler.logGesture(i);
            }
        };
        this.mSysUiStateCallback = new SysUiState.SysUiStateCallback() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler.6
            @Override // com.android.systemui.model.SysUiState.SysUiStateCallback
            public final void onSystemUiStateChanged(long j) {
                EdgeBackGestureHandler.this.mSysUiFlags = j;
            }
        };
        this.mOnIsInPipStateChangedListener = new EdgeBackGestureHandler$$ExternalSyntheticLambda0(this, 0);
        this.mDesktopCornersChangedListener = new EdgeBackGestureHandler$$ExternalSyntheticLambda0(this, 1);
        this.mUserChangedCallback = new UserTracker.Callback() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler.7
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                int i2 = EdgeBackGestureHandler.MAX_LONG_PRESS_TIMEOUT;
                EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
                edgeBackGestureHandler.updateIsEnabled();
                edgeBackGestureHandler.updateCurrentUserResources();
            }
        };
        this.mIsBlockGestureOnGame = false;
        this.mIsLargeCoverBackGestureEnabled = false;
        this.mContext = context;
        this.mDisplayId = context.getDisplayId();
        this.mMainExecutor = executor;
        this.mBackgroundExecutor = executor2;
        this.mUserTracker = userTracker;
        this.mOverviewProxyService = overviewProxyService;
        this.mSysUiState = sysUiState;
        this.mPluginManager = pluginManager;
        this.mProtoTracer = protoTracer;
        this.mNavigationModeController = navigationModeController;
        this.mBackPanelControllerFactory = factory;
        this.mViewConfiguration = viewConfiguration;
        this.mWindowManager = windowManager;
        this.mWindowManagerService = iWindowManager;
        this.mPipOptional = optional;
        this.mDesktopModeOptional = optional2;
        this.mFalsingManager = falsingManager;
        this.mNavBarEdgePanelProvider = provider;
        this.mBackGestureTfClassifierProviderProvider = provider2;
        this.mFeatureFlags = featureFlags;
        this.mLightBarControllerProvider = provider3;
        configuration.setTo(context.getResources().getConfiguration());
        ComponentName unflattenFromString = ComponentName.unflattenFromString(context.getString(R.string.global_action_toggle_silent_mode));
        if (unflattenFromString != null) {
            String packageName = unflattenFromString.getPackageName();
            PackageManager packageManager = context.getPackageManager();
            try {
                Resources resourcesForApplication = packageManager.getResourcesForApplication(packageManager.getApplicationInfo(packageName, 9728));
                int identifier = resourcesForApplication.getIdentifier("gesture_blocking_activities", "array", packageName);
                if (identifier == 0) {
                    Log.e("EdgeBackGestureHandler", "No resource found for gesture-blocking activities");
                } else {
                    for (String str : resourcesForApplication.getStringArray(identifier)) {
                        ((ArrayList) this.mGestureBlockingActivities).add(ComponentName.unflattenFromString(str));
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("EdgeBackGestureHandler", "Failed to add gesture blocking activities", e);
            }
        }
        if (BasicRune.NAVBAR_ENABLED) {
            NavBarStore navBarStore = (NavBarStore) Dependency.get(NavBarStore.class);
            this.mNavBarStore = navBarStore;
            this.mNavBarStateManager = ((NavBarStoreImpl) navBarStore).getNavStateManager(this.mContext.getDisplayId());
            this.mMetricsLogger = (MetricsLogger) Dependency.get(MetricsLogger.class);
            SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
            this.mSettingsHelper = settingsHelper;
            this.mEdgeBackSplitGestureHandler = new EdgeBackSplitGestureHandler(this.mContext, this.mDisplayId, settingsHelper);
        }
        this.mLongPressTimeout = Math.min(MAX_LONG_PRESS_TIMEOUT, ViewConfiguration.getLongPressTimeout());
        this.mGestureNavigationSettingsObserver = new GestureNavigationSettingsObserver(this.mContext.getMainThreadHandler(), this.mContext, new EdgeBackGestureHandler$$ExternalSyntheticLambda1(this, 0));
        updateCurrentUserResources();
    }

    public final void cancelGesture(MotionEvent motionEvent) {
        this.mAllowGesture = false;
        this.mLogGesture = false;
        this.mInRejectedExclusion = false;
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        this.mEdgeBackPlugin.onMotionEvent(obtain);
        dispatchToBackAnimation(obtain);
        obtain.recycle();
    }

    public final WindowManager.LayoutParams createLayoutParams() {
        Context context = this.mContext;
        Resources resources = context.getResources();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(resources.getDimensionPixelSize(com.android.systemui.R.dimen.navigation_edge_panel_width), resources.getDimensionPixelSize(com.android.systemui.R.dimen.navigation_edge_panel_height), 2024, IKnoxCustomManager.Stub.TRANSACTION_getForceSingleView, -3);
        layoutParams.accessibilityTitle = context.getString(com.android.systemui.R.string.nav_bar_edge_panel);
        layoutParams.windowAnimations = 0;
        layoutParams.privateFlags |= 2097168;
        layoutParams.setTitle("EdgeBackGestureHandler" + context.getDisplayId());
        layoutParams.setFitInsetsTypes(0);
        layoutParams.setTrustedOverlay();
        return layoutParams;
    }

    public final void dispatchToBackAnimation(MotionEvent motionEvent) {
        final float f;
        final float f2;
        if (this.mBackAnimation != null) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.addMovement(motionEvent);
            if (motionEvent.getAction() == 1) {
                velocityTracker.computeCurrentVelocity(1000, this.mViewConfiguration.getScaledMaximumFlingVelocity());
                float xVelocity = velocityTracker.getXVelocity();
                f2 = velocityTracker.getYVelocity();
                f = xVelocity;
            } else {
                f = Float.NaN;
                f2 = Float.NaN;
            }
            final BackAnimationController.BackAnimationImpl backAnimationImpl = this.mBackAnimation;
            final float x = motionEvent.getX();
            final float y = motionEvent.getY();
            final int actionMasked = motionEvent.getActionMasked();
            final int i = !this.mIsOnLeftEdge ? 1 : 0;
            ((HandlerExecutor) BackAnimationController.this.mShellExecutor).execute(new Runnable() { // from class: com.android.wm.shell.back.BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BackAnimationAdapter backAnimationAdapter;
                    BackAnimationController.BackAnimationImpl backAnimationImpl2 = BackAnimationController.BackAnimationImpl.this;
                    float f3 = x;
                    float f4 = y;
                    float f5 = f;
                    float f6 = f2;
                    int i2 = actionMasked;
                    int i3 = i;
                    BackAnimationController backAnimationController = BackAnimationController.this;
                    if (!backAnimationController.mPostCommitAnimationInProgress) {
                        TouchTracker touchTracker = backAnimationController.mTouchTracker;
                        if (touchTracker.mCancelled) {
                            float f7 = touchTracker.mLatestTouchX;
                            if ((f3 > f7 && touchTracker.mSwipeEdge == 0) || (f3 < f7 && touchTracker.mSwipeEdge == 1)) {
                                touchTracker.mCancelled = false;
                                touchTracker.mStartThresholdX = f3;
                            }
                        }
                        touchTracker.mLatestTouchX = f3;
                        touchTracker.mLatestTouchY = f4;
                        touchTracker.mLatestVelocityX = f5;
                        touchTracker.mLatestVelocityY = f6;
                        if (i2 == 0) {
                            if (!backAnimationController.mBackGestureStarted) {
                                backAnimationController.mShouldStartOnNextMoveEvent = true;
                                return;
                            }
                            return;
                        }
                        if (i2 == 2) {
                            boolean z = backAnimationController.mBackGestureStarted;
                            if (!z && backAnimationController.mShouldStartOnNextMoveEvent) {
                                if (ShellProtoLogCache.WM_SHELL_BACK_PREVIEW_enabled) {
                                    ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_BACK_PREVIEW, 1188911440, 3, "initAnimation mMotionStarted=%b", Boolean.valueOf(z));
                                }
                                if (backAnimationController.mBackGestureStarted || backAnimationController.mBackNavigationInfo != null) {
                                    Log.e("ShellBackPreview", "Animation is being initialized but is already started.");
                                    backAnimationController.finishBackNavigation();
                                }
                                touchTracker.mInitTouchX = f3;
                                touchTracker.mInitTouchY = f4;
                                touchTracker.mSwipeEdge = i3;
                                touchTracker.mStartThresholdX = f3;
                                backAnimationController.mBackGestureStarted = true;
                                try {
                                    IActivityTaskManager iActivityTaskManager = backAnimationController.mActivityTaskManager;
                                    RemoteCallback remoteCallback = backAnimationController.mNavigationObserver;
                                    if (backAnimationController.mEnableAnimations.get()) {
                                        backAnimationAdapter = backAnimationController.mBackAnimationAdapter;
                                    } else {
                                        backAnimationAdapter = null;
                                    }
                                    BackNavigationInfo startBackNavigation = iActivityTaskManager.startBackNavigation(remoteCallback, backAnimationAdapter);
                                    backAnimationController.mBackNavigationInfo = startBackNavigation;
                                    backAnimationController.onBackNavigationInfoReceived(startBackNavigation);
                                } catch (RemoteException e) {
                                    Log.e("ShellBackPreview", "Failed to initAnimation", e);
                                    backAnimationController.finishBackNavigation();
                                }
                                backAnimationController.mShouldStartOnNextMoveEvent = false;
                            }
                            if (backAnimationController.mBackGestureStarted && backAnimationController.mBackNavigationInfo != null && backAnimationController.mActiveCallback != null) {
                                BackMotionEvent createProgressEvent = touchTracker.createProgressEvent();
                                IOnBackInvokedCallback iOnBackInvokedCallback = backAnimationController.mActiveCallback;
                                if (iOnBackInvokedCallback != null) {
                                    try {
                                        iOnBackInvokedCallback.onBackProgressed(createProgressEvent);
                                        return;
                                    } catch (RemoteException e2) {
                                        Log.e("ShellBackPreview", "dispatchOnBackProgressed error: ", e2);
                                        return;
                                    }
                                }
                                return;
                            }
                            return;
                        }
                        if (i2 == 1 || i2 == 3) {
                            if (ShellProtoLogCache.WM_SHELL_BACK_PREVIEW_enabled) {
                                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_BACK_PREVIEW, -593738189, 1, "Finishing gesture with event action: %d", Long.valueOf(i2));
                            }
                            if (i2 == 3) {
                                backAnimationController.mTriggerBack = false;
                            }
                            backAnimationController.onGestureFinished(true);
                        }
                    }
                }
            });
        }
    }

    public final void dump(PrintWriter printWriter) {
        StringBuilder m = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "EdgeBackGestureHandler:", "  mIsEnabled="), this.mIsEnabled, printWriter, "  mIsAttached="), this.mIsAttached, printWriter, "  mIsBackGestureAllowed="), this.mIsBackGestureAllowed, printWriter, "  mIsGesturalModeEnabled="), this.mIsGesturalModeEnabled, printWriter, "  mIsNavBarShownTransiently="), this.mIsNavBarShownTransiently, printWriter, "  mGestureBlockingActivityRunning="), this.mGestureBlockingActivityRunning, printWriter, "  mAllowGesture="), this.mAllowGesture, printWriter, "  mUseMLModel="), this.mUseMLModel, printWriter, "  mDisabledForQuickstep="), this.mDisabledForQuickstep, printWriter, "  mStartingQuickstepRotation="), this.mStartingQuickstepRotation, printWriter, "  mInRejectedExclusion="), this.mInRejectedExclusion, printWriter, "  mExcludeRegion=");
        m.append(this.mExcludeRegion);
        printWriter.println(m.toString());
        printWriter.println("  mUnrestrictedExcludeRegion=" + this.mUnrestrictedExcludeRegion);
        StringBuilder m2 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("  mIsInPip="), this.mIsInPip, printWriter, "  mPipExcludedBounds=");
        m2.append(this.mPipExcludedBounds);
        printWriter.println(m2.toString());
        printWriter.println("  mDesktopModeExclusionRegion=" + this.mDesktopModeExcludeRegion);
        printWriter.println("  mNavBarOverlayExcludedBounds=" + this.mNavBarOverlayExcludedBounds);
        StringBuilder m3 = LockIconView$$ExternalSyntheticOutline0.m(LockIconView$$ExternalSyntheticOutline0.m(LockIconView$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("  mEdgeWidthLeft="), this.mEdgeWidthLeft, printWriter, "  mEdgeWidthRight="), this.mEdgeWidthRight, printWriter, "  mLeftInset="), this.mLeftInset, printWriter, "  mRightInset="), this.mRightInset, printWriter, "  mMLEnableWidth="), this.mMLEnableWidth, printWriter, "  mMLModelThreshold="), this.mMLModelThreshold, printWriter, "  mTouchSlop="), this.mTouchSlop, printWriter, "  mBottomGestureHeight="), this.mBottomGestureHeight, printWriter, "  mPredictionLog=");
        m3.append(String.join("\n", this.mPredictionLog));
        printWriter.println(m3.toString());
        printWriter.println("  mGestureLogInsideInsets=" + String.join("\n", this.mGestureLogInsideInsets));
        printWriter.println("  mGestureLogOutsideInsets=" + String.join("\n", this.mGestureLogOutsideInsets));
        if (BasicRune.NAVBAR_GESTURE) {
            KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("  mDisabledByPolicy="), this.mDisabledByPolicy, printWriter);
        }
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
            KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("  mIsLargeCoverBackGestureEnabled="), this.mIsLargeCoverBackGestureEnabled, printWriter);
        }
        printWriter.println("  mEdgeBackPlugin=" + this.mEdgeBackPlugin);
        NavigationEdgeBackPlugin navigationEdgeBackPlugin = this.mEdgeBackPlugin;
        if (navigationEdgeBackPlugin != null) {
            navigationEdgeBackPlugin.dump(printWriter);
        }
        if (BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE) {
            EdgeBackSplitGestureHandler edgeBackSplitGestureHandler = this.mEdgeBackSplitGestureHandler;
            edgeBackSplitGestureHandler.getClass();
            printWriter.println("EdgeBackSplitGestureHandler :");
            printWriter.println("  enabled=" + edgeBackSplitGestureHandler.enabled);
            printWriter.println("  tmpBounds=" + edgeBackSplitGestureHandler.tmpBounds);
            printWriter.println("  displayController=" + edgeBackSplitGestureHandler.displayController);
            printWriter.println("  splitScreenController=" + edgeBackSplitGestureHandler.splitScreenController);
        }
    }

    public final boolean isBackGestureAllowed(MotionEvent motionEvent) {
        boolean z;
        boolean isWithinInsets = isWithinInsets((int) motionEvent.getX(), (int) motionEvent.getY());
        boolean z2 = false;
        if (!this.mDisabledForQuickstep && this.mIsBackGestureAllowed && isWithinInsets && !this.mGestureBlockingActivityRunning && !QuickStepContract.isBackGestureDisabled(this.mSysUiFlags) && isWithinTouchRegion((int) motionEvent.getX(), (int) motionEvent.getY()) && !isMultiWindowCornerGesture(motionEvent)) {
            z = true;
        } else {
            z = false;
        }
        if (BasicRune.NAVBAR_GESTURE) {
            if (!this.mDisabledByPolicy && !isBlockSPenGesture(motionEvent)) {
                z2 = true;
            }
            z &= z2;
        }
        if (BasicRune.NAVBAR_REMOTEVIEW) {
            return z & (!this.mNavBarStateManager.isBlockingGestureOnGame());
        }
        return z;
    }

    public final boolean isBlockSPenGesture(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        for (int i = 0; i < motionEvent.getPointerCount(); i++) {
            if ((motionEvent.getToolType(i) & 6) != 0) {
                if ((motionEvent.getButtonState() & 32) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                SettingsHelper settingsHelper = this.mSettingsHelper;
                settingsHelper.getClass();
                if (BasicRune.NAVBAR_GESTURE && settingsHelper.mItemLists.get("navigation_bar_block_gestures_with_spen").getIntValue() != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2 && !z) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public final boolean isHandlingGestures() {
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
            if (this.mIsAttached && this.mIsGesturalModeEnabled && this.mIsBackGestureAllowed) {
                return true;
            }
            return false;
        }
        if (this.mIsEnabled && this.mIsBackGestureAllowed) {
            return true;
        }
        return false;
    }

    public final boolean isMultiWindowCornerGesture(MotionEvent motionEvent) {
        MultiWindowEdgeDetector multiWindowEdgeDetector;
        if (MultiWindowCoreState.MW_FREEFORM_CORNER_GESTURE_ENABLED) {
            if ((!CoreRune.MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY || ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) && (multiWindowEdgeDetector = this.mMultiWindowEdgeDetector) != null && multiWindowEdgeDetector.onTouchEvent(motionEvent)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean isWithinInsets(int i, int i2) {
        float f = i2;
        Point point = this.mDisplaySize;
        if (f >= point.y - this.mBottomGestureHeight) {
            return false;
        }
        if (i > (this.mEdgeWidthLeft + this.mLeftInset) * 2 && i < point.x - ((this.mEdgeWidthRight + this.mRightInset) * 2)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v7 */
    public final boolean isWithinTouchRegion(int i, int i2) {
        boolean z;
        int i3;
        ?? r4;
        boolean z2;
        if (this.mIsInPip && this.mPipExcludedBounds.contains(i, i2)) {
            z = true;
        } else {
            z = false;
        }
        boolean contains = this.mDesktopModeExcludeRegion.contains(i, i2);
        if (z || contains || this.mNavBarOverlayExcludedBounds.contains(i, i2)) {
            return false;
        }
        Map map = this.mVocab;
        if (map != null) {
            i3 = ((Integer) map.getOrDefault(this.mPackageName, -1)).intValue();
        } else {
            i3 = -1;
        }
        int i4 = this.mEdgeWidthLeft;
        int i5 = this.mLeftInset;
        int i6 = i4 + i5;
        Point point = this.mDisplaySize;
        if (i >= i6 && i < (point.x - this.mEdgeWidthRight) - this.mRightInset) {
            r4 = 0;
        } else {
            r4 = 1;
        }
        if (r4 != 0) {
            int i7 = this.mMLEnableWidth;
            if (i >= i5 + i7 && i < (point.x - i7) - this.mRightInset) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (!z2 && this.mUseMLModel && !this.mMLModelIsLoading && this.mBackGestureTfClassifierProvider != null && i3 != -1) {
                int i8 = point.x;
                this.mMLResults = -1.0f;
            }
        }
        this.mPredictionLog.log(String.format("Prediction [%d,%d,%d,%d,%f,%d]", Long.valueOf(System.currentTimeMillis()), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Float.valueOf(this.mMLResults), Integer.valueOf((int) r4)));
        if (!BasicRune.NAVBAR_GESTURE && this.mIsNavBarShownTransiently) {
            this.mLogGesture = true;
            return r4;
        }
        if (this.mExcludeRegion.contains(i, i2)) {
            if (r4 != 0) {
                PointF pointF = this.mEndPoint;
                pointF.x = -1.0f;
                pointF.y = -1.0f;
                this.mLogGesture = true;
                logGesture(3);
            }
            return false;
        }
        this.mInRejectedExclusion = this.mUnrestrictedExcludeRegion.contains(i, i2);
        this.mLogGesture = true;
        return r4;
    }

    public final void logGesture(int i) {
        String str;
        int i2;
        float f;
        if (!this.mLogGesture) {
            return;
        }
        this.mLogGesture = false;
        Map map = this.mVocab;
        if (this.mUseMLModel && map != null && map.containsKey(this.mPackageName) && ((Integer) map.get(this.mPackageName)).intValue() < 100) {
            str = this.mPackageName;
        } else {
            str = "";
        }
        PointF pointF = this.mDownPoint;
        float f2 = pointF.y;
        int i3 = (int) f2;
        if (this.mIsOnLeftEdge) {
            i2 = 1;
        } else {
            i2 = 2;
        }
        int i4 = (int) pointF.x;
        int i5 = (int) f2;
        PointF pointF2 = this.mEndPoint;
        int i6 = (int) pointF2.x;
        int i7 = (int) pointF2.y;
        int i8 = this.mEdgeWidthLeft + this.mLeftInset;
        int i9 = this.mDisplaySize.x - (this.mEdgeWidthRight + this.mRightInset);
        if (this.mUseMLModel) {
            f = this.mMLResults;
        } else {
            f = -2.0f;
        }
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(IKnoxCustomManager.Stub.TRANSACTION_setUsbConnectionType);
        newBuilder.writeInt(i);
        newBuilder.writeInt(i3);
        newBuilder.writeInt(i2);
        newBuilder.writeInt(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        newBuilder.writeInt(i9);
        newBuilder.writeFloat(f);
        newBuilder.writeString(str);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public final void onConfigurationChanged(Configuration configuration) {
        boolean z;
        if (this.mStartingQuickstepRotation > -1) {
            int rotation = configuration.windowConfiguration.getRotation();
            int i = this.mStartingQuickstepRotation;
            if (i > -1 && i != rotation) {
                z = true;
            } else {
                z = false;
            }
            this.mDisabledForQuickstep = z;
        }
        StringBuilder sb = new StringBuilder("Config changed: newConfig=");
        sb.append(configuration);
        sb.append(" lastReportedConfig=");
        Configuration configuration2 = this.mLastReportedConfig;
        sb.append(configuration2);
        Log.i("NoBackGesture", sb.toString());
        configuration2.updateFrom(configuration);
        updateDisplaySize();
        if (BasicRune.NAVBAR_SUPPORT_TASKBAR) {
            Rect maxBounds = configuration.windowConfiguration.getMaxBounds();
            Point point = this.mDisplaySize;
            if (point.x != maxBounds.width() || point.y != maxBounds.height()) {
                Log.d("EdgeBackGestureHandler", "Force update display size as windowConfiguration: " + maxBounds);
                point.set(maxBounds.width(), maxBounds.height());
                if (BasicRune.NAVBAR_SUPPORT_COVER_DISPLAY && this.mDisplayId == 1) {
                    this.mContext.getDisplay().getRealSize(point);
                }
                NavigationEdgeBackPlugin navigationEdgeBackPlugin = this.mEdgeBackPlugin;
                if (navigationEdgeBackPlugin != null) {
                    navigationEdgeBackPlugin.setDisplaySize(point);
                }
            }
        }
        MultiWindowEdgeDetector multiWindowEdgeDetector = this.mMultiWindowEdgeDetector;
        if (multiWindowEdgeDetector != null) {
            multiWindowEdgeDetector.onConfigurationChanged();
        }
    }

    public final void onNavBarAttached() {
        if (BasicRune.NAVBAR_GESTURE) {
            this.mStartingQuickstepRotation = -1;
            this.mDisabledForQuickstep = false;
            this.mDisabledByPolicy = this.mNavBarStateManager.states.gestureDisabledByPolicy;
        }
        this.mIsAttached = true;
        FrameProtoTracer frameProtoTracer = this.mProtoTracer.mProtoTracer;
        synchronized (frameProtoTracer.mLock) {
            frameProtoTracer.mTraceables.add(this);
        }
        this.mOverviewProxyService.addCallback((OverviewProxyService.OverviewProxyListener) this.mQuickSwitchListener);
        this.mSysUiState.addCallback(this.mSysUiStateCallback);
        updateIsEnabled();
        ((UserTrackerImpl) this.mUserTracker).addCallback(this.mUserChangedCallback, this.mMainExecutor);
        if (BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE) {
            EdgeBackSplitGestureHandler edgeBackSplitGestureHandler = this.mEdgeBackSplitGestureHandler;
            edgeBackSplitGestureHandler.settingsHelper.registerCallback(edgeBackSplitGestureHandler.settingsCallBack, Settings.Global.getUriFor("open_in_split_screen_view"));
        }
    }

    public final void onNavBarDetached() {
        this.mIsAttached = false;
        FrameProtoTracer frameProtoTracer = this.mProtoTracer.mProtoTracer;
        synchronized (frameProtoTracer.mLock) {
            frameProtoTracer.mTraceables.remove(this);
        }
        OverviewProxyService overviewProxyService = this.mOverviewProxyService;
        ((ArrayList) overviewProxyService.mConnectionCallbacks).remove(this.mQuickSwitchListener);
        SysUiState sysUiState = this.mSysUiState;
        ((ArrayList) sysUiState.mCallbacks).remove(this.mSysUiStateCallback);
        updateIsEnabled();
        ((UserTrackerImpl) this.mUserTracker).removeCallback(this.mUserChangedCallback);
        if (BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE) {
            EdgeBackSplitGestureHandler edgeBackSplitGestureHandler = this.mEdgeBackSplitGestureHandler;
            edgeBackSplitGestureHandler.settingsHelper.unregisterCallback(edgeBackSplitGestureHandler.settingsCallBack);
        }
    }

    public final void onNavigationModeChanged(int i) {
        boolean z;
        boolean isGesturalMode = QuickStepContract.isGesturalMode(i);
        this.mIsGesturalModeEnabled = isGesturalMode;
        if (BasicRune.NAVBAR_GESTURE && isGesturalMode) {
            NavigationModeUtil navigationModeUtil = NavigationModeUtil.INSTANCE;
            if (i == 2) {
                z = true;
            } else {
                z = false;
            }
            this.mIsGesturalModeEnabled = z;
            this.mDisabledByPolicy = this.mNavBarStateManager.states.gestureDisabledByPolicy;
        }
        updateIsEnabled();
        updateCurrentUserResources();
    }

    @Override // com.android.systemui.plugins.PluginListener
    public final void onPluginConnected(Plugin plugin, Context context) {
        setEdgeBackPlugin((NavigationEdgeBackPlugin) plugin);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public final void onPluginDisconnected(Plugin plugin) {
        resetEdgeBackPlugin();
    }

    public final void resetEdgeBackPlugin() {
        WindowManager windowManager;
        if (this.mIsNewBackAffordanceEnabled) {
            Context context = this.mContext;
            BackPanelController.Factory factory = this.mBackPanelControllerFactory;
            factory.getClass();
            if (BasicRune.NAVBAR_ENABLED) {
                windowManager = (WindowManager) context.getSystemService("window");
            } else {
                windowManager = factory.windowManager;
            }
            BackPanelController backPanelController = new BackPanelController(context, windowManager, factory.viewConfiguration, factory.mainHandler, factory.vibratorHelper, factory.configurationController, factory.latencyTracker);
            backPanelController.init();
            setEdgeBackPlugin(backPanelController);
            return;
        }
        setEdgeBackPlugin((NavigationEdgeBackPlugin) this.mNavBarEdgePanelProvider.get());
    }

    public final void setBackAnimation(BackAnimationController.BackAnimationImpl backAnimationImpl) {
        this.mBackAnimation = backAnimationImpl;
        updateBackAnimationThresholds();
        if (this.mLightBarControllerProvider.get() != null) {
            BackAnimationController.BackAnimationImpl backAnimationImpl2 = this.mBackAnimation;
            EdgeBackGestureHandler$$ExternalSyntheticLambda5 edgeBackGestureHandler$$ExternalSyntheticLambda5 = new EdgeBackGestureHandler$$ExternalSyntheticLambda5(this);
            BackAnimationController backAnimationController = BackAnimationController.this;
            backAnimationController.mCustomizer = edgeBackGestureHandler$$ExternalSyntheticLambda5;
            backAnimationController.mAnimationBackground.mCustomizer = edgeBackGestureHandler$$ExternalSyntheticLambda5;
        }
    }

    public final void setEdgeBackPlugin(NavigationEdgeBackPlugin navigationEdgeBackPlugin) {
        try {
            Trace.beginSection("setEdgeBackPlugin");
            this.mEdgeBackPlugin = navigationEdgeBackPlugin;
            navigationEdgeBackPlugin.setBackCallback(this.mBackCallback);
            this.mEdgeBackPlugin.setLayoutParams(createLayoutParams());
            updateDisplaySize();
        } finally {
            Trace.endSection();
        }
    }

    public final void updateBackAnimationThresholds() {
        if (this.mBackAnimation == null) {
            return;
        }
        final float f = this.mDisplaySize.x;
        final float min = Math.min(f, this.mBackSwipeLinearThreshold);
        final BackAnimationController.BackAnimationImpl backAnimationImpl = this.mBackAnimation;
        final float f2 = this.mNonLinearFactor;
        ((HandlerExecutor) BackAnimationController.this.mShellExecutor).execute(new Runnable() { // from class: com.android.wm.shell.back.BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BackAnimationController.BackAnimationImpl backAnimationImpl2 = BackAnimationController.BackAnimationImpl.this;
                float f3 = min;
                float f4 = f;
                float f5 = f2;
                backAnimationImpl2.getClass();
                boolean z = BackAnimationController.IS_ENABLED;
                BackAnimationController backAnimationController = BackAnimationController.this;
                backAnimationController.getClass();
                int i = TouchTracker.LINEAR_DISTANCE;
                TouchTracker touchTracker = backAnimationController.mTouchTracker;
                if (i >= 0) {
                    touchTracker.mLinearDistance = i;
                } else {
                    touchTracker.mLinearDistance = f3;
                }
                touchTracker.mMaxDistance = f4;
                touchTracker.mNonLinearFactor = f5;
            }
        });
    }

    public final void updateCurrentUserResources() {
        Resources resources;
        Consumer consumer;
        int i = this.mEdgeWidthLeft;
        int i2 = this.mEdgeWidthRight;
        boolean z = BasicRune.NAVBAR_SUPPORT_COVER_DISPLAY;
        int i3 = this.mDisplayId;
        Context context = this.mContext;
        if (z && i3 == 1) {
            resources = context.getResources();
        } else {
            resources = this.mNavigationModeController.getCurrentUserContext().getResources();
        }
        GestureNavigationSettingsObserver gestureNavigationSettingsObserver = this.mGestureNavigationSettingsObserver;
        this.mEdgeWidthLeft = gestureNavigationSettingsObserver.getLeftSensitivity(resources);
        this.mEdgeWidthRight = gestureNavigationSettingsObserver.getRightSensitivity(resources);
        boolean z2 = this.mIsButtonForcedVisible;
        boolean areNavigationButtonForcedVisible = gestureNavigationSettingsObserver.areNavigationButtonForcedVisible();
        this.mIsButtonForcedVisible = areNavigationButtonForcedVisible;
        if (z2 != areNavigationButtonForcedVisible && (consumer = this.mButtonForcedVisibleCallback) != null) {
            consumer.accept(Boolean.valueOf(areNavigationButtonForcedVisible));
        }
        this.mIsBackGestureAllowed = !this.mIsButtonForcedVisible;
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        float f = DeviceConfig.getFloat("systemui", "back_gesture_bottom_height", resources.getDimension(R.dimen.text_size_button_material) / displayMetrics.density);
        if (BasicRune.NAVBAR_BOTTOM_GESTURE_SENSITIVITY) {
            this.mBottomGestureHeight = gestureNavigationSettingsObserver.getBottomSensitivity(resources);
        } else {
            this.mBottomGestureHeight = TypedValue.applyDimension(1, f, displayMetrics);
        }
        int applyDimension = (int) TypedValue.applyDimension(1, 12.0f, displayMetrics);
        this.mMLEnableWidth = applyDimension;
        int i4 = this.mEdgeWidthRight;
        if (applyDimension > i4) {
            this.mMLEnableWidth = i4;
        }
        int i5 = this.mMLEnableWidth;
        int i6 = this.mEdgeWidthLeft;
        if (i5 > i6) {
            this.mMLEnableWidth = i6;
        }
        this.mTouchSlop = this.mViewConfiguration.getScaledTouchSlop() * DeviceConfig.getFloat("systemui", "back_gesture_slop_multiplier", 0.75f);
        this.mBackSwipeLinearThreshold = resources.getDimension(com.android.systemui.R.dimen.navigation_edge_action_progress_threshold);
        TypedValue typedValue = new TypedValue();
        resources.getValue(com.android.systemui.R.dimen.back_progress_non_linear_factor, typedValue, true);
        this.mNonLinearFactor = typedValue.getFloat();
        updateBackAnimationThresholds();
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && this.mIsLargeCoverBackGestureEnabled) {
            NavigationModeUtil navigationModeUtil = NavigationModeUtil.INSTANCE;
            this.mEdgeWidthLeft = (int) (context.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.large_cover_back_gesture_insets) * Settings.Secure.getFloatForUser(context.getContentResolver(), "back_gesture_inset_scale_left", 1.0f, -2));
            this.mEdgeWidthRight = (int) (context.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.large_cover_back_gesture_insets) * Settings.Secure.getFloatForUser(context.getContentResolver(), "back_gesture_inset_scale_right", 1.0f, -2));
        }
        if (BasicRune.NAVBAR_SUPPORT_TASKBAR && this.mNavBarStateManager.isTaskBarEnabled(false)) {
            int i7 = this.mEdgeWidthLeft;
            if (i != i7 || i2 != this.mEdgeWidthRight) {
                ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnUpdateSideBackGestureInsets(i7, this.mEdgeWidthRight), i3);
            }
        }
    }

    public final void updateDisplaySize() {
        Rect maxBounds = this.mLastReportedConfig.windowConfiguration.getMaxBounds();
        Point point = this.mDisplaySize;
        point.set(maxBounds.width(), maxBounds.height());
        if (BasicRune.NAVBAR_SUPPORT_COVER_DISPLAY && this.mDisplayId == 1) {
            this.mContext.getDisplay().getRealSize(point);
        }
        NavigationEdgeBackPlugin navigationEdgeBackPlugin = this.mEdgeBackPlugin;
        if (navigationEdgeBackPlugin != null) {
            navigationEdgeBackPlugin.setDisplaySize(point);
        }
        updateBackAnimationThresholds();
    }

    public final void updateIsEnabled() {
        try {
            Trace.beginSection("EdgeBackGestureHandler#updateIsEnabled");
            updateIsEnabledTraced();
        } finally {
            Trace.endSection();
        }
    }

    public final void updateIsEnabledTraced() {
        boolean z;
        boolean z2 = this.mIsAttached;
        boolean z3 = true;
        boolean z4 = false;
        if (z2 && this.mIsGesturalModeEnabled) {
            z = true;
        } else {
            z = false;
        }
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && !this.mIsGesturalModeEnabled) {
            if (z2 && this.mIsLargeCoverBackGestureEnabled) {
                z = true;
            } else {
                z = false;
            }
        }
        if (z == this.mIsEnabled) {
            return;
        }
        this.mIsEnabled = z;
        InputChannelCompat$InputEventReceiver inputChannelCompat$InputEventReceiver = this.mInputEventReceiver;
        if (inputChannelCompat$InputEventReceiver != null) {
            inputChannelCompat$InputEventReceiver.dispose();
            this.mInputEventReceiver = null;
        }
        InputMonitor inputMonitor = this.mInputMonitor;
        if (inputMonitor != null) {
            inputMonitor.dispose();
            this.mInputMonitor = null;
        }
        NavigationEdgeBackPlugin navigationEdgeBackPlugin = this.mEdgeBackPlugin;
        if (navigationEdgeBackPlugin != null) {
            navigationEdgeBackPlugin.onDestroy();
            this.mEdgeBackPlugin = null;
        }
        boolean z5 = this.mIsEnabled;
        GestureNavigationSettingsObserver gestureNavigationSettingsObserver = this.mGestureNavigationSettingsObserver;
        AnonymousClass1 anonymousClass1 = this.mGestureExclusionListener;
        IWindowManager iWindowManager = this.mWindowManagerService;
        PluginManager pluginManager = this.mPluginManager;
        Optional optional = this.mPipOptional;
        AnonymousClass4 anonymousClass4 = this.mOnPropertiesChangedListener;
        AnonymousClass3 anonymousClass3 = this.mTaskStackListener;
        int i = this.mDisplayId;
        EdgeBackSplitGestureHandler edgeBackSplitGestureHandler = this.mEdgeBackSplitGestureHandler;
        if (!z5) {
            boolean z6 = BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE;
            if (z6) {
                SettingsHelper settingsHelper = edgeBackSplitGestureHandler.settingsHelper;
                settingsHelper.getClass();
                if (!z6 || settingsHelper.mItemLists.get("open_in_split_screen_view").getIntValue() == 0) {
                    z3 = false;
                }
                boolean z7 = false & z3;
                if (edgeBackSplitGestureHandler.enabled != z7) {
                    edgeBackSplitGestureHandler.enabled = z7;
                }
            }
            gestureNavigationSettingsObserver.unregister();
            pluginManager.removePluginListener(this);
            TaskStackChangeListeners.INSTANCE.unregisterTaskStackListener(anonymousClass3);
            DeviceConfig.removeOnPropertiesChangedListener(anonymousClass4);
            optional.ifPresent(new EdgeBackGestureHandler$$ExternalSyntheticLambda2());
            try {
                iWindowManager.unregisterSystemGestureExclusionListener(anonymousClass1, i);
            } catch (RemoteException | IllegalArgumentException e) {
                Log.e("EdgeBackGestureHandler", "Failed to unregister window manager callbacks", e);
            }
        } else {
            gestureNavigationSettingsObserver.register();
            if (BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
                updateCurrentUserResources();
            }
            updateDisplaySize();
            TaskStackChangeListeners.INSTANCE.registerTaskStackListener(anonymousClass3);
            final Executor executor = this.mMainExecutor;
            Objects.requireNonNull(executor);
            DeviceConfig.addOnPropertiesChangedListener("systemui", new Executor() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$$ExternalSyntheticLambda3
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    executor.execute(runnable);
                }
            }, anonymousClass4);
            optional.ifPresent(new EdgeBackGestureHandler$$ExternalSyntheticLambda0(this, 2));
            this.mDesktopModeOptional.ifPresent(new EdgeBackGestureHandler$$ExternalSyntheticLambda0(this, 3));
            try {
                iWindowManager.registerSystemGestureExclusionListener(anonymousClass1, i);
            } catch (RemoteException | IllegalArgumentException e2) {
                Log.e("EdgeBackGestureHandler", "Failed to register window manager callbacks", e2);
            }
            Context context = this.mContext;
            this.mMultiWindowEdgeDetector = new MultiWindowEdgeDetector(context, "EdgeBack");
            InputMonitor monitorGestureInput = ((InputManager) context.getSystemService(InputManager.class)).monitorGestureInput("edge-swipe", i);
            this.mInputMonitor = monitorGestureInput;
            this.mInputEventReceiver = new InputChannelCompat$InputEventReceiver(monitorGestureInput.getInputChannel(), Looper.getMainLooper(), Choreographer.getInstance(), new InputChannelCompat$InputEventListener() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$$ExternalSyntheticLambda4
                @Override // com.android.systemui.shared.system.InputChannelCompat$InputEventListener
                public final void onInputEvent(InputEvent inputEvent) {
                    boolean z8;
                    boolean z9;
                    EdgeBackGestureHandler.LogArray logArray;
                    boolean z10;
                    boolean z11;
                    EdgeBackGestureHandler edgeBackGestureHandler = EdgeBackGestureHandler.this;
                    edgeBackGestureHandler.getClass();
                    if (inputEvent instanceof MotionEvent) {
                        MotionEvent motionEvent = (MotionEvent) inputEvent;
                        int actionMasked = motionEvent.getActionMasked();
                        boolean z12 = BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE;
                        if (z12) {
                            EdgeBackSplitGestureHandler edgeBackSplitGestureHandler2 = edgeBackGestureHandler.mEdgeBackSplitGestureHandler;
                            if (edgeBackSplitGestureHandler2.enabled) {
                                edgeBackSplitGestureHandler2.gestureDetector.onInputEvent(motionEvent);
                            }
                        }
                        if (actionMasked == 0) {
                            edgeBackGestureHandler.mVelocityTracker.clear();
                            boolean z13 = BasicRune.NAVBAR_GESTURE;
                            if (!z13) {
                                edgeBackGestureHandler.mInputEventReceiver.mReceiver.setBatchingEnabled(false);
                            }
                            if (BasicRune.NAVBAR_AOSP_BUG_FIX) {
                                if (((int) motionEvent.getX()) <= edgeBackGestureHandler.mEdgeWidthLeft + edgeBackGestureHandler.mLeftInset) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                edgeBackGestureHandler.mIsOnLeftEdge = z11;
                            } else {
                                if (motionEvent.getX() <= edgeBackGestureHandler.mEdgeWidthLeft + edgeBackGestureHandler.mLeftInset) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                edgeBackGestureHandler.mIsOnLeftEdge = z8;
                            }
                            edgeBackGestureHandler.mMLResults = 0.0f;
                            edgeBackGestureHandler.mLogGesture = false;
                            edgeBackGestureHandler.mInRejectedExclusion = false;
                            boolean isWithinInsets = edgeBackGestureHandler.isWithinInsets((int) motionEvent.getX(), (int) motionEvent.getY());
                            if (!edgeBackGestureHandler.mDisabledForQuickstep && edgeBackGestureHandler.mIsBackGestureAllowed && isWithinInsets && !edgeBackGestureHandler.mGestureBlockingActivityRunning && (((BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && edgeBackGestureHandler.mIsLargeCoverBackGestureEnabled) || !QuickStepContract.isBackGestureDisabled(edgeBackGestureHandler.mSysUiFlags)) && edgeBackGestureHandler.isWithinTouchRegion((int) motionEvent.getX(), (int) motionEvent.getY()) && !edgeBackGestureHandler.isMultiWindowCornerGesture(motionEvent))) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            edgeBackGestureHandler.mAllowGesture = z9;
                            if (z13) {
                                if (!edgeBackGestureHandler.mDisabledByPolicy && !edgeBackGestureHandler.isBlockSPenGesture(motionEvent)) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                edgeBackGestureHandler.mAllowGesture = z9 & z10;
                            }
                            if (BasicRune.NAVBAR_REMOTEVIEW) {
                                edgeBackGestureHandler.mIsBlockGestureOnGame = false;
                                if (edgeBackGestureHandler.mAllowGesture) {
                                    edgeBackGestureHandler.mIsBlockGestureOnGame = edgeBackGestureHandler.mNavBarStateManager.isBlockingGestureOnGame();
                                    edgeBackGestureHandler.mDownPoint.set(motionEvent.getX(), motionEvent.getY());
                                    edgeBackGestureHandler.mAllowGesture &= !edgeBackGestureHandler.mIsBlockGestureOnGame;
                                }
                            }
                            if (edgeBackGestureHandler.mAllowGesture) {
                                edgeBackGestureHandler.mEdgeBackPlugin.setIsLeftPanel(edgeBackGestureHandler.mIsOnLeftEdge);
                                edgeBackGestureHandler.mEdgeBackPlugin.onMotionEvent(motionEvent);
                                edgeBackGestureHandler.dispatchToBackAnimation(motionEvent);
                            }
                            if (edgeBackGestureHandler.mLogGesture) {
                                edgeBackGestureHandler.mDownPoint.set(motionEvent.getX(), motionEvent.getY());
                                edgeBackGestureHandler.mEndPoint.set(-1.0f, -1.0f);
                                edgeBackGestureHandler.mThresholdCrossed = false;
                            }
                            long currentTimeMillis = System.currentTimeMillis();
                            edgeBackGestureHandler.mTmpLogDate.setTime(currentTimeMillis);
                            Object format = edgeBackGestureHandler.mLogDateFormat.format(edgeBackGestureHandler.mTmpLogDate);
                            if (isWithinInsets) {
                                logArray = edgeBackGestureHandler.mGestureLogInsideInsets;
                            } else {
                                logArray = edgeBackGestureHandler.mGestureLogOutsideInsets;
                            }
                            Object[] objArr = new Object[17];
                            objArr[0] = Long.valueOf(currentTimeMillis);
                            if (z13) {
                                format = new Date(currentTimeMillis);
                            }
                            objArr[1] = format;
                            objArr[2] = Boolean.valueOf(edgeBackGestureHandler.mAllowGesture);
                            objArr[3] = false;
                            objArr[4] = Boolean.valueOf(edgeBackGestureHandler.mIsOnLeftEdge);
                            objArr[5] = Boolean.valueOf(edgeBackGestureHandler.mDeferSetIsOnLeftEdge);
                            objArr[6] = Boolean.valueOf(edgeBackGestureHandler.mIsBackGestureAllowed);
                            objArr[7] = Boolean.valueOf(QuickStepContract.isBackGestureDisabled(edgeBackGestureHandler.mSysUiFlags));
                            objArr[8] = Boolean.valueOf(edgeBackGestureHandler.mDisabledForQuickstep);
                            objArr[9] = Boolean.valueOf(edgeBackGestureHandler.mGestureBlockingActivityRunning);
                            objArr[10] = Boolean.valueOf(edgeBackGestureHandler.mIsInPip);
                            objArr[11] = edgeBackGestureHandler.mDisplaySize;
                            objArr[12] = Integer.valueOf(edgeBackGestureHandler.mEdgeWidthLeft);
                            objArr[13] = Integer.valueOf(edgeBackGestureHandler.mLeftInset);
                            objArr[14] = Integer.valueOf(edgeBackGestureHandler.mEdgeWidthRight);
                            objArr[15] = Integer.valueOf(edgeBackGestureHandler.mRightInset);
                            objArr[16] = edgeBackGestureHandler.mExcludeRegion;
                            logArray.log(String.format("Gesture [%d [%s],alw=%B, mltf=%B, left=%B, defLeft=%B, backAlw=%B, disbld=%B, qsDisbld=%b, blkdAct=%B, pip=%B, disp=%s, wl=%d, il=%d, wr=%d, ir=%d, excl=%s]", objArr));
                        } else if (!edgeBackGestureHandler.mAllowGesture && !edgeBackGestureHandler.mLogGesture) {
                            if (BasicRune.NAVBAR_GESTURE && edgeBackGestureHandler.mIsBlockGestureOnGame) {
                                float abs = Math.abs(motionEvent.getX() - edgeBackGestureHandler.mDownPoint.x);
                                if (abs > Math.abs(motionEvent.getY() - edgeBackGestureHandler.mDownPoint.y) && abs > edgeBackGestureHandler.mTouchSlop) {
                                    Settings.Secure.putInt(edgeBackGestureHandler.mSettingsHelper.mResolver, "game_show_floating_icon", 1);
                                    edgeBackGestureHandler.mIsBlockGestureOnGame = false;
                                }
                            }
                        } else {
                            if (z12 && actionMasked == 5 && edgeBackGestureHandler.mEdgeBackSplitGestureHandler.gestureDetected) {
                                Log.d("EdgeBackGestureHandler", "onMotionEvent(" + edgeBackGestureHandler.mDisplaySize + ") cancel reason [splitGesture]");
                                edgeBackGestureHandler.cancelGesture(motionEvent);
                                return;
                            }
                            if (!edgeBackGestureHandler.mThresholdCrossed) {
                                edgeBackGestureHandler.mEndPoint.x = (int) motionEvent.getX();
                                edgeBackGestureHandler.mEndPoint.y = (int) motionEvent.getY();
                                if (actionMasked == 5) {
                                    if (edgeBackGestureHandler.mAllowGesture) {
                                        edgeBackGestureHandler.logGesture(6);
                                        if (BasicRune.NAVBAR_GESTURE) {
                                            Log.d("EdgeBackGestureHandler", "onMotionEvent(" + edgeBackGestureHandler.mDisplaySize + ") cancel reason [multitouch]");
                                        }
                                        edgeBackGestureHandler.cancelGesture(motionEvent);
                                    }
                                    edgeBackGestureHandler.mLogGesture = false;
                                    return;
                                }
                                if (actionMasked == 2) {
                                    if (motionEvent.getEventTime() - motionEvent.getDownTime() > edgeBackGestureHandler.mLongPressTimeout) {
                                        if (edgeBackGestureHandler.mAllowGesture) {
                                            edgeBackGestureHandler.logGesture(7);
                                            edgeBackGestureHandler.cancelGesture(motionEvent);
                                            if (BasicRune.NAVBAR_GESTURE) {
                                                Log.d("EdgeBackGestureHandler", "onMotionEvent(" + edgeBackGestureHandler.mDisplaySize + ") cancel reason [longpress]");
                                            }
                                        }
                                        edgeBackGestureHandler.mLogGesture = false;
                                        return;
                                    }
                                    float abs2 = Math.abs(motionEvent.getX() - edgeBackGestureHandler.mDownPoint.x);
                                    float abs3 = Math.abs(motionEvent.getY() - edgeBackGestureHandler.mDownPoint.y);
                                    if (abs3 > abs2 && abs3 > edgeBackGestureHandler.mTouchSlop) {
                                        if (edgeBackGestureHandler.mAllowGesture) {
                                            edgeBackGestureHandler.logGesture(8);
                                            edgeBackGestureHandler.cancelGesture(motionEvent);
                                            if (BasicRune.NAVBAR_GESTURE) {
                                                Log.d("EdgeBackGestureHandler", "onMotionEvent(" + edgeBackGestureHandler.mDisplaySize + ") cancel reason [vertical move]");
                                            }
                                        }
                                        edgeBackGestureHandler.mLogGesture = false;
                                        return;
                                    }
                                    if (abs2 > abs3 && abs2 > edgeBackGestureHandler.mTouchSlop) {
                                        if (edgeBackGestureHandler.mAllowGesture) {
                                            edgeBackGestureHandler.mThresholdCrossed = true;
                                            edgeBackGestureHandler.mInputMonitor.pilferPointers();
                                            if (edgeBackGestureHandler.mBackAnimation != null) {
                                                edgeBackGestureHandler.mFalsingManager.isFalseTouch(16);
                                            }
                                            if (!BasicRune.NAVBAR_GESTURE) {
                                                edgeBackGestureHandler.mInputEventReceiver.mReceiver.setBatchingEnabled(true);
                                            }
                                        } else {
                                            edgeBackGestureHandler.logGesture(5);
                                        }
                                    }
                                }
                            }
                            if (edgeBackGestureHandler.mAllowGesture) {
                                edgeBackGestureHandler.mEdgeBackPlugin.onMotionEvent(motionEvent);
                                edgeBackGestureHandler.dispatchToBackAnimation(motionEvent);
                            }
                        }
                        FrameProtoTracer frameProtoTracer = edgeBackGestureHandler.mProtoTracer.mProtoTracer;
                        if (frameProtoTracer.mEnabled && !frameProtoTracer.mFrameScheduled) {
                            if (frameProtoTracer.mChoreographer == null) {
                                frameProtoTracer.mChoreographer = Choreographer.getMainThreadInstance();
                            }
                            frameProtoTracer.mChoreographer.postFrameCallback(frameProtoTracer);
                            frameProtoTracer.mFrameScheduled = true;
                        }
                    }
                }
            });
            ReleasedFlag releasedFlag = Flags.NEW_BACK_AFFORDANCE;
            FeatureFlags featureFlags = this.mFeatureFlags;
            this.mIsNewBackAffordanceEnabled = ((FeatureFlagsRelease) featureFlags).isEnabled(releasedFlag);
            featureFlags.getClass();
            resetEdgeBackPlugin();
            pluginManager.addPluginListener((PluginListener) this, NavigationEdgeBackPlugin.class, false);
            boolean z8 = BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE;
            if (z8) {
                SettingsHelper settingsHelper2 = edgeBackSplitGestureHandler.settingsHelper;
                settingsHelper2.getClass();
                if (z8 && settingsHelper2.mItemLists.get("open_in_split_screen_view").getIntValue() != 0) {
                    z4 = true;
                }
                boolean z9 = true & z4;
                if (edgeBackSplitGestureHandler.enabled != z9) {
                    edgeBackSplitGestureHandler.enabled = z9;
                }
                edgeBackSplitGestureHandler.inputMonitor = this.mInputMonitor;
            }
        }
        updateMLModelState();
    }

    public final void updateMLModelState() {
        boolean z = false;
        if (this.mIsGesturalModeEnabled && DeviceConfig.getBoolean("systemui", "use_back_gesture_ml_model", false)) {
            z = true;
        }
        if (z == this.mUseMLModel) {
            return;
        }
        this.mUseMLModel = z;
        if (z) {
            Assert.isMainThread();
            if (this.mMLModelIsLoading) {
                Log.d("EdgeBackGestureHandler", "Model tried to load while already loading.");
                return;
            }
            this.mMLModelIsLoading = true;
            this.mBackgroundExecutor.execute(new EdgeBackGestureHandler$$ExternalSyntheticLambda1(this, 1));
            return;
        }
        BackGestureTfClassifierProvider backGestureTfClassifierProvider = this.mBackGestureTfClassifierProvider;
        if (backGestureTfClassifierProvider != null) {
            backGestureTfClassifierProvider.getClass();
            this.mBackGestureTfClassifierProvider = null;
            this.mVocab = null;
        }
    }

    @Override // com.android.systemui.shared.tracing.ProtoTraceable
    public final void writeToProto(SystemUiTraceProto systemUiTraceProto) {
        if (systemUiTraceProto.edgeBackGestureHandler == null) {
            systemUiTraceProto.edgeBackGestureHandler = new EdgeBackGestureHandlerProto();
        }
        systemUiTraceProto.edgeBackGestureHandler.allowGesture = this.mAllowGesture;
    }
}
