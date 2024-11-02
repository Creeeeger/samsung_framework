package com.android.systemui.navigationbar;

import android.app.ActivityTaskManager;
import android.app.IActivityTaskManager;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.DeviceConfig;
import android.telecom.TelecomManager;
import android.util.Log;
import android.util.MathUtils;
import android.view.Display;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.mediarouter.media.MediaRoute2Provider$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.statusbar.LetterboxDetails;
import com.android.internal.util.LatencyTracker;
import com.android.internal.view.AppearanceRegion;
import com.android.internal.view.RotationPolicy;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.R;
import com.android.systemui.assist.AssistManager;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.model.SysUiState;
import com.android.systemui.navigationbar.NavBarHelper;
import com.android.systemui.navigationbar.NavigationBarTransitions;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.navigationbar.buttons.ButtonDispatcher;
import com.android.systemui.navigationbar.buttons.ButtonInterface;
import com.android.systemui.navigationbar.buttons.DeadZone;
import com.android.systemui.navigationbar.buttons.KeyButtonView;
import com.android.systemui.navigationbar.buttons.NearestTouchFrame;
import com.android.systemui.navigationbar.buttons.RotationContextButton;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.gestural.QuickswitchOrientedNavHandle;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.navigationbar.util.NavigationModeUtil;
import com.android.systemui.navigationbar.util.OneHandModeUtil;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.recents.OverviewProxyService;
import com.android.systemui.recents.Recents;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.settings.UserContextProvider;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.shared.navigationbar.RegionSamplingHelper;
import com.android.systemui.shared.recents.IOverviewProxy;
import com.android.systemui.shared.recents.utilities.Utilities;
import com.android.systemui.shared.rotation.FloatingRotationButton;
import com.android.systemui.shared.rotation.FloatingRotationButtonPositionCalculator;
import com.android.systemui.shared.rotation.RotationButtonController;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import com.android.systemui.statusbar.AutoHideUiElement;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.NotificationShadeDepthController;
import com.android.systemui.statusbar.phone.AutoHideController;
import com.android.systemui.statusbar.phone.BarTransitions;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.LightBarController;
import com.android.systemui.statusbar.phone.LightBarTransitionsController;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.util.DeviceConfigProxy;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.Utils;
import com.android.systemui.util.ViewController;
import com.android.wm.shell.back.BackAnimationController;
import com.android.wm.shell.pip.Pip;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.SemWallpaperColorsWrapper;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavigationBar extends ViewController implements CommandQueue.Callbacks {
    public final AccessibilityManager mAccessibilityManager;
    public int mAppearance;
    public final Lazy mAssistManagerLazy;
    public final NavigationBar$$ExternalSyntheticLambda9 mAutoDim;
    public AutoHideController mAutoHideController;
    public final AutoHideController.Factory mAutoHideControllerFactory;
    public final AnonymousClass1 mAutoHideUiElement;
    public final Optional mBackAnimation;
    public int mBehavior;
    public final Lazy mCentralSurfacesOptionalLazy;
    public final CommandQueue mCommandQueue;
    public final Context mContext;
    public int mCurrentRotation;
    public final DeadZone mDeadZone;
    public final AnonymousClass6 mDepthListener;
    public final DeviceConfigProxy mDeviceConfigProxy;
    public final DeviceProvisionedController mDeviceProvisionedController;
    public int mDisabledFlags1;
    public int mDisabledFlags2;
    public int mDisplayId;
    public final DisplayTracker mDisplayTracker;
    public final EdgeBackGestureHandler mEdgeBackGestureHandler;
    public final NavigationBar$$ExternalSyntheticLambda9 mEnableLayoutTransitions;
    public NavigationBarFrame mFrame;
    public final Handler mHandler;
    public boolean mHomeBlockedThisTouch;
    public Optional mHomeButtonLongPressDurationMs;
    public boolean mImeVisible;
    public final InputMethodManager mInputMethodManager;
    public final Binder mInsetsSourceOwner;
    public boolean mIsOnDefaultDisplay;
    public long mLastLockToAppLongPress;
    public int mLayoutDirection;
    public LightBarController mLightBarController;
    public final LightBarController.Factory mLightBarControllerFactory;
    public Locale mLocale;
    public final LogWrapper mLogWrapper;
    public boolean mLongPressHomeEnabled;
    public final AutoHideController mMainAutoHideController;
    public final LightBarController mMainLightBarController;
    public final MetricsLogger mMetricsLogger;
    public final AnonymousClass12 mModeChangedListener;
    public final NavBarHelper mNavBarHelper;
    public int mNavBarMode;
    public NavBarStateManager mNavBarStateManager;
    public final NavBarStore mNavBarStore;
    public final int mNavColorSampleMargin;
    public final AnonymousClass2 mNavbarTaskbarStateUpdater;
    public final NavigationBarTransitions mNavigationBarTransitions;
    public int mNavigationBarWindowState;
    public int mNavigationIconHints;
    public final NavigationModeController mNavigationModeController;
    public final NotificationRemoteInputManager mNotificationRemoteInputManager;
    public final NotificationShadeDepthController mNotificationShadeDepthController;
    public final NavigationBar$$ExternalSyntheticLambda10 mOnComputeInternalInsetsListener;
    public final AnonymousClass5 mOnPropertiesChangedListener;
    public final NavigationBar$$ExternalSyntheticLambda9 mOnVariableDurationHomeLongClick;
    public final OneHandModeUtil mOneHandModeUtil;
    public QuickswitchOrientedNavHandle mOrientationHandle;
    public NavigationBar$$ExternalSyntheticLambda12 mOrientationHandleGlobalLayoutListener;
    public final AnonymousClass4 mOrientationHandleIntensityListener;
    public WindowManager.LayoutParams mOrientationParams;
    public Rect mOrientedHandleSamplingRegion;
    public final AnonymousClass3 mOverviewProxyListener;
    public final OverviewProxyService mOverviewProxyService;
    public final Optional mPipOptional;
    public final Optional mRecentsOptional;
    public final RegionSamplingHelper mRegionSamplingHelper;
    public final Rect mSamplingBounds;
    public final Bundle mSavedState;
    public boolean mScreenPinningActive;
    public boolean mShowOrientedHandleForImmersiveMode;
    public int mStartingQuickSwitchRotation;
    public final StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;
    public final StatusBarStateController mStatusBarStateController;
    public final AnonymousClass8 mSurfaceChangedCallback;
    public final SysUiState mSysUiFlagsContainer;
    public final TaskStackChangeListeners mTaskStackChangeListeners;
    public final AnonymousClass9 mTaskStackListener;
    public final Optional mTelecomManagerOptional;
    public final AnonymousClass13 mTouchHandler;
    public boolean mTransientShown;
    public boolean mTransientShownFromGestureOnSystemBar;
    public int mTransitionMode;
    public final UiEventLogger mUiEventLogger;
    public final UserTracker.Callback mUserChangedCallback;
    public final UserContextProvider mUserContextProvider;
    public final UserTracker mUserTracker;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final AnonymousClass7 mWakefulnessObserver;
    public final WindowManager mWindowManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum NavBarActionEvent implements UiEventLogger.UiEventEnum {
        NAVBAR_ASSIST_LONGPRESS(550);

        private final int mId;

        NavBarActionEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda10] */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.android.systemui.navigationbar.NavigationBar$9] */
    /* JADX WARN: Type inference failed for: r6v3, types: [com.android.systemui.navigationbar.NavigationBar$12, com.android.systemui.navigationbar.NavigationModeController$ModeChangedListener] */
    /* JADX WARN: Type inference failed for: r7v10, types: [com.android.systemui.navigationbar.NavigationBar$5] */
    /* JADX WARN: Type inference failed for: r7v11, types: [com.android.systemui.navigationbar.NavigationBar$6] */
    /* JADX WARN: Type inference failed for: r7v12, types: [com.android.systemui.navigationbar.NavigationBar$7] */
    /* JADX WARN: Type inference failed for: r7v13, types: [com.android.systemui.navigationbar.NavigationBar$8] */
    /* JADX WARN: Type inference failed for: r7v14, types: [com.android.systemui.navigationbar.NavigationBar$13] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.android.systemui.navigationbar.NavigationBar$1] */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.android.systemui.navigationbar.NavigationBar$2] */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.android.systemui.navigationbar.NavigationBar$3] */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.android.systemui.navigationbar.NavigationBar$4] */
    public NavigationBar(NavigationBarView navigationBarView, NavigationBarFrame navigationBarFrame, Bundle bundle, Context context, WindowManager windowManager, Lazy lazy, AccessibilityManager accessibilityManager, DeviceProvisionedController deviceProvisionedController, MetricsLogger metricsLogger, OverviewProxyService overviewProxyService, NavigationModeController navigationModeController, StatusBarStateController statusBarStateController, StatusBarKeyguardViewManager statusBarKeyguardViewManager, SysUiState sysUiState, UserTracker userTracker, CommandQueue commandQueue, Optional<Pip> optional, Optional<Recents> optional2, Lazy lazy2, ShadeController shadeController, NotificationRemoteInputManager notificationRemoteInputManager, NotificationShadeDepthController notificationShadeDepthController, Handler handler, Executor executor, Executor executor2, UiEventLogger uiEventLogger, NavBarHelper navBarHelper, LightBarController lightBarController, LightBarController.Factory factory, AutoHideController autoHideController, AutoHideController.Factory factory2, Optional<TelecomManager> optional3, InputMethodManager inputMethodManager, DeadZone deadZone, DeviceConfigProxy deviceConfigProxy, NavigationBarTransitions navigationBarTransitions, Optional<BackAnimationController.BackAnimationImpl> optional4, UserContextProvider userContextProvider, WakefulnessLifecycle wakefulnessLifecycle, TaskStackChangeListeners taskStackChangeListeners, DisplayTracker displayTracker, LogWrapper logWrapper) {
        super(navigationBarView);
        EdgeBackGestureHandler edgeBackGestureHandler;
        EdgeBackGestureHandler edgeBackGestureHandler2;
        this.mNavigationBarWindowState = 0;
        this.mNavigationIconHints = 0;
        this.mNavBarMode = 0;
        this.mStartingQuickSwitchRotation = -1;
        this.mSamplingBounds = new Rect();
        this.mInsetsSourceOwner = new Binder();
        this.mAutoHideUiElement = new AutoHideUiElement() { // from class: com.android.systemui.navigationbar.NavigationBar.1
            @Override // com.android.systemui.statusbar.AutoHideUiElement
            public final void hide() {
                NavigationBar navigationBar = NavigationBar.this;
                if (navigationBar.mTransientShown) {
                    navigationBar.mTransientShown = false;
                    navigationBar.mTransientShownFromGestureOnSystemBar = false;
                    navigationBar.handleTransientChanged();
                }
            }

            @Override // com.android.systemui.statusbar.AutoHideUiElement
            public final boolean isVisible() {
                return NavigationBar.this.mTransientShown;
            }

            @Override // com.android.systemui.statusbar.AutoHideUiElement
            public final boolean shouldHideOnTouch() {
                return !NavigationBar.this.mNotificationRemoteInputManager.isRemoteInputActive();
            }

            @Override // com.android.systemui.statusbar.AutoHideUiElement
            public final void synchronizeState() {
                NavigationBar.this.checkNavBarModes();
            }
        };
        this.mNavbarTaskbarStateUpdater = new NavBarHelper.NavbarTaskbarStateUpdater() { // from class: com.android.systemui.navigationbar.NavigationBar.2
            @Override // com.android.systemui.navigationbar.NavBarHelper.NavbarTaskbarStateUpdater
            public final void updateAccessibilityGestureDetected(boolean z) {
                NavigationBar navigationBar = NavigationBar.this;
                View view = navigationBar.mView;
                if (view == null) {
                    return;
                }
                ((NavigationBarView) view).setSlippery(!z);
                NavigationBarView navigationBarView2 = (NavigationBarView) navigationBar.mView;
                for (int i = 0; i < navigationBarView2.mButtonDispatchers.size(); i++) {
                    ArrayList arrayList = ((ButtonDispatcher) navigationBarView2.mButtonDispatchers.valueAt(i)).mViews;
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (arrayList.get(i2) instanceof ButtonInterface) {
                            ((ButtonInterface) arrayList.get(i2)).abortCurrentGestureByA11yGesture(z);
                        }
                    }
                }
            }

            @Override // com.android.systemui.navigationbar.NavBarHelper.NavbarTaskbarStateUpdater
            public final void updateAccessibilityServicesState() {
                NavigationBar.this.updateAccessibilityStateFlags();
            }

            @Override // com.android.systemui.navigationbar.NavBarHelper.NavbarTaskbarStateUpdater
            public final void updateAssistantAvailable(boolean z, boolean z2) {
                NavigationBar navigationBar = NavigationBar.this;
                if (navigationBar.mView == null) {
                    return;
                }
                navigationBar.mLongPressHomeEnabled = z2;
                IOverviewProxy iOverviewProxy = navigationBar.mOverviewProxyService.mOverviewProxy;
                if (iOverviewProxy != null) {
                    try {
                        ((IOverviewProxy.Stub.Proxy) iOverviewProxy).onAssistantAvailable(z, z2);
                    } catch (RemoteException unused) {
                        Log.w("NavigationBar", "Unable to send assistant availability data to launcher");
                    }
                }
                navigationBar.reconfigureHomeLongClick();
            }

            @Override // com.android.systemui.navigationbar.NavBarHelper.NavbarTaskbarStateUpdater
            public final void updateRotationWatcherState(int i) {
                View view;
                boolean z;
                boolean z2 = BasicRune.NAVBAR_ENABLED;
                NavigationBar navigationBar = NavigationBar.this;
                if (z2) {
                    ((NavBarStoreImpl) navigationBar.mNavBarStore).handleEvent(navigationBar, new EventTypeFactory.EventType.OnRotationChanged(i), navigationBar.mDisplayId);
                }
                if (navigationBar.mIsOnDefaultDisplay && (view = navigationBar.mView) != null) {
                    ((NavigationBarView) view).mRotationButtonController.onRotationWatcherChanged(i);
                    if (((NavigationBarView) navigationBar.mView).mCurrentRotation != i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        navigationBar.repositionNavigationBar(i);
                    }
                }
            }

            @Override // com.android.systemui.navigationbar.NavBarHelper.NavbarTaskbarStateUpdater
            public final void updateWallpaperVisibility(boolean z) {
                NavigationBarTransitions navigationBarTransitions2 = NavigationBar.this.mNavigationBarTransitions;
                navigationBarTransitions2.mWallpaperVisible = z;
                navigationBarTransitions2.applyLightsOut(true, false);
            }
        };
        this.mOverviewProxyListener = new OverviewProxyService.OverviewProxyListener() { // from class: com.android.systemui.navigationbar.NavigationBar.3
            @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
            public final void onConnectionChanged(boolean z) {
                NavigationBar navigationBar = NavigationBar.this;
                NavigationBarView navigationBarView2 = (NavigationBarView) navigationBar.mView;
                OverviewProxyService overviewProxyService2 = navigationBar.mOverviewProxyService;
                navigationBarView2.mOverviewProxyEnabled = overviewProxyService2.mIsEnabled;
                navigationBarView2.mShowSwipeUpUi = overviewProxyService2.shouldShowSwipeUpUI();
                navigationBarView2.updateStates();
                navigationBar.updateScreenPinningGestures();
            }

            @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
            public final void onHomeRotationEnabled(boolean z) {
                RotationButtonController rotationButtonController = ((NavigationBarView) NavigationBar.this.mView).mRotationButtonController;
                rotationButtonController.mHomeRotationEnabled = z;
                if (rotationButtonController.mIsRecentsAnimationRunning && !z) {
                    rotationButtonController.setRotateSuggestionButtonState(false, true);
                }
            }

            @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
            public final void onOverviewShown() {
                ((NavigationBarView) NavigationBar.this.mView).mRotationButtonController.mSkipOverrideUserLockPrefsOnce = !r1.mIsRecentsAnimationRunning;
            }

            @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
            public final void onPrioritizedRotation(int i) {
                boolean z = BasicRune.NAVBAR_ENABLED;
                NavigationBar navigationBar = NavigationBar.this;
                if (z) {
                    navigationBar.mLogWrapper.dp("NavigationBar", String.format("onPrioritizedRotation rotation : %d", Integer.valueOf(i)));
                }
                navigationBar.mStartingQuickSwitchRotation = i;
                if (i == -1) {
                    navigationBar.mShowOrientedHandleForImmersiveMode = false;
                }
                navigationBar.orientSecondaryHomeHandle();
            }

            @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
            public final void onTaskbarStatusUpdated(boolean z, boolean z2) {
                FloatingRotationButton floatingRotationButton = ((NavigationBarView) NavigationBar.this.mView).mFloatingRotationButton;
                floatingRotationButton.mIsTaskbarVisible = z;
                floatingRotationButton.mIsTaskbarStashed = z2;
                if (floatingRotationButton.mIsShowing) {
                    FloatingRotationButtonPositionCalculator.Position calculatePosition = floatingRotationButton.mPositionCalculator.calculatePosition(floatingRotationButton.mDisplayRotation, z, z2);
                    FloatingRotationButtonPositionCalculator.Position position = floatingRotationButton.mPosition;
                    if (calculatePosition.translationX == position.translationX) {
                        if (calculatePosition.translationY == position.translationY) {
                            return;
                        }
                    }
                    floatingRotationButton.updateTranslation(calculatePosition, true);
                    floatingRotationButton.mPosition = calculatePosition;
                }
            }

            @Override // com.android.systemui.recents.OverviewProxyService.OverviewProxyListener
            public final void onToggleRecentApps() {
                ((NavigationBarView) NavigationBar.this.mView).mRotationButtonController.mSkipOverrideUserLockPrefsOnce = !r1.mIsRecentsAnimationRunning;
            }
        };
        this.mOrientationHandleIntensityListener = new NavigationBarTransitions.DarkIntensityListener() { // from class: com.android.systemui.navigationbar.NavigationBar.4
            @Override // com.android.systemui.navigationbar.NavigationBarTransitions.DarkIntensityListener
            public final void onDarkIntensity(float f) {
                QuickswitchOrientedNavHandle quickswitchOrientedNavHandle;
                if (BasicRune.NAVBAR_AOSP_BUG_FIX && (quickswitchOrientedNavHandle = NavigationBar.this.mOrientationHandle) != null) {
                    quickswitchOrientedNavHandle.setDarkIntensity(f);
                }
            }
        };
        this.mAutoDim = new NavigationBar$$ExternalSyntheticLambda9(this, 0);
        this.mEnableLayoutTransitions = new NavigationBar$$ExternalSyntheticLambda9(this, 1);
        this.mOnVariableDurationHomeLongClick = new NavigationBar$$ExternalSyntheticLambda9(this, 2);
        this.mOnPropertiesChangedListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.systemui.navigationbar.NavigationBar.5
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                if (properties.getKeyset().contains("home_button_long_press_duration_ms")) {
                    NavigationBar.this.mHomeButtonLongPressDurationMs = Optional.of(Long.valueOf(properties.getLong("home_button_long_press_duration_ms", 0L))).filter(new NavigationBar$$ExternalSyntheticLambda8(1));
                    NavigationBar navigationBar = NavigationBar.this;
                    if (navigationBar.mView != null) {
                        navigationBar.reconfigureHomeLongClick();
                    }
                }
            }
        };
        this.mDepthListener = new Object(this) { // from class: com.android.systemui.navigationbar.NavigationBar.6
        };
        this.mWakefulnessObserver = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.navigationbar.NavigationBar.7
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedGoingToSleep() {
                NavigationBar navigationBar = NavigationBar.this;
                ((NavigationBarView) navigationBar.mView).updateNavButtonIcons();
                ((NavigationBarView) navigationBar.mView).onScreenStateChanged(false);
                navigationBar.mRegionSamplingHelper.stop();
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedWakingUp() {
                NavigationBar navigationBar = NavigationBar.this;
                ((NavigationBarView) navigationBar.mView).updateNavButtonIcons();
                ((NavigationBarView) navigationBar.mView).onScreenStateChanged(true);
                if ((BasicRune.NAVBAR_ENABLED && navigationBar.mNavBarStateManager.isGestureMode()) || Utils.isGesturalModeOnDefaultDisplay(navigationBar.mContext, navigationBar.mDisplayTracker, navigationBar.mNavBarMode)) {
                    navigationBar.mRegionSamplingHelper.start(navigationBar.mSamplingBounds);
                }
            }
        };
        this.mSurfaceChangedCallback = new ViewRootImpl.SurfaceChangedCallback() { // from class: com.android.systemui.navigationbar.NavigationBar.8
            public final void surfaceCreated(SurfaceControl.Transaction transaction) {
                NavigationBar.this.notifyNavigationBarSurface();
            }

            public final void surfaceDestroyed() {
                NavigationBar.this.notifyNavigationBarSurface();
            }

            public final void surfaceReplaced(SurfaceControl.Transaction transaction) {
                NavigationBar.this.notifyNavigationBarSurface();
            }
        };
        this.mScreenPinningActive = false;
        this.mTaskStackListener = new TaskStackChangeListener() { // from class: com.android.systemui.navigationbar.NavigationBar.9
            @Override // com.android.systemui.shared.system.TaskStackChangeListener
            public final void onLockTaskModeChanged(int i) {
                boolean z;
                if (i == 2) {
                    z = true;
                } else {
                    z = false;
                }
                NavigationBar navigationBar = NavigationBar.this;
                navigationBar.mScreenPinningActive = z;
                SysUiState sysUiState2 = navigationBar.mSysUiFlagsContainer;
                sysUiState2.setFlag(1L, z);
                sysUiState2.commitUpdate(navigationBar.mDisplayId);
                ((NavigationBarView) navigationBar.mView).mScreenPinningActive = navigationBar.mScreenPinningActive;
                navigationBar.updateScreenPinningGestures();
            }
        };
        this.mUserChangedCallback = new UserTracker.Callback() { // from class: com.android.systemui.navigationbar.NavigationBar.11
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                NavigationBar.this.updateAccessibilityStateFlags();
            }
        };
        ?? r6 = new NavigationModeController.ModeChangedListener() { // from class: com.android.systemui.navigationbar.NavigationBar.12
            @Override // com.android.systemui.navigationbar.NavigationModeController.ModeChangedListener
            public final void onNavigationModeChanged(int i) {
                boolean z;
                ButtonDispatcher accessibilityButton;
                NavigationBar navigationBar = NavigationBar.this;
                if (navigationBar.mNavBarMode != i) {
                    z = true;
                } else {
                    z = false;
                }
                navigationBar.mNavBarMode = i;
                boolean z2 = BasicRune.NAVBAR_ENABLED;
                NavBarStore navBarStore = navigationBar.mNavBarStore;
                if (z2) {
                    NavBarStateManager.States states = navigationBar.mNavBarStateManager.states;
                    ((NavBarStoreImpl) navBarStore).handleEvent(navigationBar, new EventTypeFactory.EventType.OnNavBarConfigChanged(states.canMove, states.supportPhoneLayoutProvider, states.imeDownButtonForAllRotation, i), navigationBar.mDisplayId);
                }
                boolean isGesturalMode = QuickStepContract.isGesturalMode(i);
                NavigationBarTransitions navigationBarTransitions2 = navigationBar.mNavigationBarTransitions;
                if (!isGesturalMode && navigationBarTransitions2 != null) {
                    BarTransitions.BarBackgroundDrawable barBackgroundDrawable = navigationBarTransitions2.mBarBackground;
                    barBackgroundDrawable.mOverrideAlpha = 1.0f;
                    barBackgroundDrawable.invalidateSelf();
                }
                if (z) {
                    if (BasicRune.NAVBAR_AOSP_BUG_FIX) {
                        QuickswitchOrientedNavHandle quickswitchOrientedNavHandle = navigationBar.mOrientationHandle;
                        if (quickswitchOrientedNavHandle != null && quickswitchOrientedNavHandle.isAttachedToWindow()) {
                            navigationBar.resetSecondaryHandle();
                            ((ArrayList) navigationBarTransitions2.mDarkIntensityListeners).remove(navigationBar.mOrientationHandleIntensityListener);
                            navigationBar.mWindowManager.removeView(navigationBar.mOrientationHandle);
                            navigationBar.mOrientationHandle.getViewTreeObserver().removeOnGlobalLayoutListener(navigationBar.mOrientationHandleGlobalLayoutListener);
                            navigationBar.mOrientationHandle = null;
                        }
                        navigationBar.initSecondaryHomeHandleForRotation();
                    }
                    if (z2 && (accessibilityButton = ((NavigationBarView) navigationBar.mView).getAccessibilityButton()) != null && accessibilityButton.getVisibility() == 0) {
                        ((NavBarStoreImpl) navBarStore).handleEvent(navigationBar, new EventTypeFactory.EventType.OnShowA11YSwipeUpTipPopup());
                    }
                }
                navigationBar.updateScreenPinningGestures();
                if (!navigationBar.canShowSecondaryHandle()) {
                    navigationBar.resetSecondaryHandle();
                }
                navigationBar.setNavBarMode(i);
                NavigationBarView navigationBarView2 = (NavigationBarView) navigationBar.mView;
                navigationBarView2.mShowSwipeUpUi = navigationBar.mOverviewProxyService.shouldShowSwipeUpUI();
                navigationBarView2.updateStates();
            }
        };
        this.mModeChangedListener = r6;
        this.mTouchHandler = new Gefingerpoken() { // from class: com.android.systemui.navigationbar.NavigationBar.13
            public boolean mDeadZoneConsuming;

            @Override // com.android.systemui.Gefingerpoken
            public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                NavigationBar navigationBar = NavigationBar.this;
                if (QuickStepContract.isGesturalMode(navigationBar.mNavBarMode) && navigationBar.mImeVisible && motionEvent.getAction() == 0) {
                    SysUiStatsLog.write(304, (int) motionEvent.getX(), (int) motionEvent.getY());
                }
                return shouldDeadZoneConsumeTouchEvents(motionEvent);
            }

            @Override // com.android.systemui.Gefingerpoken
            public final boolean onTouchEvent(MotionEvent motionEvent) {
                shouldDeadZoneConsumeTouchEvents(motionEvent);
                return false;
            }

            public final boolean shouldDeadZoneConsumeTouchEvents(MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    this.mDeadZoneConsuming = false;
                }
                NavigationBar navigationBar = NavigationBar.this;
                if (!navigationBar.mDeadZone.onTouchEvent(motionEvent) && !this.mDeadZoneConsuming) {
                    return false;
                }
                if (actionMasked != 0) {
                    if (actionMasked == 1 || actionMasked == 3) {
                        ((NavigationBarView) navigationBar.mView).updateSlippery();
                        this.mDeadZoneConsuming = false;
                    }
                } else {
                    ((NavigationBarView) navigationBar.mView).setSlippery(true);
                    this.mDeadZoneConsuming = true;
                }
                return true;
            }
        };
        this.mFrame = navigationBarFrame;
        this.mContext = context;
        this.mSavedState = bundle;
        this.mWindowManager = windowManager;
        this.mAccessibilityManager = accessibilityManager;
        this.mDeviceProvisionedController = deviceProvisionedController;
        this.mStatusBarStateController = statusBarStateController;
        this.mMetricsLogger = metricsLogger;
        this.mAssistManagerLazy = lazy;
        this.mStatusBarKeyguardViewManager = statusBarKeyguardViewManager;
        this.mSysUiFlagsContainer = sysUiState;
        this.mCentralSurfacesOptionalLazy = lazy2;
        this.mNotificationRemoteInputManager = notificationRemoteInputManager;
        this.mOverviewProxyService = overviewProxyService;
        this.mNavigationModeController = navigationModeController;
        this.mUserTracker = userTracker;
        this.mCommandQueue = commandQueue;
        this.mPipOptional = optional;
        this.mRecentsOptional = optional2;
        this.mDeadZone = deadZone;
        this.mDeviceConfigProxy = deviceConfigProxy;
        this.mNavigationBarTransitions = navigationBarTransitions;
        this.mBackAnimation = optional4;
        this.mHandler = handler;
        this.mUiEventLogger = uiEventLogger;
        this.mNavBarHelper = navBarHelper;
        this.mNotificationShadeDepthController = notificationShadeDepthController;
        this.mMainLightBarController = lightBarController;
        this.mLightBarControllerFactory = factory;
        this.mMainAutoHideController = autoHideController;
        this.mAutoHideControllerFactory = factory2;
        this.mTelecomManagerOptional = optional3;
        this.mInputMethodManager = inputMethodManager;
        this.mUserContextProvider = userContextProvider;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mTaskStackChangeListeners = taskStackChangeListeners;
        this.mDisplayTracker = displayTracker;
        boolean z = BasicRune.NAVBAR_ENABLED;
        if (z) {
            navBarHelper.getClass();
            if (BasicRune.NAVBAR_SUPPORT_COVER_DISPLAY && context.getDisplayId() == 1) {
                edgeBackGestureHandler2 = navBarHelper.mEdgeBackGestureHandlerFactory.create(context);
            } else {
                edgeBackGestureHandler2 = navBarHelper.mEdgeBackGestureHandler;
            }
            this.mEdgeBackGestureHandler = edgeBackGestureHandler2;
        } else {
            Context context2 = navBarHelper.mContext;
            if (BasicRune.NAVBAR_SUPPORT_COVER_DISPLAY && context2.getDisplayId() == 1) {
                edgeBackGestureHandler = navBarHelper.mEdgeBackGestureHandlerFactory.create(context2);
            } else {
                edgeBackGestureHandler = navBarHelper.mEdgeBackGestureHandler;
            }
            this.mEdgeBackGestureHandler = edgeBackGestureHandler;
        }
        this.mNavColorSampleMargin = getResources().getDimensionPixelSize(R.dimen.navigation_handle_sample_horizontal_margin);
        this.mOnComputeInternalInsetsListener = new ViewTreeObserver.OnComputeInternalInsetsListener() { // from class: com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda10
            public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                NavigationBar navigationBar = NavigationBar.this;
                navigationBar.getClass();
                if (BasicRune.NAVBAR_GESTURE) {
                    if (((NavigationBarView) navigationBar.mView).needTouchableInsetsFrame()) {
                        internalInsetsInfo.setTouchableInsets(0);
                        return;
                    }
                } else if (!navigationBar.mEdgeBackGestureHandler.isHandlingGestures()) {
                    if (!navigationBar.mImeVisible) {
                        internalInsetsInfo.setTouchableInsets(0);
                        return;
                    } else if (!((NavigationBarView) navigationBar.mView).isImeRenderingNavButtons()) {
                        internalInsetsInfo.setTouchableInsets(0);
                        return;
                    }
                }
                internalInsetsInfo.setTouchableInsets(3);
                internalInsetsInfo.touchableRegion.set(navigationBar.getButtonLocations(false, false, false));
            }
        };
        RegionSamplingHelper regionSamplingHelper = new RegionSamplingHelper(this.mView, new RegionSamplingHelper.SamplingCallback() { // from class: com.android.systemui.navigationbar.NavigationBar.10
            @Override // com.android.systemui.shared.navigationbar.RegionSamplingHelper.SamplingCallback
            public final Rect getSampledRegion() {
                int dimensionPixelSize;
                View view;
                int i;
                int i2;
                Rect rect;
                NavigationBar navigationBar = NavigationBar.this;
                Rect rect2 = navigationBar.mOrientedHandleSamplingRegion;
                if (rect2 != null) {
                    return rect2;
                }
                Rect rect3 = navigationBar.mSamplingBounds;
                rect3.setEmpty();
                boolean z2 = BasicRune.NAVBAR_ENABLED;
                int i3 = navigationBar.mNavColorSampleMargin;
                int i4 = 0;
                if (z2) {
                    if (NavigationModeUtil.isBottomGesture(navigationBar.mNavBarMode)) {
                        view = ((NavigationBarView) navigationBar.mView).getHintView().mCurrentView;
                    } else {
                        view = ((NavigationBarView) navigationBar.mView).getHomeHandle().mCurrentView;
                    }
                    if (view != null) {
                        int[] iArr = new int[2];
                        view.getLocationOnScreen(iArr);
                        Point point = new Point();
                        Context context3 = navigationBar.mContext;
                        context3.getDisplay().getRealSize(point);
                        int dimensionPixelSize2 = navigationBar.getResources().getDimensionPixelSize(R.dimen.samsung_hint_view_height);
                        boolean z3 = navigationBar.mNavBarStateManager.states.canMove;
                        int i5 = iArr[0];
                        int i6 = iArr[1];
                        int rotation = context3.getDisplay().getRotation();
                        int width = view.getWidth();
                        int height = view.getHeight();
                        if (!z3) {
                            int i7 = point.y;
                            rect = new Rect(i5 - i3, i7 - dimensionPixelSize2, i5 + width + i3, i7);
                        } else {
                            if (rotation == 1) {
                                int i8 = point.x;
                                int i9 = i8 - dimensionPixelSize2;
                                i2 = i6 - i3;
                                i = i6 + height + i3;
                                dimensionPixelSize2 = i8;
                                i4 = i9;
                            } else if (rotation == 3) {
                                i2 = i6 - i3;
                                i = i6 + height + i3;
                            } else {
                                i = point.y;
                                i2 = i - dimensionPixelSize2;
                                i4 = i5 - i3;
                                dimensionPixelSize2 = i5 + width + i3;
                            }
                            rect = new Rect(i4, i2, dimensionPixelSize2, i);
                        }
                        if (!rect.equals(rect3)) {
                            rect3.set(rect);
                        }
                        rect3.set(navigationBar.mOneHandModeUtil.getRegionSamplingBounds(rect3));
                    }
                } else {
                    View view2 = ((NavigationBarView) navigationBar.mView).getHomeHandle().mCurrentView;
                    if (view2 != null) {
                        int[] iArr2 = new int[2];
                        view2.getLocationOnScreen(iArr2);
                        Point point2 = new Point();
                        view2.getContext().getDisplay().getRealSize(point2);
                        int i10 = iArr2[0] - i3;
                        int i11 = point2.y;
                        NavigationBarView navigationBarView2 = (NavigationBarView) navigationBar.mView;
                        if (navigationBarView2.mIsVertical) {
                            dimensionPixelSize = navigationBarView2.getResources().getDimensionPixelSize(android.R.dimen.text_size_display_3_material);
                        } else {
                            dimensionPixelSize = navigationBarView2.getResources().getDimensionPixelSize(android.R.dimen.text_size_display_1_material);
                        }
                        rect3.set(new Rect(i10, i11 - dimensionPixelSize, view2.getWidth() + iArr2[0] + i3, point2.y));
                    }
                }
                return rect3;
            }

            @Override // com.android.systemui.shared.navigationbar.RegionSamplingHelper.SamplingCallback
            public final boolean isSamplingEnabled() {
                NavBarStateManager navBarStateManager;
                boolean z2 = BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY;
                NavigationBar navigationBar = NavigationBar.this;
                if (z2 && (navBarStateManager = navigationBar.mNavBarStateManager) != null) {
                    if (!navBarStateManager.isTaskBarEnabled(false) && Utils.isGesturalModeOnDefaultDisplay(navigationBar.mContext, navigationBar.mDisplayTracker, navigationBar.mNavBarMode)) {
                        return true;
                    }
                    return false;
                }
                if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && navigationBar.mContext.getDisplayId() == 1) {
                    return QuickStepContract.isGesturalMode(navigationBar.mNavBarMode);
                }
                return Utils.isGesturalModeOnDefaultDisplay(navigationBar.mContext, navigationBar.mDisplayTracker, navigationBar.mNavBarMode);
            }

            @Override // com.android.systemui.shared.navigationbar.RegionSamplingHelper.SamplingCallback
            public final void onRegionDarknessChanged(boolean z2) {
                NavigationBar.this.mNavigationBarTransitions.mLightTransitionsController.setIconsDark(!z2, true);
            }

            @Override // com.android.systemui.shared.navigationbar.RegionSamplingHelper.SamplingCallback
            public final void onUpdateSamplingListener(boolean z2) {
                NavigationBar navigationBar = NavigationBar.this;
                ((NavBarStoreImpl) navigationBar.mNavBarStore).handleEvent(navigationBar, new EventTypeFactory.EventType.OnUpdateRegionSamplingListener(z2));
            }
        }, executor, executor2);
        this.mRegionSamplingHelper = regionSamplingHelper;
        if (z) {
            SamsungNavigationBarProxy.Companion.getClass();
            SamsungNavigationBarProxy samsungNavigationBarProxy = SamsungNavigationBarProxy.INSTANCE;
            if (samsungNavigationBarProxy == null) {
                samsungNavigationBarProxy = new SamsungNavigationBarProxy();
                SamsungNavigationBarProxy.INSTANCE = samsungNavigationBarProxy;
            }
            regionSamplingHelper.mBarProxy = samsungNavigationBarProxy;
        }
        NavigationBarView navigationBarView2 = (NavigationBarView) this.mView;
        navigationBarView2.mBgExecutor = executor2;
        navigationBarView2.mEdgeBackGestureHandler = this.mEdgeBackGestureHandler;
        navigationBarView2.mDisplayTracker = displayTracker;
        this.mNavBarMode = navigationModeController.addListener(r6);
        if (z) {
            this.mCurrentRotation = context.getResources().getConfiguration().windowConfiguration.getRotation();
            this.mNavBarStore = (NavBarStore) Dependency.get(NavBarStore.class);
            this.mLogWrapper = logWrapper;
            this.mOneHandModeUtil = new OneHandModeUtil((SettingsHelper) Dependency.get(SettingsHelper.class));
        }
    }

    public static void resetButtonListener(ButtonDispatcher buttonDispatcher) {
        if (buttonDispatcher == null) {
            return;
        }
        buttonDispatcher.setOnClickListener(null);
        buttonDispatcher.setOnLongClickListener(null);
        buttonDispatcher.setOnTouchListener(null);
    }

    public static void updateButtonLocation(Region region, Map map, ButtonDispatcher buttonDispatcher, boolean z, boolean z2) {
        View view;
        if (buttonDispatcher == null || (view = buttonDispatcher.mCurrentView) == null || !buttonDispatcher.isVisible()) {
            return;
        }
        if (z2) {
            HashMap hashMap = (HashMap) map;
            if (hashMap.containsKey(view)) {
                region.op((Rect) hashMap.get(view), Region.Op.UNION);
                return;
            }
        }
        updateButtonLocation(region, view, z);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void abortTransient(int i, int i2) {
        if (i == this.mDisplayId && (WindowInsets.Type.navigationBars() & i2) != 0 && this.mTransientShown) {
            this.mTransientShown = false;
            this.mTransientShownFromGestureOnSystemBar = false;
            handleTransientChanged();
        }
    }

    public final boolean canShowSecondaryHandle() {
        if (this.mNavBarMode == 2 && this.mOrientationHandle != null && BasicRune.NAVBAR_GESTURE && this.mNavBarStateManager.isGestureHintEnabled()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0027, code lost:
    
        if (r3.mNavigationBarWindowState != 2) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void checkNavBarModes() {
        /*
            r3 = this;
            boolean r0 = com.android.systemui.BasicRune.NAVBAR_ENABLED
            if (r0 != 0) goto L2a
            dagger.Lazy r0 = r3.mCentralSurfacesOptionalLazy
            java.lang.Object r0 = r0.get()
            java.util.Optional r0 = (java.util.Optional) r0
            com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda1 r1 = new com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda1
            r2 = 1
            r1.<init>(r2)
            java.util.Optional r0 = r0.map(r1)
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            java.lang.Object r0 = r0.orElse(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L2a
            int r0 = r3.mNavigationBarWindowState
            r1 = 2
            if (r0 == r1) goto L2a
            goto L2b
        L2a:
            r2 = 0
        L2b:
            int r0 = r3.mTransitionMode
            com.android.systemui.navigationbar.NavigationBarTransitions r3 = r3.mNavigationBarTransitions
            r3.transitionTo(r0, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.NavigationBar.checkNavBarModes():void");
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void disable(int i, int i2, int i3, boolean z) {
        int i4;
        if (i != this.mDisplayId) {
            return;
        }
        if (BasicRune.NAVBAR_ENABLED) {
            ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnSetDisableFlags(i2, i3));
        }
        int i5 = 56623104 & i2;
        if (i5 != this.mDisabledFlags1) {
            this.mDisabledFlags1 = i5;
            ((NavigationBarView) this.mView).setDisabledFlags(i2, this.mSysUiFlagsContainer);
            updateScreenPinningGestures();
            ((AssistManager) this.mAssistManagerLazy.get()).mDisabledFlags = i2;
        }
        if (this.mIsOnDefaultDisplay && (i4 = i3 & 16) != this.mDisabledFlags2) {
            this.mDisabledFlags2 = i4;
            setDisabled2Flags(i4);
        }
    }

    public final WindowManager.LayoutParams getBarLayoutParams(int i) {
        WindowManager.LayoutParams barLayoutParamsForRotation = getBarLayoutParamsForRotation(i);
        barLayoutParamsForRotation.paramsForRotation = new WindowManager.LayoutParams[4];
        for (int i2 = 0; i2 <= 3; i2++) {
            barLayoutParamsForRotation.paramsForRotation[i2] = getBarLayoutParamsForRotation(i2);
        }
        return barLayoutParamsForRotation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.WindowManager.LayoutParams getBarLayoutParamsForRotation(int r23) {
        /*
            Method dump skipped, instructions count: 779
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.NavigationBar.getBarLayoutParamsForRotation(int):android.view.WindowManager$LayoutParams");
    }

    public final Region getButtonLocations(boolean z, boolean z2, boolean z3) {
        FrameLayout frameLayout;
        if (z3 && !z2) {
            z3 = false;
        }
        Region region = new Region();
        NavigationBarView navigationBarView = (NavigationBarView) this.mView;
        if (navigationBarView.mIsVertical) {
            frameLayout = navigationBarView.mNavigationInflaterView.mVertical;
        } else {
            frameLayout = navigationBarView.mNavigationInflaterView.mHorizontal;
        }
        NearestTouchFrame nearestTouchFrame = (NearestTouchFrame) frameLayout.findViewById(R.id.nav_buttons);
        nearestTouchFrame.getClass();
        HashMap hashMap = new HashMap(((HashMap) nearestTouchFrame.mTouchableRegions).size());
        nearestTouchFrame.getLocationOnScreen(nearestTouchFrame.mTmpInt);
        for (Map.Entry entry : ((HashMap) nearestTouchFrame.mTouchableRegions).entrySet()) {
            View view = (View) entry.getKey();
            Rect rect = new Rect((Rect) entry.getValue());
            int[] iArr = nearestTouchFrame.mTmpInt;
            rect.offset(iArr[0], iArr[1]);
            hashMap.put(view, rect);
        }
        updateButtonLocation(region, hashMap, ((NavigationBarView) this.mView).getBackButton(), z2, z3);
        updateButtonLocation(region, hashMap, ((NavigationBarView) this.mView).getHomeButton(), z2, z3);
        updateButtonLocation(region, hashMap, ((NavigationBarView) this.mView).getRecentsButton(), z2, z3);
        updateButtonLocation(region, hashMap, (ButtonDispatcher) ((NavigationBarView) this.mView).mButtonDispatchers.get(R.id.ime_switcher), z2, z3);
        updateButtonLocation(region, hashMap, ((NavigationBarView) this.mView).getAccessibilityButton(), z2, z3);
        if (z) {
            FloatingRotationButton floatingRotationButton = ((NavigationBarView) this.mView).mFloatingRotationButton;
            if (floatingRotationButton.mIsShowing) {
                updateButtonLocation(region, floatingRotationButton.mKeyButtonView, z2);
                return region;
            }
        }
        updateButtonLocation(region, hashMap, (RotationContextButton) ((NavigationBarView) this.mView).mButtonDispatchers.get(R.id.rotate_suggestion), z2, z3);
        return region;
    }

    @Override // com.android.systemui.util.ViewController
    public final Context getContext() {
        throw null;
    }

    public int getNavigationIconHints() {
        return this.mNavigationIconHints;
    }

    public final void handleTransientChanged() {
        LightBarController lightBarController;
        if (BasicRune.NAVBAR_ENABLED && this.mView == null) {
            return;
        }
        boolean z = this.mTransientShown;
        this.mEdgeBackGestureHandler.mIsNavBarShownTransiently = z;
        int transitionMode = NavBarHelper.transitionMode(this.mAppearance, z);
        if (updateTransitionMode(transitionMode) && (lightBarController = this.mLightBarController) != null) {
            lightBarController.mHasLightNavigationBar = LightBarController.isLight(lightBarController.mAppearance, transitionMode, 16);
            if (BasicRune.NAVBAR_AOSP_BUG_FIX) {
                lightBarController.mNavigationBarMode = transitionMode;
                lightBarController.reevaluate();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda12] */
    public final void initSecondaryHomeHandleForRotation() {
        if (this.mNavBarMode != 2) {
            return;
        }
        Context context = this.mContext;
        QuickswitchOrientedNavHandle quickswitchOrientedNavHandle = new QuickswitchOrientedNavHandle(context);
        this.mOrientationHandle = quickswitchOrientedNavHandle;
        quickswitchOrientedNavHandle.setId(R.id.secondary_home_handle);
        NavigationBarTransitions navigationBarTransitions = this.mNavigationBarTransitions;
        ((ArrayList) navigationBarTransitions.mDarkIntensityListeners).add(this.mOrientationHandleIntensityListener);
        float f = navigationBarTransitions.mLightTransitionsController.mDarkIntensity;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(0, 0, 2024, 536871224, -3);
        this.mOrientationParams = layoutParams;
        layoutParams.setTitle("SecondaryHomeHandle" + context.getDisplayId());
        WindowManager.LayoutParams layoutParams2 = this.mOrientationParams;
        layoutParams2.privateFlags = layoutParams2.privateFlags | 4160;
        this.mWindowManager.addView(this.mOrientationHandle, layoutParams2);
        this.mOrientationHandle.setVisibility(8);
        this.mOrientationParams.setFitInsetsTypes(0);
        this.mOrientationHandleGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda12
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                NavigationBar navigationBar = NavigationBar.this;
                if (navigationBar.mStartingQuickSwitchRotation != -1) {
                    boolean z = BasicRune.NAVBAR_GESTURE;
                    RegionSamplingHelper regionSamplingHelper = navigationBar.mRegionSamplingHelper;
                    if (z) {
                        QuickswitchOrientedNavHandle quickswitchOrientedNavHandle2 = navigationBar.mOrientationHandle;
                        int[] iArr = new int[2];
                        quickswitchOrientedNavHandle2.mHandleView.getLocationOnScreen(iArr);
                        int dimensionPixelSize = quickswitchOrientedNavHandle2.mContext.getResources().getDimensionPixelSize(R.dimen.samsung_hint_view_height);
                        Rect rect = quickswitchOrientedNavHandle2.mTmpBoundsRect;
                        int i = iArr[0];
                        int i2 = iArr[1];
                        rect.set(i, i2, dimensionPixelSize + i, quickswitchOrientedNavHandle2.mHandleView.getHeight() + i2);
                        navigationBar.mOrientedHandleSamplingRegion = quickswitchOrientedNavHandle2.mTmpBoundsRect;
                        regionSamplingHelper.updateSamplingRect();
                        return;
                    }
                    RectF computeHomeHandleBounds = navigationBar.mOrientationHandle.computeHomeHandleBounds();
                    navigationBar.mOrientationHandle.mapRectFromViewToScreenCoords(computeHomeHandleBounds, true);
                    Rect rect2 = new Rect();
                    computeHomeHandleBounds.roundOut(rect2);
                    navigationBar.mOrientedHandleSamplingRegion = rect2;
                    regionSamplingHelper.updateSamplingRect();
                }
            }
        };
        this.mOrientationHandle.getViewTreeObserver().addOnGlobalLayoutListener(this.mOrientationHandleGlobalLayoutListener);
    }

    public final void notifyNavigationBarSurface() {
        SurfaceControl surfaceControl;
        ViewRootImpl viewRootImpl = ((NavigationBarView) this.mView).getViewRootImpl();
        if (((NavigationBarView) this.mView).getParent() != null && viewRootImpl != null && viewRootImpl.getSurfaceControl() != null && viewRootImpl.getSurfaceControl().isValid()) {
            surfaceControl = viewRootImpl.getSurfaceControl();
        } else {
            surfaceControl = null;
        }
        OverviewProxyService overviewProxyService = this.mOverviewProxyService;
        overviewProxyService.mNavigationBarSurface = surfaceControl;
        overviewProxyService.dispatchNavigationBarSurface();
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void notifyRequestedGameToolsWin(boolean z) {
        if (this.mAutoHideController == null) {
            return;
        }
        this.mLogWrapper.dp("NavigationBar", String.format("notifyRequestedGameToolsWin visible : %s", Boolean.valueOf(z)));
        this.mAutoHideController.notifyRequestedGameToolsWin(z);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void notifyRequestedSystemKey(boolean z, boolean z2) {
        SysUiState sysUiState = this.mSysUiFlagsContainer;
        sysUiState.setFlag(SemWallpaperColorsWrapper.LOCKSCREEN_LOCK_ICON, z);
        sysUiState.setFlag(SemWallpaperColorsWrapper.LOCKSCREEN_CLOCK, z2);
        sysUiState.commitUpdate(this.mDisplayId);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void notifySamsungPayInfo(int i, boolean z, Rect rect) {
        if (BasicRune.NAVBAR_GESTURE && this.mDisplayId == i) {
            this.mLogWrapper.dp("NavigationBar", String.format("notifySamsungPayInfo displayId : %d, visible: %s", Integer.valueOf(i), Boolean.valueOf(z)));
            this.mDisplayTracker.getClass();
            if (i == 0) {
                int width = rect.width();
                OverviewProxyService overviewProxyService = this.mOverviewProxyService;
                overviewProxyService.getClass();
                try {
                    IOverviewProxy iOverviewProxy = overviewProxyService.mOverviewProxy;
                    if (iOverviewProxy != null) {
                        ((IOverviewProxy.Stub.Proxy) iOverviewProxy).notifyPayInfo(width, z);
                    }
                } catch (RemoteException e) {
                    Log.e("OverviewProxyService", "Failed to notify pay info.", e);
                }
            }
            ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnUpdateSpayVisibility(z, rect.width()), this.mDisplayId);
        }
    }

    public boolean onHomeLongClick(View view) {
        boolean z;
        if (!((NavigationBarView) this.mView).isRecentsButtonVisible() && this.mScreenPinningActive) {
            return onLongPressNavigationButtons(view, R.id.home);
        }
        int i = 0;
        if (((DeviceProvisionedControllerImpl) this.mDeviceProvisionedController).isDeviceProvisioned() && (this.mDisabledFlags1 & com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract.SYSUI_STATE_GAME_TOOLS_SHOWING) == 0) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            return false;
        }
        this.mMetricsLogger.action(IKnoxCustomManager.Stub.TRANSACTION_getFavoriteAppsMaxCount);
        this.mUiEventLogger.log(NavBarActionEvent.NAVBAR_ASSIST_LONGPRESS);
        Bundle bundle = new Bundle();
        bundle.putInt("invocation_type", 5);
        ((AssistManager) this.mAssistManagerLazy.get()).startAssist(bundle);
        ((Optional) this.mCentralSurfacesOptionalLazy.get()).ifPresent(new NavigationBar$$ExternalSyntheticLambda0(i));
        ArrayList arrayList = ((NavigationBarView) this.mView).getHomeButton().mViews;
        int size = arrayList.size();
        while (i < size) {
            if (arrayList.get(i) instanceof ButtonInterface) {
                ((ButtonInterface) arrayList.get(i)).abortCurrentGesture();
            }
            i++;
        }
        return true;
    }

    public boolean onHomeTouch(View view, MotionEvent motionEvent) {
        int i = 1;
        if (this.mHomeBlockedThisTouch && motionEvent.getActionMasked() != 0) {
            return true;
        }
        Optional optional = (Optional) this.mCentralSurfacesOptionalLazy.get();
        int action = motionEvent.getAction();
        int i2 = 0;
        if (action != 0) {
            if (action == 1 || action == 3) {
                this.mHandler.removeCallbacks(this.mOnVariableDurationHomeLongClick);
                optional.ifPresent(new NavigationBar$$ExternalSyntheticLambda0(i));
            }
        } else {
            this.mHomeBlockedThisTouch = false;
            Optional optional2 = this.mTelecomManagerOptional;
            if (optional2.isPresent() && ((TelecomManager) optional2.get()).isRinging() && ((Boolean) optional.map(new NavigationBar$$ExternalSyntheticLambda1(i2)).orElse(Boolean.FALSE)).booleanValue()) {
                Log.i("NavigationBar", "Ignoring HOME; there's a ringing incoming call. No heads up");
                this.mHomeBlockedThisTouch = true;
                return true;
            }
            if (this.mLongPressHomeEnabled) {
                this.mHomeButtonLongPressDurationMs.ifPresent(new NavigationBar$$ExternalSyntheticLambda2(this, i2));
            }
        }
        return false;
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        int i;
        NavBarHelper.CurrentSysuiState currentSysuiState;
        NavigationBarView navigationBarView = (NavigationBarView) this.mView;
        NavigationBarTransitions navigationBarTransitions = this.mNavigationBarTransitions;
        navigationBarView.mBarTransitions = navigationBarTransitions;
        navigationBarView.mTouchHandler = this.mTouchHandler;
        setNavBarMode(this.mNavBarMode);
        boolean z = BasicRune.NAVBAR_ENABLED;
        EdgeBackGestureHandler edgeBackGestureHandler = this.mEdgeBackGestureHandler;
        Context context = this.mContext;
        if (z) {
            edgeBackGestureHandler.onConfigurationChanged(context.getResources().getConfiguration());
        }
        NavigationBarView navigationBarView2 = (NavigationBarView) this.mView;
        Objects.requireNonNull(navigationBarView2);
        edgeBackGestureHandler.mStateChangeCallback = new NavigationBar$$ExternalSyntheticLambda9(navigationBarView2, 3);
        boolean z2 = true;
        edgeBackGestureHandler.mButtonForcedVisibleCallback = new NavigationBar$$ExternalSyntheticLambda2(this, true ? 1 : 0);
        ((ArrayList) navigationBarTransitions.mListeners).add(new NavigationBar$$ExternalSyntheticLambda7(this));
        ((NavigationBarView) this.mView).updateRotationButton();
        NavBarStore navBarStore = this.mNavBarStore;
        if (z) {
            NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) navBarStore;
            navBarStoreImpl.handleEvent(this, new EventTypeFactory.EventType.OnNavBarCreated((CentralSurfaces) ((Optional) this.mCentralSurfacesOptionalLazy.get()).get(), this), context.getDisplayId());
            this.mNavBarStateManager = navBarStoreImpl.getNavStateManager(context.getDisplayId());
        }
        NavBarStateManager.States states = this.mNavBarStateManager.states;
        boolean z3 = states.supportCoverScreen;
        boolean z4 = states.supportLargeCoverScreen;
        if (z && z3) {
            edgeBackGestureHandler.onNavBarAttached();
        }
        if (z && z4) {
            if (!this.mNavBarStateManager.isLargeCoverScreenSyncEnabled()) {
                this.mLogWrapper.d("NavigationBar", "onInit() Cover navbar hidden: sync option is off");
                ((NavigationBarView) this.mView).setVisibility(8);
            }
        } else {
            NavigationBarView navigationBarView3 = (NavigationBarView) this.mView;
            if (!z3 && !this.mStatusBarKeyguardViewManager.isNavBarVisible()) {
                i = 4;
            } else {
                i = 0;
            }
            navigationBarView3.setVisibility(i);
        }
        if (z && this.mNavBarStateManager.isNavBarHidden()) {
            ((NavigationBarView) this.mView).setVisibility(8);
        }
        this.mWindowManager.addView(this.mFrame, getBarLayoutParams(context.getResources().getConfiguration().windowConfiguration.getRotation()));
        int displayId = context.getDisplayId();
        this.mDisplayId = displayId;
        this.mDisplayTracker.getClass();
        if (displayId != 0) {
            z2 = false;
        }
        this.mIsOnDefaultDisplay = z2;
        NavBarHelper navBarHelper = this.mNavBarHelper;
        if (z) {
            int i2 = this.mDisplayId;
            navBarHelper.getClass();
            currentSysuiState = new NavBarHelper.CurrentSysuiState(navBarHelper, i2);
        } else {
            navBarHelper.getClass();
            currentSysuiState = new NavBarHelper.CurrentSysuiState(navBarHelper);
        }
        if (currentSysuiState.mWindowStateDisplayId == this.mDisplayId) {
            this.mNavigationBarWindowState = currentSysuiState.mWindowState;
        }
        CommandQueue commandQueue = this.mCommandQueue;
        commandQueue.addCallback((CommandQueue.Callbacks) this);
        this.mDeviceConfigProxy.getClass();
        this.mHomeButtonLongPressDurationMs = Optional.of(Long.valueOf(DeviceConfig.getLong("systemui", "home_button_long_press_duration_ms", 0L))).filter(new NavigationBar$$ExternalSyntheticLambda8(0));
        navBarHelper.registerNavTaskStateUpdater(this.mNavbarTaskbarStateUpdater);
        Handler handler = this.mHandler;
        Objects.requireNonNull(handler);
        DeviceConfig.addOnPropertiesChangedListener("systemui", new MediaRoute2Provider$$ExternalSyntheticLambda0(handler), this.mOnPropertiesChangedListener);
        Bundle bundle = this.mSavedState;
        if (bundle != null) {
            this.mDisabledFlags1 = bundle.getInt("disabled_state", 0);
            this.mDisabledFlags2 = bundle.getInt("disabled2_state", 0);
            this.mAppearance = bundle.getInt("appearance", 0);
            this.mBehavior = bundle.getInt("behavior", 0);
            this.mTransientShown = bundle.getBoolean("transient_state", false);
            if (z) {
                this.mNavigationIconHints = bundle.getInt("icon_hints", 0);
            }
        }
        commandQueue.recomputeDisableFlags(this.mDisplayId, false);
        if (z) {
            ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnDeviceProvisionedChanged(((DeviceProvisionedControllerImpl) this.mDeviceProvisionedController).isDeviceProvisioned()));
        }
        ((ArrayList) this.mNotificationShadeDepthController.listeners).add(this.mDepthListener);
        this.mTaskStackChangeListeners.registerTaskStackListener(this.mTaskStackListener);
    }

    public final boolean onLongPressNavigationButtons(View view, int i) {
        boolean z;
        ButtonDispatcher homeButton;
        try {
            IActivityTaskManager service = ActivityTaskManager.getService();
            boolean isTouchExplorationEnabled = this.mAccessibilityManager.isTouchExplorationEnabled();
            boolean isInLockTaskMode = service.isInLockTaskMode();
            if (isInLockTaskMode && !isTouchExplorationEnabled) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.mLastLockToAppLongPress < 200) {
                    service.stopSystemLockTaskMode();
                    ((NavigationBarView) this.mView).updateNavButtonIcons();
                    return true;
                }
                if (view.getId() == R.id.back) {
                    if (i == R.id.recent_apps) {
                        homeButton = ((NavigationBarView) this.mView).getRecentsButton();
                    } else {
                        homeButton = ((NavigationBarView) this.mView).getHomeButton();
                    }
                    if (!homeButton.mCurrentView.isPressed()) {
                        z = true;
                        this.mLastLockToAppLongPress = currentTimeMillis;
                    }
                }
                z = false;
                this.mLastLockToAppLongPress = currentTimeMillis;
            } else if (view.getId() == R.id.back) {
                z = true;
            } else {
                if (isTouchExplorationEnabled && isInLockTaskMode) {
                    service.stopSystemLockTaskMode();
                    ((NavigationBarView) this.mView).updateNavButtonIcons();
                    return true;
                }
                if (view.getId() == i) {
                    if (i == R.id.recent_apps) {
                        return false;
                    }
                    return onHomeLongClick(((NavigationBarView) this.mView).getHomeButton().mCurrentView);
                }
                z = false;
            }
            if (z) {
                KeyButtonView keyButtonView = (KeyButtonView) view;
                keyButtonView.sendEvent(0, 128);
                keyButtonView.sendAccessibilityEvent(2);
                return true;
            }
        } catch (RemoteException e) {
            Log.d("NavigationBar", "Unable to reach activity manager", e);
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onRecentsAnimationStateChanged(boolean z) {
        RotationButtonController rotationButtonController = ((NavigationBarView) this.mView).mRotationButtonController;
        rotationButtonController.mIsRecentsAnimationRunning = z;
        if (z && !rotationButtonController.mHomeRotationEnabled) {
            rotationButtonController.setRotateSuggestionButtonState(false, true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01af, code lost:
    
        if (r18 != 3) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01b6, code lost:
    
        if (r18 != 3) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01bd, code lost:
    
        if (r18 != 3) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01a8, code lost:
    
        if (r18 != 2) goto L132;
     */
    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onRotationProposal(int r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.NavigationBar.onRotationProposal(int, boolean):void");
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onSystemBarAttributesChanged(int i, int i2, AppearanceRegion[] appearanceRegionArr, boolean z, int i3, int i4, String str, LetterboxDetails[] letterboxDetailsArr) {
        boolean z2;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (i != this.mDisplayId) {
            return;
        }
        if (this.mAppearance != i2) {
            boolean z3 = BasicRune.NAVBAR_ENABLED;
            if (z3 && z3) {
                StringBuilder sb = new StringBuilder("onSystemBarAttributesChanged() -");
                sb.append("  displayId:" + i);
                sb.append(", appearance:" + i2);
                if (!str.contains("com.att")) {
                    sb.append(", packageName: ".concat(str));
                }
                if (i2 != 0) {
                    sb.append(" (");
                    String str7 = "";
                    if ((i2 & 1) == 0) {
                        str2 = "";
                    } else {
                        str2 = "APPEARANCE_OPAQUE_STATUS_BARS ";
                    }
                    sb.append(str2);
                    if ((i2 & 2) == 0) {
                        str3 = "";
                    } else {
                        str3 = "APPEARANCE_OPAQUE_NAVIGATION_BARS ";
                    }
                    sb.append(str3);
                    if ((i2 & 4) == 0) {
                        str4 = "";
                    } else {
                        str4 = "APPEARANCE_LOW_PROFILE_BARS ";
                    }
                    sb.append(str4);
                    if ((i2 & 8) == 0) {
                        str5 = "";
                    } else {
                        str5 = "APPEARANCE_LIGHT_STATUS_BARS ";
                    }
                    sb.append(str5);
                    if ((i2 & 16) == 0) {
                        str6 = "";
                    } else {
                        str6 = "APPEARANCE_LIGHT_NAVIGATION_BARS ";
                    }
                    sb.append(str6);
                    if ((i2 & 128) != 0) {
                        str7 = "APPEARANCE_LIGHT_SEMI_TRANSPARENT_NAVIGATION_BARS ";
                    }
                    sb.append(str7);
                    sb.append(")");
                }
                sb.append(", navbarColorManagedByIme:" + z);
                Log.d("NavigationBar", sb.toString());
            }
            this.mAppearance = i2;
            z2 = updateTransitionMode(NavBarHelper.transitionMode(i2, this.mTransientShown));
        } else {
            z2 = false;
        }
        boolean z4 = z2;
        LightBarController lightBarController = this.mLightBarController;
        if (lightBarController != null) {
            lightBarController.onNavigationBarAppearanceChanged(i2, this.mTransitionMode, str, z4, z);
        }
        if (this.mBehavior != i3) {
            this.mBehavior = i3;
            NavigationBarView navigationBarView = (NavigationBarView) this.mView;
            RotationButtonController rotationButtonController = navigationBarView.mRotationButtonController;
            navigationBarView.mDisplayTracker.getClass();
            if (rotationButtonController.mBehavior != i3) {
                rotationButtonController.mBehavior = i3;
                if (rotationButtonController.canShowRotationButton() && rotationButtonController.mPendingRotationSuggestion) {
                    rotationButtonController.showAndLogRotationSuggestion();
                }
            }
            updateSystemUiStateFlags();
        }
        if (BasicRune.NAVBAR_ENABLED) {
            ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarStyleChanged());
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        boolean z;
        LightBarController lightBarController;
        AutoHideController autoHideController;
        Display display = ((NavigationBarView) this.mView).getDisplay();
        ((NavigationBarView) this.mView).mRecentsOptional = this.mRecentsOptional;
        Lazy lazy = this.mCentralSurfacesOptionalLazy;
        if (((Optional) lazy.get()).isPresent()) {
            NavigationBarView navigationBarView = (NavigationBarView) this.mView;
            ShadeViewController shadeViewController = ((CentralSurfacesImpl) ((CentralSurfaces) ((Optional) lazy.get()).get())).getShadeViewController();
            navigationBarView.mPanelView = shadeViewController;
            if (shadeViewController != null) {
                ((NotificationPanelViewController) shadeViewController).updateSystemUiStateFlags();
            }
        }
        ((NavigationBarView) this.mView).setDisabledFlags(this.mDisabledFlags1, this.mSysUiFlagsContainer);
        NavigationBarView navigationBarView2 = (NavigationBarView) this.mView;
        navigationBarView2.mOnVerticalChangedListener = new NavigationBar$$ExternalSyntheticLambda11(this);
        navigationBarView2.notifyVerticalChangedListener(navigationBarView2.mIsVertical);
        int i = 2;
        ((NavigationBarView) this.mView).setOnTouchListener(new NavigationBar$$ExternalSyntheticLambda5(this, i));
        NavigationBarTransitions navigationBarTransitions = this.mNavigationBarTransitions;
        Bundle bundle = this.mSavedState;
        if (bundle != null) {
            LightBarTransitionsController lightBarTransitionsController = navigationBarTransitions.mLightTransitionsController;
            lightBarTransitionsController.getClass();
            float f = bundle.getFloat("dark_intensity", 0.0f);
            lightBarTransitionsController.mDarkIntensity = f;
            boolean z2 = BasicRune.NAVBAR_LIGHTBAR;
            LightBarTransitionsController.DarkIntensityApplier darkIntensityApplier = lightBarTransitionsController.mApplier;
            if (z2) {
                darkIntensityApplier.applyDarkIntensity(f);
            } else if (!BasicRune.NAVBAR_ENABLED) {
                darkIntensityApplier.applyDarkIntensity(MathUtils.lerp(f, 0.0f, lightBarTransitionsController.mDozeAmount));
            }
            lightBarTransitionsController.mNextDarkIntensity = lightBarTransitionsController.mDarkIntensity;
        }
        setNavigationIconHints(this.mNavigationIconHints);
        int i2 = 1;
        if (this.mNavigationBarWindowState == 0) {
            z = true;
        } else {
            z = false;
        }
        RegionSamplingHelper regionSamplingHelper = this.mRegionSamplingHelper;
        regionSamplingHelper.mWindowVisible = z;
        regionSamplingHelper.updateSamplingListener();
        RotationButtonController rotationButtonController = ((NavigationBarView) this.mView).mRotationButtonController;
        if (rotationButtonController.mIsNavigationBarShowing != z) {
            rotationButtonController.mIsNavigationBarShowing = z;
            if (rotationButtonController.canShowRotationButton() && rotationButtonController.mPendingRotationSuggestion) {
                rotationButtonController.showAndLogRotationSuggestion();
            }
        }
        NavigationBarView navigationBarView3 = (NavigationBarView) this.mView;
        int i3 = this.mBehavior;
        RotationButtonController rotationButtonController2 = navigationBarView3.mRotationButtonController;
        navigationBarView3.mDisplayTracker.getClass();
        if (rotationButtonController2.mBehavior != i3) {
            rotationButtonController2.mBehavior = i3;
            if (rotationButtonController2.canShowRotationButton() && rotationButtonController2.mPendingRotationSuggestion) {
                rotationButtonController2.showAndLogRotationSuggestion();
            }
        }
        setNavBarMode(this.mNavBarMode);
        repositionNavigationBar(this.mCurrentRotation);
        NavigationBarView navigationBarView4 = (NavigationBarView) this.mView;
        navigationBarView4.mUpdateActiveTouchRegionsCallback = new NavigationBar$$ExternalSyntheticLambda11(this);
        navigationBarView4.notifyActiveTouchRegions();
        ((NavigationBarView) this.mView).getViewTreeObserver().addOnComputeInternalInsetsListener(this.mOnComputeInternalInsetsListener);
        ((NavigationBarView) this.mView).getViewRootImpl().addSurfaceChangedCallback(this.mSurfaceChangedCallback);
        notifyNavigationBarSurface();
        NavigationBarView navigationBarView5 = (NavigationBarView) this.mView;
        Objects.requireNonNull(navigationBarView5);
        this.mPipOptional.ifPresent(new NavigationBar$$ExternalSyntheticLambda6(navigationBarView5, i2));
        NavigationBarView navigationBarView6 = (NavigationBarView) this.mView;
        Objects.requireNonNull(navigationBarView6);
        this.mBackAnimation.ifPresent(new NavigationBar$$ExternalSyntheticLambda6(navigationBarView6, i));
        prepareNavigationBarView();
        checkNavBarModes();
        UserTracker.Callback callback = this.mUserChangedCallback;
        Context context = this.mContext;
        ((UserTrackerImpl) this.mUserTracker).addCallback(callback, context.getMainExecutor());
        this.mWakefulnessLifecycle.addObserver(this.mWakefulnessObserver);
        ((NavigationBarView) this.mView).updateNavButtonIcons();
        this.mOverviewProxyService.addCallback((OverviewProxyService.OverviewProxyListener) this.mOverviewProxyListener);
        updateSystemUiStateFlags();
        if (this.mIsOnDefaultDisplay) {
            RotationButtonController rotationButtonController3 = ((NavigationBarView) this.mView).mRotationButtonController;
            if (display != null && rotationButtonController3.isRotationLocked() && !DeviceType.isTablet() && !BasicRune.BASIC_FOLDABLE_TYPE_FOLD) {
                RotationPolicy.setRotationLockAtAngle(rotationButtonController3.mContext, rotationButtonController3.isRotationLocked(), display.getRotation());
            }
        } else {
            this.mDisabledFlags2 |= 16;
        }
        setDisabled2Flags(this.mDisabledFlags2);
        initSecondaryHomeHandleForRotation();
        if (this.mIsOnDefaultDisplay) {
            lightBarController = this.mMainLightBarController;
        } else {
            Context context2 = this.mContext;
            LightBarController.Factory factory = this.mLightBarControllerFactory;
            factory.getClass();
            lightBarController = new LightBarController(context2, factory.mDarkIconDispatcher, factory.mBatteryController, factory.mNavModeController, factory.mFeatureFlags, factory.mDumpManager, factory.mDisplayTracker, factory.mSamsungLightBarControlHelper, factory.mSamsungStatusBarGrayIconHelper, factory.mKeyguardUpdateMonitor);
        }
        this.mLightBarController = lightBarController;
        NavBarStore navBarStore = this.mNavBarStore;
        if (lightBarController != null) {
            lightBarController.mNavigationBarController = navigationBarTransitions.mLightTransitionsController;
            lightBarController.updateNavigation();
            if (BasicRune.NAVBAR_ENABLED) {
                ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnLightBarControllerCreated(this.mLightBarController), this.mDisplayId);
            }
            if (BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
                LightBarController lightBarController2 = this.mLightBarController;
                LightBarTransitionsController lightBarTransitionsController2 = ((NavigationBarView) this.mView).mBarTransitions.mLightTransitionsController;
                ArrayList arrayList = lightBarController2.mObserver.mList;
                arrayList.remove(lightBarTransitionsController2);
                if (lightBarTransitionsController2 != null) {
                    arrayList.add(lightBarTransitionsController2);
                }
            }
        }
        if (this.mIsOnDefaultDisplay) {
            autoHideController = this.mMainAutoHideController;
        } else {
            AutoHideController.Factory factory2 = this.mAutoHideControllerFactory;
            autoHideController = new AutoHideController(context, factory2.mHandler, factory2.mIWindowManager);
        }
        setAutoHideController(autoHideController);
        int transitionMode = NavBarHelper.transitionMode(this.mAppearance, this.mTransientShown);
        this.mTransitionMode = transitionMode;
        checkNavBarModes();
        AutoHideController autoHideController2 = this.mAutoHideController;
        if (autoHideController2 != null) {
            autoHideController2.touchAutoHide();
        }
        LightBarController lightBarController3 = this.mLightBarController;
        if (lightBarController3 != null) {
            lightBarController3.onNavigationBarAppearanceChanged(this.mAppearance, transitionMode, "restoreAppearanceAndTransientState", true, false);
        }
        if (BasicRune.NAVBAR_ENABLED) {
            ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarTransitionModeChanged(this.mTransitionMode));
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        LightBarController lightBarController;
        NavigationBarView navigationBarView = (NavigationBarView) this.mView;
        navigationBarView.mUpdateActiveTouchRegionsCallback = null;
        navigationBarView.notifyActiveTouchRegions();
        NavigationBarTransitions navigationBarTransitions = this.mNavigationBarTransitions;
        LightBarTransitionsController lightBarTransitionsController = navigationBarTransitions.mLightTransitionsController;
        CommandQueue commandQueue = lightBarTransitionsController.mCommandQueue;
        LightBarTransitionsController.Callback callback = lightBarTransitionsController.mCallback;
        commandQueue.removeCallback((CommandQueue.Callbacks) callback);
        lightBarTransitionsController.mStatusBarStateController.removeCallback(callback);
        ((ArrayList) this.mOverviewProxyService.mConnectionCallbacks).remove(this.mOverviewProxyListener);
        ((UserTrackerImpl) this.mUserTracker).removeCallback(this.mUserChangedCallback);
        this.mWakefulnessLifecycle.removeObserver(this.mWakefulnessObserver);
        if (this.mOrientationHandle != null) {
            resetSecondaryHandle();
            ((ArrayList) navigationBarTransitions.mDarkIntensityListeners).remove(this.mOrientationHandleIntensityListener);
            this.mWindowManager.removeView(this.mOrientationHandle);
            this.mOrientationHandle.getViewTreeObserver().removeOnGlobalLayoutListener(this.mOrientationHandleGlobalLayoutListener);
        }
        ((NavigationBarView) this.mView).getViewTreeObserver().removeOnComputeInternalInsetsListener(this.mOnComputeInternalInsetsListener);
        if (BasicRune.NAVBAR_AOSP_BUG_FIX) {
            RotationContextButton rotationContextButton = (RotationContextButton) ((NavigationBarView) this.mView).mButtonDispatchers.get(R.id.rotate_suggestion);
            if (rotationContextButton != null) {
                rotationContextButton.mListener = null;
            }
            NavigationBarView navigationBarView2 = (NavigationBarView) this.mView;
            navigationBarView2.mOnVerticalChangedListener = null;
            navigationBarView2.notifyVerticalChangedListener(navigationBarView2.mIsVertical);
            ((NavigationBarView) this.mView).setOnTouchListener(null);
            resetButtonListener(((NavigationBarView) this.mView).getRecentsButton());
            resetButtonListener(((NavigationBarView) this.mView).getHomeButton());
            resetButtonListener(((NavigationBarView) this.mView).getBackButton());
            resetButtonListener(((NavigationBarView) this.mView).getAccessibilityButton());
        }
        if (BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY && (lightBarController = this.mLightBarController) != null) {
            lightBarController.mObserver.mList.remove(((NavigationBarView) this.mView).mBarTransitions.mLightTransitionsController);
        }
        Handler handler = this.mHandler;
        handler.removeCallbacks(this.mAutoDim);
        handler.removeCallbacks(this.mOnVariableDurationHomeLongClick);
        handler.removeCallbacks(this.mEnableLayoutTransitions);
        this.mNavBarHelper.removeNavTaskStateUpdater(this.mNavbarTaskbarStateUpdater);
        NavigationBarView navigationBarView3 = (NavigationBarView) this.mView;
        Objects.requireNonNull(navigationBarView3);
        this.mPipOptional.ifPresent(new NavigationBar$$ExternalSyntheticLambda6(navigationBarView3, 0));
        ViewRootImpl viewRootImpl = ((NavigationBarView) this.mView).getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.removeSurfaceChangedCallback(this.mSurfaceChangedCallback);
        }
        this.mFrame = null;
        this.mOrientationHandle = null;
        notifyNavigationBarSurface();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void orientSecondaryHomeHandle() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.NavigationBar.orientSecondaryHomeHandle():void");
    }

    public final void prepareNavigationBarView() {
        ((NavigationBarView) this.mView).reorient();
        ButtonDispatcher recentsButton = ((NavigationBarView) this.mView).getRecentsButton();
        final int i = 0;
        recentsButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda4
            public final /* synthetic */ NavigationBar f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2;
                switch (i) {
                    case 0:
                        NavigationBar navigationBar = this.f$0;
                        Context context = navigationBar.mContext;
                        if (LatencyTracker.isEnabled(context)) {
                            LatencyTracker.getInstance(context).onActionStart(1);
                        }
                        ((Optional) navigationBar.mCentralSurfacesOptionalLazy.get()).ifPresent(new NavigationBar$$ExternalSyntheticLambda0(3));
                        navigationBar.mCommandQueue.toggleRecentApps();
                        return;
                    case 1:
                        NavigationBar navigationBar2 = this.f$0;
                        navigationBar2.getClass();
                        Display display = view.getDisplay();
                        if (display != null) {
                            i2 = display.getDisplayId();
                        } else {
                            navigationBar2.mDisplayTracker.getClass();
                            i2 = 0;
                        }
                        navigationBar2.mAccessibilityManager.notifyAccessibilityButtonClicked(i2);
                        return;
                    default:
                        NavigationBar navigationBar3 = this.f$0;
                        navigationBar3.mInputMethodManager.showInputMethodPickerFromSystem(true, navigationBar3.mDisplayId);
                        navigationBar3.mUiEventLogger.log(KeyButtonView.NavBarButtonEvent.NAVBAR_IME_SWITCHER_BUTTON_TAP);
                        return;
                }
            }
        });
        recentsButton.setOnTouchListener(new NavigationBar$$ExternalSyntheticLambda5(this, i));
        final int i2 = 1;
        ((NavigationBarView) this.mView).getHomeButton().setOnTouchListener(new NavigationBar$$ExternalSyntheticLambda5(this, i2));
        reconfigureHomeLongClick();
        ButtonDispatcher accessibilityButton = ((NavigationBarView) this.mView).getAccessibilityButton();
        accessibilityButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda4
            public final /* synthetic */ NavigationBar f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22;
                switch (i2) {
                    case 0:
                        NavigationBar navigationBar = this.f$0;
                        Context context = navigationBar.mContext;
                        if (LatencyTracker.isEnabled(context)) {
                            LatencyTracker.getInstance(context).onActionStart(1);
                        }
                        ((Optional) navigationBar.mCentralSurfacesOptionalLazy.get()).ifPresent(new NavigationBar$$ExternalSyntheticLambda0(3));
                        navigationBar.mCommandQueue.toggleRecentApps();
                        return;
                    case 1:
                        NavigationBar navigationBar2 = this.f$0;
                        navigationBar2.getClass();
                        Display display = view.getDisplay();
                        if (display != null) {
                            i22 = display.getDisplayId();
                        } else {
                            navigationBar2.mDisplayTracker.getClass();
                            i22 = 0;
                        }
                        navigationBar2.mAccessibilityManager.notifyAccessibilityButtonClicked(i22);
                        return;
                    default:
                        NavigationBar navigationBar3 = this.f$0;
                        navigationBar3.mInputMethodManager.showInputMethodPickerFromSystem(true, navigationBar3.mDisplayId);
                        navigationBar3.mUiEventLogger.log(KeyButtonView.NavBarButtonEvent.NAVBAR_IME_SWITCHER_BUTTON_TAP);
                        return;
                }
            }
        });
        accessibilityButton.setOnLongClickListener(new NavigationBar$$ExternalSyntheticLambda3(this, 3));
        updateAccessibilityStateFlags();
        final int i3 = 2;
        ((ButtonDispatcher) ((NavigationBarView) this.mView).mButtonDispatchers.get(R.id.ime_switcher)).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.navigationbar.NavigationBar$$ExternalSyntheticLambda4
            public final /* synthetic */ NavigationBar f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22;
                switch (i3) {
                    case 0:
                        NavigationBar navigationBar = this.f$0;
                        Context context = navigationBar.mContext;
                        if (LatencyTracker.isEnabled(context)) {
                            LatencyTracker.getInstance(context).onActionStart(1);
                        }
                        ((Optional) navigationBar.mCentralSurfacesOptionalLazy.get()).ifPresent(new NavigationBar$$ExternalSyntheticLambda0(3));
                        navigationBar.mCommandQueue.toggleRecentApps();
                        return;
                    case 1:
                        NavigationBar navigationBar2 = this.f$0;
                        navigationBar2.getClass();
                        Display display = view.getDisplay();
                        if (display != null) {
                            i22 = display.getDisplayId();
                        } else {
                            navigationBar2.mDisplayTracker.getClass();
                            i22 = 0;
                        }
                        navigationBar2.mAccessibilityManager.notifyAccessibilityButtonClicked(i22);
                        return;
                    default:
                        NavigationBar navigationBar3 = this.f$0;
                        navigationBar3.mInputMethodManager.showInputMethodPickerFromSystem(true, navigationBar3.mDisplayId);
                        navigationBar3.mUiEventLogger.log(KeyButtonView.NavBarButtonEvent.NAVBAR_IME_SWITCHER_BUTTON_TAP);
                        return;
                }
            }
        });
        updateScreenPinningGestures();
        if (BasicRune.NAVBAR_ENABLED) {
            ButtonDispatcher backButton = ((NavigationBarView) this.mView).getBackButton();
            backButton.setLongClickable(false);
            backButton.setOnClickListener(null);
            recentsButton.setOnClickListener(null);
            recentsButton.setOnTouchListener(null);
            recentsButton.setOnLongClickListener(new NavigationBar$$ExternalSyntheticLambda3(this, 4));
        }
    }

    public final void reconfigureHomeLongClick() {
        if (((NavigationBarView) this.mView).getHomeButton().mCurrentView == null) {
            return;
        }
        if (BasicRune.NAVBAR_ENABLED) {
            ((NavigationBarView) this.mView).getHomeButton().setOnLongClickListener(null);
            ((NavigationBarView) this.mView).getHomeButton().setLongClickable(false);
            ((NavigationBarView) this.mView).getHomeButton().setOnTouchListener(null);
        } else if (!this.mHomeButtonLongPressDurationMs.isPresent() && this.mLongPressHomeEnabled) {
            ((NavigationBarView) this.mView).getHomeButton().mCurrentView.setLongClickable(true);
            ((NavigationBarView) this.mView).getHomeButton().mCurrentView.setHapticFeedbackEnabled(true);
            ((NavigationBarView) this.mView).getHomeButton().setOnLongClickListener(new NavigationBar$$ExternalSyntheticLambda3(this, 5));
        } else {
            ((NavigationBarView) this.mView).getHomeButton().mCurrentView.setLongClickable(false);
            ((NavigationBarView) this.mView).getHomeButton().mCurrentView.setHapticFeedbackEnabled(false);
            ((NavigationBarView) this.mView).getHomeButton().setOnLongClickListener(null);
        }
    }

    public final void repositionNavigationBar(int i) {
        View view = this.mView;
        if (view != null && ((NavigationBarView) view).isAttachedToWindow()) {
            prepareNavigationBarView();
            this.mWindowManager.updateViewLayout(this.mFrame, getBarLayoutParams(i));
        }
    }

    public final void resetSecondaryHandle() {
        QuickswitchOrientedNavHandle quickswitchOrientedNavHandle = this.mOrientationHandle;
        if (quickswitchOrientedNavHandle != null) {
            quickswitchOrientedNavHandle.setVisibility(8);
        }
        ((NavigationBarView) this.mView).setVisibility(0);
        this.mOrientedHandleSamplingRegion = null;
        this.mRegionSamplingHelper.updateSamplingRect();
    }

    public final void setAutoHideController(AutoHideController autoHideController) {
        boolean z = BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY;
        AnonymousClass1 anonymousClass1 = this.mAutoHideUiElement;
        if (z) {
            if (autoHideController != null) {
                AutoHideController.AutoHideUiElementObserver autoHideUiElementObserver = autoHideController.mObserver;
                autoHideUiElementObserver.getClass();
                ArrayList arrayList = (ArrayList) autoHideUiElementObserver.mList;
                arrayList.remove(anonymousClass1);
                if (anonymousClass1 != null) {
                    arrayList.add(anonymousClass1);
                }
            } else {
                AutoHideController autoHideController2 = this.mAutoHideController;
                if (autoHideController2 != null) {
                    AutoHideController.AutoHideUiElementObserver autoHideUiElementObserver2 = autoHideController2.mObserver;
                    autoHideUiElementObserver2.getClass();
                    ((ArrayList) autoHideUiElementObserver2.mList).remove(anonymousClass1);
                }
            }
        }
        this.mAutoHideController = autoHideController;
        if (autoHideController != null) {
            autoHideController.mNavigationBar = anonymousClass1;
        }
        ((NavigationBarView) this.mView).mAutoHideController = autoHideController;
    }

    public final void setDisabled2Flags(int i) {
        boolean z;
        RotationButtonController rotationButtonController = ((NavigationBarView) this.mView).mRotationButtonController;
        Interpolator interpolator = RotationButtonController.LINEAR_INTERPOLATOR;
        if ((i & 16) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            rotationButtonController.setRotateSuggestionButtonState(false, true);
            rotationButtonController.mMainThreadHandler.removeCallbacks(rotationButtonController.mRemoveRotationProposal);
        } else {
            rotationButtonController.getClass();
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void setImeWindowStatus(int i, IBinder iBinder, int i2, int i3, boolean z) {
        boolean z2;
        if (i != this.mDisplayId) {
            return;
        }
        NavBarHelper navBarHelper = this.mNavBarHelper;
        boolean isImeShown = navBarHelper.isImeShown(i2);
        boolean z3 = BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN;
        if (z3 && this.mNavBarStateManager.supportLargeCoverScreenNavBar()) {
            isImeShown |= this.mWindowManager.getCurrentWindowMetrics().getWindowInsets().isVisible(WindowInsets.Type.ime());
        }
        boolean z4 = BasicRune.NAVBAR_ENABLED;
        if (z4) {
            StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("setImeWindowStatus displayId=", i, " vis=", i2, " backDisposition=");
            m.append(i3);
            m.append(" showImeSwitcher=");
            m.append(z);
            m.append(" imeShown=");
            ActionBarContextView$$ExternalSyntheticOutline0.m(m, isImeShown, "NavigationBar");
        }
        if (isImeShown && z) {
            z2 = true;
        } else {
            z2 = false;
        }
        int calculateBackDispositionHints = Utilities.calculateBackDispositionHints(this.mNavigationIconHints, i3, isImeShown, z2);
        if (calculateBackDispositionHints == this.mNavigationIconHints) {
            return;
        }
        NavBarStore navBarStore = this.mNavBarStore;
        if (z4) {
            ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarIconHintChanged(calculateBackDispositionHints));
            navBarHelper.mLastIMEhints = calculateBackDispositionHints;
        }
        setNavigationIconHints(calculateBackDispositionHints);
        if (this.mIsOnDefaultDisplay) {
            ((Optional) this.mCentralSurfacesOptionalLazy.get()).ifPresent(new NavigationBar$$ExternalSyntheticLambda0(2));
        } else {
            checkNavBarModes();
        }
        updateSystemUiStateFlags();
        if (z3 && this.mNavBarStateManager.supportLargeCoverScreenNavBar()) {
            ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarLargeCoverScreenVisibilityChanged(isImeShown, this.mNavBarStateManager.isLargeCoverTaskEnabled()), this.mDisplayId);
        }
    }

    public final void setNavBarMode(int i) {
        NavigationBarView navigationBarView = (NavigationBarView) this.mView;
        boolean z = this.mNavigationModeController.mCurrentUserContext.getResources().getBoolean(17891727);
        navigationBarView.mNavBarMode = i;
        navigationBarView.mImeDrawsImeNavBar = z;
        navigationBarView.mBarTransitions.mNavBarMode = i;
        navigationBarView.mEdgeBackGestureHandler.onNavigationModeChanged(i);
        navigationBarView.mRotationButtonController.mNavBarMode = navigationBarView.mNavBarMode;
        navigationBarView.updateRotationButton();
        boolean isGesturalMode = QuickStepContract.isGesturalMode(i);
        RegionSamplingHelper regionSamplingHelper = this.mRegionSamplingHelper;
        if (isGesturalMode) {
            regionSamplingHelper.start(this.mSamplingBounds);
        } else {
            regionSamplingHelper.stop();
        }
    }

    public final void setNavigationIconHints(int i) {
        boolean z;
        if (i == this.mNavigationIconHints) {
            return;
        }
        if (BasicRune.NAVBAR_ENABLED || !Utilities.isLargeScreen(this.mContext)) {
            boolean z2 = true;
            if ((i & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((this.mNavigationIconHints & 1) == 0) {
                z2 = false;
            }
            if (z != z2) {
                ((NavigationBarView) this.mView).onImeVisibilityChanged(z);
                this.mImeVisible = z;
            }
            NavigationBarView navigationBarView = (NavigationBarView) this.mView;
            if (i != navigationBarView.mNavigationIconHints) {
                navigationBarView.mNavigationIconHints = i;
                navigationBarView.updateNavButtonIcons();
            }
        }
        this.mNavigationIconHints = i;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void setWindowState(int i, int i2, int i3) {
        boolean z;
        if (i == this.mDisplayId && i2 == 2 && this.mNavigationBarWindowState != i3) {
            this.mNavigationBarWindowState = i3;
            updateSystemUiStateFlags();
            boolean z2 = true;
            if (i3 == 2) {
                z = true;
            } else {
                z = false;
            }
            this.mShowOrientedHandleForImmersiveMode = z;
            if (this.mOrientationHandle != null && this.mStartingQuickSwitchRotation != -1) {
                orientSecondaryHomeHandle();
            }
            if (this.mNavigationBarWindowState != 0) {
                z2 = false;
            }
            RegionSamplingHelper regionSamplingHelper = this.mRegionSamplingHelper;
            regionSamplingHelper.mWindowVisible = z2;
            regionSamplingHelper.updateSamplingListener();
            RotationButtonController rotationButtonController = ((NavigationBarView) this.mView).mRotationButtonController;
            if (rotationButtonController.mIsNavigationBarShowing != z2) {
                rotationButtonController.mIsNavigationBarShowing = z2;
                if (rotationButtonController.canShowRotationButton() && rotationButtonController.mPendingRotationSuggestion) {
                    rotationButtonController.showAndLogRotationSuggestion();
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showTransient(int i, int i2, boolean z) {
        if (i == this.mDisplayId && (WindowInsets.Type.navigationBars() & i2) != 0 && !this.mTransientShown) {
            this.mTransientShown = true;
            this.mTransientShownFromGestureOnSystemBar = z;
            handleTransientChanged();
        }
    }

    public final void updateAccessibilityStateFlags() {
        boolean z;
        NavBarHelper navBarHelper = this.mNavBarHelper;
        this.mLongPressHomeEnabled = navBarHelper.mLongPressHomeEnabled;
        View view = this.mView;
        if (view != null) {
            long j = navBarHelper.mA11yButtonState;
            boolean z2 = true;
            if ((16 & j) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((j & 32) == 0) {
                z2 = false;
            }
            ((NavigationBarView) view).setAccessibilityButtonState(z, z2);
            if (BasicRune.NAVBAR_ENABLED) {
                ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarUpdateA11YService(z, z2));
            }
        }
        updateSystemUiStateFlags();
    }

    public final void updateNavBarLayoutParams() {
        NavigationBarFrame navigationBarFrame = this.mFrame;
        if (navigationBarFrame != null) {
            this.mWindowManager.updateViewLayout(navigationBarFrame, getBarLayoutParams(this.mContext.getResources().getConfiguration().windowConfiguration.getRotation()));
        }
    }

    public final void updateScreenPinningGestures() {
        NavigationBar$$ExternalSyntheticLambda3 navigationBar$$ExternalSyntheticLambda3;
        if (BasicRune.NAVBAR_ENABLED) {
            return;
        }
        ButtonDispatcher backButton = ((NavigationBarView) this.mView).getBackButton();
        ButtonDispatcher recentsButton = ((NavigationBarView) this.mView).getRecentsButton();
        if (this.mScreenPinningActive) {
            if (((NavigationBarView) this.mView).isRecentsButtonVisible()) {
                navigationBar$$ExternalSyntheticLambda3 = new NavigationBar$$ExternalSyntheticLambda3(this, 0);
            } else {
                navigationBar$$ExternalSyntheticLambda3 = new NavigationBar$$ExternalSyntheticLambda3(this, 1);
            }
            backButton.setOnLongClickListener(navigationBar$$ExternalSyntheticLambda3);
            recentsButton.setOnLongClickListener(new NavigationBar$$ExternalSyntheticLambda3(this, 2));
        } else {
            backButton.setOnLongClickListener(null);
            recentsButton.setOnLongClickListener(null);
        }
        backButton.setLongClickable(this.mScreenPinningActive);
        recentsButton.setLongClickable(this.mScreenPinningActive);
    }

    public final void updateSystemUiStateFlags() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        long j = this.mNavBarHelper.mA11yButtonState;
        boolean z6 = false;
        if ((j & 16) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((j & 32) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        SysUiState sysUiState = this.mSysUiFlagsContainer;
        sysUiState.setFlag(16L, z);
        sysUiState.setFlag(32L, z2);
        if (this.mNavigationBarWindowState == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        sysUiState.setFlag(2L, !z3);
        if ((this.mNavigationIconHints & 1) != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        sysUiState.setFlag(262144L, z4);
        if ((this.mNavigationIconHints & 4) != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        sysUiState.setFlag(1048576L, z5);
        if (this.mBehavior != 2) {
            z6 = true;
        }
        sysUiState.setFlag(131072L, z6);
        sysUiState.commitUpdate(this.mDisplayId);
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
            ((NavigationBarView) this.mView).updateDisabledSystemUiStateFlags(sysUiState);
        }
    }

    public final boolean updateTransitionMode(int i) {
        if (this.mTransitionMode != i) {
            this.mTransitionMode = i;
            if (BasicRune.NAVBAR_ENABLED) {
                ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarTransitionModeChanged(i));
            }
            checkNavBarModes();
            AutoHideController autoHideController = this.mAutoHideController;
            if (autoHideController != null) {
                autoHideController.touchAutoHide();
                return true;
            }
            return true;
        }
        return false;
    }

    public static void updateButtonLocation(Region region, View view, boolean z) {
        Rect rect = new Rect();
        if (z) {
            view.getBoundsOnScreen(rect);
        } else {
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int i = iArr[0];
            rect.set(i, iArr[1], view.getWidth() + i, view.getHeight() + iArr[1]);
        }
        region.op(rect, Region.Op.UNION);
    }
}
