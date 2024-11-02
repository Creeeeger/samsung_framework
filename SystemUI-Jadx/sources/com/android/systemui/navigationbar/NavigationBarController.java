package com.android.systemui.navigationbar;

import android.animation.ValueAnimator;
import android.app.StatusBarManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.provider.DeviceConfig;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityManager;
import android.widget.RemoteViews;
import com.android.internal.statusbar.RegisterStatusBarResult;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.LockIconView$$ExternalSyntheticOutline0;
import com.android.settingslib.applications.InterestingConfigChanges;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.systemui.model.SysUiState;
import com.android.systemui.navigationbar.NavigationBarComponent;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.navigationbar.TaskbarDelegate;
import com.android.systemui.navigationbar.buttons.ButtonDispatcher;
import com.android.systemui.navigationbar.buttons.ContextualButton;
import com.android.systemui.navigationbar.buttons.ContextualButtonGroup;
import com.android.systemui.navigationbar.buttons.RotationContextButton;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.plugin.SamsungPluginTaskBar;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.recents.OverviewProxyService;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.shared.navigationbar.RegionSamplingHelper;
import com.android.systemui.shared.recents.utilities.Utilities;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.AutoHideController;
import com.android.systemui.statusbar.phone.BarTransitions;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.LightBarController;
import com.android.systemui.statusbar.phone.LightBarTransitionsController;
import com.android.systemui.statusbar.policy.BatteryControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.settings.SecureSettings;
import com.android.wm.shell.back.BackAnimationController;
import com.android.wm.shell.pip.Pip;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavigationBarController implements CommandQueue.Callbacks, ConfigurationController.ConfigurationListener, NavigationModeController.ModeChangedListener, Dumpable {
    public final InterestingConfigChanges mConfigChanges;
    public final Context mContext;
    public final DisplayManager mDisplayManager;
    public final DisplayTracker mDisplayTracker;
    public final FeatureFlags mFeatureFlags;
    public final Handler mHandler;
    boolean mIsLargeScreen;
    public final NavBarHelper mNavBarHelper;
    public final NavBarStateManager mNavBarStateManager;
    public final NavBarStore mNavBarStore;
    public int mNavMode;
    public final NavigationBarComponent.Factory mNavigationBarComponentFactory;
    SparseArray<NavigationBar> mNavigationBars = new SparseArray<>();
    public final OverviewProxyService mOverviewProxyService;
    public final ScreenPinningNotify mScreenPinningNotify;
    public final SecureSettings mSecureSettings;
    public final TaskbarDelegate mTaskbarDelegate;

    public NavigationBarController(Context context, OverviewProxyService overviewProxyService, NavigationModeController navigationModeController, SysUiState sysUiState, CommandQueue commandQueue, Handler handler, ConfigurationController configurationController, NavBarHelper navBarHelper, TaskbarDelegate taskbarDelegate, NavigationBarComponent.Factory factory, DumpManager dumpManager, AutoHideController autoHideController, LightBarController lightBarController, TaskStackChangeListeners taskStackChangeListeners, Optional<Pip> optional, Optional<BackAnimationController.BackAnimationImpl> optional2, FeatureFlags featureFlags, SecureSettings secureSettings, DisplayTracker displayTracker, NavBarStore navBarStore) {
        EdgeBackGestureHandler edgeBackGestureHandler;
        InterestingConfigChanges interestingConfigChanges = new InterestingConfigChanges(VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
        this.mConfigChanges = interestingConfigChanges;
        this.mContext = context;
        this.mHandler = handler;
        this.mNavigationBarComponentFactory = factory;
        this.mFeatureFlags = featureFlags;
        this.mSecureSettings = secureSettings;
        this.mDisplayTracker = displayTracker;
        this.mDisplayManager = (DisplayManager) context.getSystemService(DisplayManager.class);
        commandQueue.addCallback((CommandQueue.Callbacks) this);
        ((ConfigurationControllerImpl) configurationController).addCallback(this);
        interestingConfigChanges.applyNewConfig(context.getResources());
        this.mNavMode = navigationModeController.addListener(this);
        this.mNavBarHelper = navBarHelper;
        this.mTaskbarDelegate = taskbarDelegate;
        BackAnimationController.BackAnimationImpl orElse = optional2.orElse(null);
        taskbarDelegate.mCommandQueue = commandQueue;
        taskbarDelegate.mOverviewProxyService = overviewProxyService;
        taskbarDelegate.mNavBarHelper = navBarHelper;
        taskbarDelegate.mNavigationModeController = navigationModeController;
        taskbarDelegate.mSysUiState = sysUiState;
        dumpManager.registerDumpable(taskbarDelegate);
        taskbarDelegate.mAutoHideController = autoHideController;
        taskbarDelegate.mLightBarController = lightBarController;
        taskbarDelegate.mPipOptional = optional;
        taskbarDelegate.mBackAnimation = orElse;
        taskbarDelegate.mLightBarTransitionsController = taskbarDelegate.mLightBarTransitionsControllerFactory.create(new TaskbarDelegate.AnonymousClass4());
        taskbarDelegate.mTaskStackChangeListeners = taskStackChangeListeners;
        Context context2 = navBarHelper.mContext;
        boolean z = true;
        if (BasicRune.NAVBAR_SUPPORT_COVER_DISPLAY && context2.getDisplayId() == 1) {
            edgeBackGestureHandler = navBarHelper.mEdgeBackGestureHandlerFactory.create(context2);
        } else {
            edgeBackGestureHandler = navBarHelper.mEdgeBackGestureHandler;
        }
        taskbarDelegate.mEdgeBackGestureHandler = edgeBackGestureHandler;
        if (BasicRune.NAVBAR_SUPPORT_TASKBAR) {
            SamsungPluginTaskBar samsungPluginTaskBar = taskbarDelegate.mPluginTaskBar;
            samsungPluginTaskBar.getClass();
            TaskbarDelegate taskbarDelegate2 = (TaskbarDelegate) Dependency.get(TaskbarDelegate.class);
            samsungPluginTaskBar.taskbarDelegate = taskbarDelegate2;
            samsungPluginTaskBar.iconResourceMapper = taskbarDelegate2 != null ? taskbarDelegate2.mIconResourceMapper : null;
        }
        boolean z2 = BasicRune.NAVBAR_ENABLED;
        if (!z2) {
            z = Utilities.isLargeScreen(context);
        } else if (context.getResources().getBoolean(R.bool.config_navBarSupportPhoneLayoutProvider)) {
            z = false;
        }
        this.mIsLargeScreen = z;
        dumpManager.registerDumpable(this);
        if (z2) {
            this.mNavBarStore = navBarStore;
            this.mNavBarStateManager = ((NavBarStoreImpl) navBarStore).getNavStateManager(context.getDisplayId());
            this.mOverviewProxyService = overviewProxyService;
        }
        if (BasicRune.NAVBAR_ENABLED_HARD_KEY) {
            this.mScreenPinningNotify = new ScreenPinningNotify(context);
        }
    }

    public final void checkNavBarModes(int i) {
        NavigationBar navigationBar = this.mNavigationBars.get(i);
        if (navigationBar != null) {
            navigationBar.checkNavBarModes();
        }
    }

    public void createNavigationBar(final Display display, Bundle bundle, final RegisterStatusBarResult registerStatusBarResult) {
        boolean z;
        boolean z2;
        if (display == null) {
            return;
        }
        int displayId = display.getDisplayId();
        this.mDisplayTracker.getClass();
        boolean z3 = false;
        boolean z4 = true;
        if (displayId == 0) {
            z = true;
        } else {
            z = false;
        }
        if (displayId == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("Skip createNavigationBar displayId=", displayId, " isDexDisplay=", z2, "NavigationBarController");
            return;
        }
        if (LsRune.COVER_VIRTUAL_DISPLAY) {
            if ((display.getFlags() & 524288) == 0) {
                z4 = false;
            }
            if (z4) {
                KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("Skip createNavigationBar displayId=", displayId, " isCoverDisplay=", z4, "NavigationBarController");
                return;
            }
        }
        try {
            z3 = WindowManagerGlobal.getWindowManagerService().hasNavigationBar(displayId);
        } catch (RemoteException unused) {
            Log.w("NavigationBarController", "Cannot get WindowManager.");
        }
        if (!z3) {
            return;
        }
        if (z && initializeTaskbarIfNecessary() && !BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
            return;
        }
        Context context = this.mContext;
        if (!z) {
            context = context.createDisplayContext(display);
        }
        if (BasicRune.NAVBAR_ENABLED) {
            NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) this.mNavBarStore;
            navBarStoreImpl.initDisplayDependenciesIfNeeded(displayId, context);
            NavBarStateManager navStateManager = navBarStoreImpl.getNavStateManager(displayId);
            TaskbarDelegate taskbarDelegate = (TaskbarDelegate) Dependency.get(TaskbarDelegate.class);
            if (BasicRune.NAVBAR_REMOTEVIEW && taskbarDelegate != null) {
                taskbarDelegate.mNavBarRemoteViewManager = navStateManager.navBarRemoteViewManager;
            }
        }
        final NavigationBar navigationBar = this.mNavigationBarComponentFactory.create(context, bundle).getNavigationBar();
        navigationBar.init();
        this.mNavigationBars.put(displayId, navigationBar);
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener(this) { // from class: com.android.systemui.navigationbar.NavigationBarController.1
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                if (registerStatusBarResult != null) {
                    NavigationBar navigationBar2 = navigationBar;
                    int displayId2 = display.getDisplayId();
                    RegisterStatusBarResult registerStatusBarResult2 = registerStatusBarResult;
                    navigationBar2.setImeWindowStatus(displayId2, registerStatusBarResult2.mImeToken, registerStatusBarResult2.mImeWindowVis, registerStatusBarResult2.mImeBackDisposition, registerStatusBarResult2.mShowImeSwitcher);
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                view.removeOnAttachStateChangeListener(this);
            }
        };
        View view = navigationBar.mView;
        if (view != null) {
            view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        }
    }

    public final void disableAnimationsDuringHide(int i, long j) {
        NavigationBar navigationBar = this.mNavigationBars.get(i);
        if (navigationBar != null) {
            NavigationBarView navigationBarView = (NavigationBarView) navigationBar.mView;
            navigationBarView.mLayoutTransitionsEnabled = false;
            navigationBarView.updateLayoutTransitionsEnabled();
            navigationBar.mHandler.postDelayed(navigationBar.mEnableLayoutTransitions, j + 448);
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        boolean z;
        String str;
        String str2;
        String str3;
        boolean z2;
        boolean z3;
        StringBuilder m = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("mIsLargeScreen="), this.mIsLargeScreen, printWriter, "mNavMode=");
        m.append(this.mNavMode);
        printWriter.println(m.toString());
        if (BasicRune.NAVBAR_ENABLED) {
            StringBuilder m2 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("isSimplifiedGesture="), BasicRune.NAVBAR_SIMPLIFIED_GESTURE, printWriter, "isSupportSearcle="), BasicRune.NAVBAR_SUPPORT_SEARCLE, printWriter, "isSupportLegacyGestureOptions=");
            m2.append(SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME").contains("SupportLegacyGestureOptions"));
            printWriter.println(m2.toString());
        }
        for (int i = 0; i < this.mNavigationBars.size(); i++) {
            if (i > 0) {
                printWriter.println();
            }
            NavigationBar valueAt = this.mNavigationBars.valueAt(i);
            printWriter.println("NavigationBar (displayId=" + valueAt.mDisplayId + "):");
            StringBuilder m3 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("  mStartingQuickSwitchRotation="), valueAt.mStartingQuickSwitchRotation, printWriter, "  mCurrentRotation="), valueAt.mCurrentRotation, printWriter, "  mHomeButtonLongPressDurationMs=");
            m3.append(valueAt.mHomeButtonLongPressDurationMs);
            printWriter.println(m3.toString());
            StringBuilder m4 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("  mLongPressHomeEnabled="), valueAt.mLongPressHomeEnabled, printWriter, "  mNavigationBarWindowState=");
            m4.append(StatusBarManager.windowStateToString(valueAt.mNavigationBarWindowState));
            printWriter.println(m4.toString());
            printWriter.println("  mTransitionMode=".concat(BarTransitions.modeToString(valueAt.mTransitionMode)));
            KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("  mTransientShown="), valueAt.mTransientShown, printWriter, "  mTransientShownFromGestureOnSystemBar="), valueAt.mTransientShownFromGestureOnSystemBar, printWriter, "  mScreenPinningActive="), valueAt.mScreenPinningActive, printWriter);
            CentralSurfaces.dumpBarTransitions(printWriter, "mNavigationBarView", valueAt.mNavigationBarTransitions);
            printWriter.println("  mOrientedHandleSamplingRegion: " + valueAt.mOrientedHandleSamplingRegion);
            NavigationBarView navigationBarView = (NavigationBarView) valueAt.mView;
            navigationBarView.getClass();
            Rect rect = new Rect();
            Point point = new Point();
            navigationBarView.getContext().getDisplay().getRealSize(point);
            printWriter.println("NavigationBarView:");
            printWriter.println(String.format("      this: " + CentralSurfaces.viewInfo(navigationBarView) + " " + NavigationBarView.visibilityToString(navigationBarView.getVisibility()), new Object[0]));
            navigationBarView.getWindowVisibleDisplayFrame(rect);
            if (rect.right <= point.x && rect.bottom <= point.y) {
                z = false;
            } else {
                z = true;
            }
            StringBuilder sb = new StringBuilder("      window: ");
            sb.append(rect.toShortString());
            sb.append(" ");
            sb.append(NavigationBarView.visibilityToString(navigationBarView.getWindowVisibility()));
            if (z) {
                str = " OFFSCREEN!";
            } else {
                str = "";
            }
            KeyboardUI$$ExternalSyntheticOutline0.m(sb, str, printWriter);
            Object[] objArr = new Object[5];
            int id = navigationBarView.mCurrentView.getId();
            if (id != 0) {
                try {
                    str2 = navigationBarView.getContext().getResources().getResourceName(id);
                } catch (Resources.NotFoundException unused) {
                    str2 = "(unknown)";
                }
            } else {
                str2 = "(null)";
            }
            objArr[0] = str2;
            objArr[1] = Integer.valueOf(navigationBarView.mCurrentView.getWidth());
            objArr[2] = Integer.valueOf(navigationBarView.mCurrentView.getHeight());
            objArr[3] = NavigationBarView.visibilityToString(navigationBarView.mCurrentView.getVisibility());
            objArr[4] = Float.valueOf(navigationBarView.mCurrentView.getAlpha());
            printWriter.println(String.format("      mCurrentView: id=%s (%dx%d) %s %f", objArr));
            Object[] objArr2 = new Object[3];
            objArr2[0] = Integer.valueOf(navigationBarView.mDisabledFlags);
            if (navigationBarView.mIsVertical) {
                str3 = "true";
            } else {
                str3 = "false";
            }
            objArr2[1] = str3;
            objArr2[2] = Float.valueOf(navigationBarView.mBarTransitions.mLightTransitionsController.mDarkIntensity);
            printWriter.println(String.format("      disabled=0x%08x vertical=%s darkIntensity=%.2f", objArr2));
            printWriter.println("    mScreenOn: " + navigationBarView.mScreenOn);
            NavigationBarView.dumpButton(printWriter, "back", navigationBarView.getBackButton());
            NavigationBarView.dumpButton(printWriter, BcSmartspaceDataPlugin.UI_SURFACE_HOME_SCREEN, navigationBarView.getHomeButton());
            NavigationBarView.dumpButton(printWriter, "handle", navigationBarView.getHomeHandle());
            NavigationBarView.dumpButton(printWriter, "rcnt", navigationBarView.getRecentsButton());
            NavigationBarView.dumpButton(printWriter, "rota", (RotationContextButton) navigationBarView.mButtonDispatchers.get(R.id.rotate_suggestion));
            NavigationBarView.dumpButton(printWriter, "a11y", navigationBarView.getAccessibilityButton());
            NavigationBarView.dumpButton(printWriter, "ime", (ButtonDispatcher) navigationBarView.mButtonDispatchers.get(R.id.ime_switcher));
            NavigationBarInflaterView navigationBarInflaterView = navigationBarView.mNavigationInflaterView;
            if (navigationBarInflaterView != null) {
                KeyboardUI$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "NavigationBarInflaterView", "  mCurrentLayout: "), navigationBarInflaterView.mCurrentLayout, printWriter);
            }
            NavigationBarTransitions navigationBarTransitions = navigationBarView.mBarTransitions;
            navigationBarTransitions.getClass();
            printWriter.println("NavigationBarTransitions:");
            printWriter.println("  mMode: " + navigationBarTransitions.mMode);
            printWriter.println("  mAlwaysOpaque: false");
            StringBuilder m5 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(LockIconView$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("  mAllowAutoDimWallpaperNotVisible: "), navigationBarTransitions.mAllowAutoDimWallpaperNotVisible, printWriter, "  mWallpaperVisible: "), navigationBarTransitions.mWallpaperVisible, printWriter, "  mLightsOut: "), navigationBarTransitions.mLightsOut, printWriter, "  mAutoDim: "), navigationBarTransitions.mAutoDim, printWriter, "  bg overrideAlpha: "), navigationBarTransitions.mBarBackground.mOverrideAlpha, printWriter, "  bg color: "), navigationBarTransitions.mBarBackground.mColor, printWriter, "  bg frame: ");
            m5.append(navigationBarTransitions.mBarBackground.mFrame);
            printWriter.println(m5.toString());
            ContextualButtonGroup contextualButtonGroup = navigationBarView.mContextualButtonGroup;
            View view = contextualButtonGroup.mCurrentView;
            StringBuilder m6 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "ContextualButtonGroup", "  getVisibleContextButton(): ");
            m6.append(contextualButtonGroup.getVisibleContextButton());
            printWriter.println(m6.toString());
            printWriter.println("  isVisible(): " + contextualButtonGroup.isVisible());
            StringBuilder sb2 = new StringBuilder("  attached(): ");
            if (view != null && view.isAttachedToWindow()) {
                z2 = true;
            } else {
                z2 = false;
            }
            sb2.append(z2);
            printWriter.println(sb2.toString());
            printWriter.println("  mButtonData [ ");
            ArrayList arrayList = (ArrayList) contextualButtonGroup.mButtonData;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ContextualButtonGroup.ButtonData buttonData = (ContextualButtonGroup.ButtonData) arrayList.get(size);
                View view2 = buttonData.button.mCurrentView;
                StringBuilder m7 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("    ", size, ": markedVisible=");
                m7.append(buttonData.markedVisible);
                m7.append(" visible=");
                ContextualButton contextualButton = buttonData.button;
                m7.append(contextualButton.getVisibility());
                m7.append(" attached=");
                if (view2 != null && view2.isAttachedToWindow()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                m7.append(z3);
                m7.append(" alpha=");
                m7.append(contextualButton.getAlpha());
                printWriter.println(m7.toString());
            }
            printWriter.println("  ]");
            navigationBarView.mEdgeBackGestureHandler.dump(printWriter);
            valueAt.mRegionSamplingHelper.dump(printWriter);
            AutoHideController autoHideController = valueAt.mAutoHideController;
            if (autoHideController != null) {
                StringBuilder m8 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "AutoHideController:", "\tmAutoHideSuspended="), autoHideController.mAutoHideSuspended, printWriter, "\tisAnyTransientBarShown=");
                m8.append(autoHideController.isAnyTransientBarShown());
                printWriter.println(m8.toString());
                printWriter.println("\thasPendingAutoHide=" + autoHideController.mHandler.hasCallbacks(autoHideController.mAutoHide));
                StringBuilder sb3 = new StringBuilder("\tgetAutoHideTimeout=");
                AccessibilityManager accessibilityManager = autoHideController.mAccessibilityManager;
                sb3.append(accessibilityManager.getRecommendedTimeoutMillis(2250, 4));
                printWriter.println(sb3.toString());
                printWriter.println("\tgetUserAutoHideTimeout=" + accessibilityManager.getRecommendedTimeoutMillis(350, 4));
            }
        }
    }

    public final void finishBarAnimations(int i) {
        NavigationBar navigationBar = this.mNavigationBars.get(i);
        if (navigationBar != null) {
            BarTransitions.BarBackgroundDrawable barBackgroundDrawable = navigationBar.mNavigationBarTransitions.mBarBackground;
            if (barBackgroundDrawable.mAnimating) {
                barBackgroundDrawable.mAnimating = false;
                barBackgroundDrawable.invalidateSelf();
            }
        }
    }

    public final void forceRepositionCoverNavigationBar(int i) {
        NavigationBar navigationBar = this.mNavigationBars.get(1);
        if (navigationBar != null) {
            navigationBar.repositionNavigationBar(i);
        }
    }

    public final NavigationBar getDefaultNavigationBar() {
        SparseArray<NavigationBar> sparseArray = this.mNavigationBars;
        this.mDisplayTracker.getClass();
        return sparseArray.get(0);
    }

    public final NavigationBarView getNavigationBarView(int i) {
        NavigationBar navigationBar = this.mNavigationBars.get(i);
        if (navigationBar == null) {
            return null;
        }
        return (NavigationBarView) navigationBar.mView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
    
        if (r8.isEnabledInternal(r9, android.os.SystemProperties.getBoolean(r9, r0)) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0096, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0097, code lost:
    
        if (r3 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0099, code lost:
    
        android.os.Trace.beginSection("NavigationBarController#initializeTaskbarIfNecessary");
        r0 = r4.getDisplayId();
        r5.mTogglingNavbarTaskbar = r11.mNavigationBars.contains(r0);
        removeNavigationBar(r0);
        r6.init(r0);
        r5.mTogglingNavbarTaskbar = false;
        android.os.Trace.endSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b7, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
    
        r6.destroy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0093, code lost:
    
        if (r0 == false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean initializeTaskbarIfNecessary() {
        /*
            r11 = this;
            boolean r0 = com.android.systemui.BasicRune.NAVBAR_ENABLED
            java.lang.String r1 = "NavigationBarController"
            java.lang.String r2 = "NavigationBarController#initializeTaskbarIfNecessary"
            r3 = 1
            android.content.Context r4 = r11.mContext
            com.android.systemui.navigationbar.NavBarHelper r5 = r11.mNavBarHelper
            com.android.systemui.navigationbar.TaskbarDelegate r6 = r11.mTaskbarDelegate
            r7 = 0
            if (r0 == 0) goto L5a
            int r0 = r4.getDisplayId()
            boolean r4 = com.android.systemui.BasicRune.NAVBAR_SUPPORT_TASKBAR
            if (r4 == 0) goto L21
            com.android.systemui.navigationbar.store.NavBarStateManager r8 = r11.mNavBarStateManager
            boolean r8 = r8.isTaskBarEnabled(r3)
            if (r8 == 0) goto L21
            goto L22
        L21:
            r3 = r7
        L22:
            if (r3 == 0) goto L3f
            android.os.Trace.beginSection(r2)
            android.util.SparseArray<com.android.systemui.navigationbar.NavigationBar> r2 = r11.mNavigationBars
            boolean r2 = r2.contains(r0)
            r5.mTogglingNavbarTaskbar = r2
            boolean r2 = com.android.systemui.BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY
            if (r2 != 0) goto L36
            r11.removeNavigationBar(r0)
        L36:
            r6.init(r0)
            r5.mTogglingNavbarTaskbar = r7
            android.os.Trace.endSection()
            goto L42
        L3f:
            r6.destroy()
        L42:
            if (r4 == 0) goto L59
            com.android.systemui.recents.OverviewProxyService r11 = r11.mOverviewProxyService     // Catch: java.lang.Exception -> L50
            com.android.systemui.shared.recents.IOverviewProxy r11 = r11.mOverviewProxy     // Catch: java.lang.Exception -> L50
            if (r11 == 0) goto L59
            com.android.systemui.shared.recents.IOverviewProxy$Stub$Proxy r11 = (com.android.systemui.shared.recents.IOverviewProxy.Stub.Proxy) r11     // Catch: java.lang.Exception -> L50
            r11.isTaskbarEnabled(r3)     // Catch: java.lang.Exception -> L50
            goto L59
        L50:
            r11 = move-exception
            java.lang.String r0 = "An error occurred in initializeTaskbarIfNecessary(): "
            android.util.Log.e(r1, r0)
            r11.printStackTrace()
        L59:
            return r3
        L5a:
            boolean r0 = r11.mIsLargeScreen
            if (r0 != 0) goto L80
            com.android.systemui.flags.SysPropBooleanFlag r0 = com.android.systemui.flags.Flags.HIDE_NAVBAR_WINDOW
            com.android.systemui.flags.FeatureFlags r8 = r11.mFeatureFlags
            com.android.systemui.flags.FeatureFlagsRelease r8 = (com.android.systemui.flags.FeatureFlagsRelease) r8
            r8.getClass()
            java.lang.String r9 = r0.name
            com.android.systemui.flags.SystemPropertiesHelper r10 = r8.mSystemProperties
            java.lang.Boolean r0 = r0.getDefault()
            boolean r0 = r0.booleanValue()
            r10.getClass()
            boolean r0 = android.os.SystemProperties.getBoolean(r9, r0)
            boolean r0 = r8.isEnabledInternal(r9, r0)
            if (r0 == 0) goto L96
        L80:
            int r0 = r4.getDisplayId()
            android.view.IWindowManager r8 = android.view.WindowManagerGlobal.getWindowManagerService()
            boolean r0 = r8.hasNavigationBar(r0)     // Catch: android.os.RemoteException -> L8d
            goto L93
        L8d:
            java.lang.String r0 = "Cannot get WindowManager."
            android.util.Log.w(r1, r0)
            r0 = r7
        L93:
            if (r0 == 0) goto L96
            goto L97
        L96:
            r3 = r7
        L97:
            if (r3 == 0) goto Lb4
            android.os.Trace.beginSection(r2)
            int r0 = r4.getDisplayId()
            android.util.SparseArray<com.android.systemui.navigationbar.NavigationBar> r1 = r11.mNavigationBars
            boolean r1 = r1.contains(r0)
            r5.mTogglingNavbarTaskbar = r1
            r11.removeNavigationBar(r0)
            r6.init(r0)
            r5.mTogglingNavbarTaskbar = r7
            android.os.Trace.endSection()
            goto Lb7
        Lb4:
            r6.destroy()
        Lb7:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.NavigationBarController.initializeTaskbarIfNecessary():boolean");
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
        boolean isLargeScreen;
        boolean z;
        float f;
        boolean z2 = BasicRune.NAVBAR_ENABLED;
        Context context = this.mContext;
        if (z2 && context.getUserId() != 0) {
            Log.d("NavigationBarController", "Skip onConfigChanged for userId=" + context.getUserId());
            return;
        }
        boolean z3 = this.mIsLargeScreen;
        if (z2) {
            if (!context.getResources().getBoolean(R.bool.config_navBarSupportPhoneLayoutProvider)) {
                isLargeScreen = true;
            } else {
                isLargeScreen = false;
            }
        } else {
            isLargeScreen = Utilities.isLargeScreen(context);
        }
        this.mIsLargeScreen = isLargeScreen;
        if (z2) {
            for (int i = 0; i < this.mNavigationBars.size(); i++) {
                Context context2 = this.mNavigationBars.valueAt(i).mContext;
                Resources resources = context2.getResources();
                EventTypeFactory.EventType.OnConfigChanged onConfigChanged = new EventTypeFactory.EventType.OnConfigChanged(configuration);
                int displayId = context2.getDisplayId();
                NavBarStore navBarStore = this.mNavBarStore;
                ((NavBarStoreImpl) navBarStore).handleEvent(this, onConfigChanged, displayId);
                ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarConfigChanged(resources.getBoolean(17891775), resources.getBoolean(R.bool.config_navBarSupportPhoneLayoutProvider), resources.getBoolean(17891778), resources.getInteger(android.R.integer.kg_security_flipper_weight)), context2.getDisplayId());
            }
        }
        boolean applyNewConfig = this.mConfigChanges.applyNewConfig(context.getResources());
        if (this.mIsLargeScreen != z3) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder sb = new StringBuilder("NavbarController: newConfig=");
        sb.append(configuration);
        sb.append(" mTaskbarDelegate initialized=");
        TaskbarDelegate taskbarDelegate = this.mTaskbarDelegate;
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, taskbarDelegate.mInitialized, " willApplyConfigToNavbars=", applyNewConfig, " navBarCount=");
        sb.append(this.mNavigationBars.size());
        Log.i("NoBackGesture", sb.toString());
        if (taskbarDelegate.mInitialized) {
            taskbarDelegate.mEdgeBackGestureHandler.onConfigurationChanged(configuration);
            if (!BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
                Resources resources2 = taskbarDelegate.mWindowContext.getResources();
                EventTypeFactory.EventType.OnConfigChanged onConfigChanged2 = new EventTypeFactory.EventType.OnConfigChanged(configuration);
                int i2 = taskbarDelegate.mDisplayId;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) taskbarDelegate.mNavBarStore;
                navBarStoreImpl.handleEvent(taskbarDelegate, onConfigChanged2, i2);
                navBarStoreImpl.handleEvent(taskbarDelegate, new EventTypeFactory.EventType.OnNavBarConfigChanged(resources2.getBoolean(17891775), resources2.getBoolean(R.bool.config_navBarSupportPhoneLayoutProvider), resources2.getBoolean(17891778), resources2.getInteger(android.R.integer.kg_security_flipper_weight)), taskbarDelegate.mDisplayId);
            }
            if (BasicRune.NAVBAR_SUPPORT_TASKBAR) {
                taskbarDelegate.updateTaskbarButtonIconsAndHints();
            }
        }
        if (z && updateNavbarForTaskbar() && !BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
            return;
        }
        if (applyNewConfig) {
            for (int i3 = 0; i3 < this.mNavigationBars.size(); i3++) {
                int keyAt = this.mNavigationBars.keyAt(i3);
                Bundle bundle = new Bundle();
                NavigationBar navigationBar = this.mNavigationBars.get(keyAt);
                if (navigationBar != null) {
                    bundle.putInt("disabled_state", navigationBar.mDisabledFlags1);
                    bundle.putInt("disabled2_state", navigationBar.mDisabledFlags2);
                    bundle.putInt("appearance", navigationBar.mAppearance);
                    bundle.putInt("behavior", navigationBar.mBehavior);
                    bundle.putBoolean("transient_state", navigationBar.mTransientShown);
                    LightBarTransitionsController lightBarTransitionsController = navigationBar.mNavigationBarTransitions.mLightTransitionsController;
                    ValueAnimator valueAnimator = lightBarTransitionsController.mTintAnimator;
                    if (valueAnimator != null && valueAnimator.isRunning()) {
                        f = lightBarTransitionsController.mNextDarkIntensity;
                    } else {
                        f = lightBarTransitionsController.mDarkIntensity;
                    }
                    bundle.putFloat("dark_intensity", f);
                    if (BasicRune.NAVBAR_ENABLED) {
                        bundle.putInt("icon_hints", navigationBar.mNavigationIconHints);
                    }
                }
                removeNavigationBar(keyAt);
                createNavigationBar(this.mDisplayManager.getDisplay(keyAt), bundle, null);
            }
            return;
        }
        for (int i4 = 0; i4 < this.mNavigationBars.size(); i4++) {
            NavigationBar valueAt = this.mNavigationBars.valueAt(i4);
            valueAt.getClass();
            int rotation = configuration.windowConfiguration.getRotation();
            Context context3 = valueAt.mContext;
            Locale locale = context3.getResources().getConfiguration().locale;
            int layoutDirectionFromLocale = TextUtils.getLayoutDirectionFromLocale(locale);
            if (!locale.equals(valueAt.mLocale) || layoutDirectionFromLocale != valueAt.mLayoutDirection) {
                if (BasicRune.NAVBAR_ENABLED && valueAt.mLocale != null) {
                    View view = valueAt.mView;
                    if (view != null && ((NavigationBarView) view).isAttachedToWindow()) {
                        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) ((View) ((NavigationBarView) valueAt.mView).getParent()).getLayoutParams();
                        layoutParams.accessibilityTitle = context3.getString(R.string.samsung_nav_bar);
                        valueAt.mWindowManager.updateViewLayout((View) ((NavigationBarView) valueAt.mView).getParent(), layoutParams);
                    }
                    View view2 = valueAt.mView;
                    if (view2 != null) {
                        ((NavigationBarView) view2).reInflateNavBarLayout();
                    }
                }
                valueAt.mLocale = locale;
                valueAt.mLayoutDirection = layoutDirectionFromLocale;
                ((NavigationBarView) valueAt.mView).setLayoutDirection(layoutDirectionFromLocale);
            }
            valueAt.repositionNavigationBar(rotation);
            valueAt.mEdgeBackGestureHandler.onConfigurationChanged(configuration);
            if (valueAt.canShowSecondaryHandle()) {
                if (rotation != valueAt.mCurrentRotation) {
                    valueAt.mCurrentRotation = rotation;
                    valueAt.orientSecondaryHomeHandle();
                }
            } else if (BasicRune.NAVBAR_GESTURE) {
                valueAt.resetSecondaryHandle();
            }
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onDisplayReady(int i) {
        boolean isLargeScreen;
        Display display = this.mDisplayManager.getDisplay(i);
        boolean z = BasicRune.NAVBAR_ENABLED;
        Context context = this.mContext;
        if (z) {
            if (!context.getResources().getBoolean(R.bool.config_navBarSupportPhoneLayoutProvider)) {
                isLargeScreen = true;
            } else {
                isLargeScreen = false;
            }
        } else {
            isLargeScreen = Utilities.isLargeScreen(context);
        }
        this.mIsLargeScreen = isLargeScreen;
        createNavigationBar(display, null, null);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onDisplayRemoved(int i) {
        removeNavigationBar(i);
    }

    @Override // com.android.systemui.navigationbar.NavigationModeController.ModeChangedListener
    public final void onNavigationModeChanged(int i) {
        final int i2 = this.mNavMode;
        if (i2 == i) {
            return;
        }
        this.mNavMode = i;
        updateAccessibilityButtonModeIfNeeded();
        this.mHandler.post(new Runnable() { // from class: com.android.systemui.navigationbar.NavigationBarController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NavigationBarController navigationBarController = NavigationBarController.this;
                if (i2 != navigationBarController.mNavMode) {
                    navigationBarController.updateNavbarForTaskbar();
                }
                for (int i3 = 0; i3 < navigationBarController.mNavigationBars.size(); i3++) {
                    NavigationBar valueAt = navigationBarController.mNavigationBars.valueAt(i3);
                    if (valueAt != null) {
                        ((NavigationBarView) valueAt.mView).updateStates();
                    }
                }
            }
        });
    }

    public final void removeNavigationBar(int i) {
        NavigationBar navigationBar = this.mNavigationBars.get(i);
        if (navigationBar != null) {
            navigationBar.setAutoHideController(null);
            navigationBar.mCommandQueue.removeCallback((CommandQueue.Callbacks) navigationBar);
            navigationBar.mWindowManager.removeViewImmediate(((NavigationBarView) navigationBar.mView).getRootView());
            navigationBar.mNavigationModeController.removeListener(navigationBar.mModeChangedListener);
            EdgeBackGestureHandler edgeBackGestureHandler = navigationBar.mEdgeBackGestureHandler;
            edgeBackGestureHandler.mStateChangeCallback = null;
            navigationBar.mNavBarHelper.removeNavTaskStateUpdater(navigationBar.mNavbarTaskbarStateUpdater);
            ((ArrayList) navigationBar.mNotificationShadeDepthController.listeners).remove(navigationBar.mDepthListener);
            navigationBar.mDeviceConfigProxy.getClass();
            DeviceConfig.removeOnPropertiesChangedListener(navigationBar.mOnPropertiesChangedListener);
            navigationBar.mTaskStackChangeListeners.unregisterTaskStackListener(navigationBar.mTaskStackListener);
            if (BasicRune.NAVBAR_SUPPORT_COVER_DISPLAY && navigationBar.mDisplayId == 1) {
                LightBarController lightBarController = navigationBar.mLightBarController;
                if (lightBarController != null) {
                    ((BatteryControllerImpl) lightBarController.mBatteryController).removeCallback(lightBarController);
                    NavigationModeController navigationModeController = lightBarController.mNavigationModeController;
                    if (navigationModeController != null) {
                        navigationModeController.removeListener(lightBarController.mModeChangedListener);
                    }
                }
                edgeBackGestureHandler.onNavBarDetached();
            }
            if (BasicRune.NAVBAR_ENABLED) {
                int i2 = navigationBar.mDisplayId;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) navigationBar.mNavBarStore;
                if (i2 != 0) {
                    navBarStoreImpl.navDependencies.put(Integer.valueOf(i2), null);
                    navBarStoreImpl.navStateManager.put(Integer.valueOf(i2), null);
                } else {
                    navBarStoreImpl.getClass();
                }
            }
            this.mNavigationBars.remove(i);
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void resetScheduleAutoHide() {
        for (int i = 0; i < this.mNavigationBars.size(); i++) {
            NavigationBar valueAt = this.mNavigationBars.valueAt(i);
            valueAt.getClass();
            Log.d("NavigationBar", "resetAutoHide()");
            valueAt.mAutoHideController.touchAutoHide();
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void setNavigationBarLumaSamplingEnabled(int i, boolean z) {
        NavigationBar navigationBar = this.mNavigationBars.get(i);
        if (navigationBar != null) {
            RegionSamplingHelper regionSamplingHelper = navigationBar.mRegionSamplingHelper;
            if (z) {
                regionSamplingHelper.start(navigationBar.mSamplingBounds);
            } else {
                regionSamplingHelper.stop();
            }
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void setNavigationBarShortcut(String str, RemoteViews remoteViews, int i, int i2) {
        Log.d("NavigationBarController", "setNavigationBarShortcut requestClass : " + str + ", remoteViews : " + remoteViews + ", position : " + i + ", priority : " + i2);
        ((NavBarStoreImpl) this.mNavBarStore).handleEvent(this, new EventTypeFactory.EventType.OnSetRemoteView(str, remoteViews, i, i2));
    }

    public final void touchAutoDim(int i) {
        NavigationBar navigationBar = this.mNavigationBars.get(i);
        if (navigationBar != null) {
            navigationBar.mNavigationBarTransitions.setAutoDim(false);
            Handler handler = navigationBar.mHandler;
            NavigationBar$$ExternalSyntheticLambda9 navigationBar$$ExternalSyntheticLambda9 = navigationBar.mAutoDim;
            handler.removeCallbacks(navigationBar$$ExternalSyntheticLambda9);
            int state = navigationBar.mStatusBarStateController.getState();
            if (state != 1 && state != 2) {
                handler.postDelayed(navigationBar$$ExternalSyntheticLambda9, 2250L);
            }
        }
    }

    public final void transitionTo(int i, int i2) {
        NavigationBar navigationBar = this.mNavigationBars.get(i);
        if (navigationBar != null) {
            navigationBar.mNavigationBarTransitions.transitionTo(i2, true);
        }
    }

    public final void updateAccessibilityButtonModeIfNeeded() {
        SecureSettings secureSettings = this.mSecureSettings;
        int intForUser = secureSettings.getIntForUser(0, -2, "accessibility_button_mode");
        if (intForUser == 1) {
            return;
        }
        if (QuickStepContract.isGesturalMode(this.mNavMode) && intForUser == 0) {
            secureSettings.putIntForUser(2, -2, "accessibility_button_mode");
        } else if (!QuickStepContract.isGesturalMode(this.mNavMode) && intForUser == 2) {
            secureSettings.putIntForUser(0, -2, "accessibility_button_mode");
        }
    }

    public final boolean updateNavbarForTaskbar() {
        boolean initializeTaskbarIfNecessary = initializeTaskbarIfNecessary();
        Context context = this.mContext;
        if (!initializeTaskbarIfNecessary && this.mNavigationBars.get(context.getDisplayId()) == null) {
            if (!BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY) {
                createNavigationBar(context.getDisplay(), null, null);
            }
        } else if (BasicRune.NAVBAR_ENABLED_HARD_KEY && !initializeTaskbarIfNecessary && !QuickStepContract.isGesturalMode(this.mNavMode) && this.mNavigationBars.get(context.getDisplayId()) != null) {
            removeNavigationBar(context.getDisplayId());
        }
        return initializeTaskbarIfNecessary;
    }
}
