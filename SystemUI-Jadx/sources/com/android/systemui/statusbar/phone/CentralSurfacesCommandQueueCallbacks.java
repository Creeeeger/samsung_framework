package com.android.systemui.statusbar.phone;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.VibrationAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;
import android.util.Slog;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.statusbar.LetterboxDetails;
import com.android.internal.view.AppearanceRegion;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.SysUIToast;
import com.android.systemui.assist.AssistManager;
import com.android.systemui.charging.WirelessChargingAnimation;
import com.android.systemui.cover.CoverHost;
import com.android.systemui.doze.DozeHost;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.model.SysUiState;
import com.android.systemui.navigationbar.NavigationBar;
import com.android.systemui.navigationbar.NavigationBarController;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.navigationbar.ScreenPinningNotify;
import com.android.systemui.navigationbar.TaskbarDelegate;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.qp.SubscreenQSControllerContract$FlashLightView;
import com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity;
import com.android.systemui.qp.flashlight.SubscreenFlashLightController;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QSPanelHost;
import com.android.systemui.qs.QSPanelHost$$ExternalSyntheticLambda0;
import com.android.systemui.qs.QSPanelHost$$ExternalSyntheticLambda1;
import com.android.systemui.qs.QSPanelHost$$ExternalSyntheticLambda5;
import com.android.systemui.qs.SecQSPanelController;
import com.android.systemui.qs.external.CustomTile;
import com.android.systemui.searcle.SearcleManager;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.QuickSettingsController;
import com.android.systemui.shade.SecPanelBlockExpandingHelper;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeControllerImpl;
import com.android.systemui.shade.ShadeHeaderController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.shared.recents.utilities.Utilities;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.KeyboardShortcuts;
import com.android.systemui.statusbar.VibratorHelper;
import com.android.systemui.statusbar.disableflags.DisableFlagsLogger;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda11;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl$$ExternalSyntheticLambda0;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.policy.RemoteInputQuickSettingsDisabler;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import com.android.systemui.surfaceeffects.ripple.RippleShader;
import com.android.systemui.util.Assert;
import com.android.systemui.util.NoRemeasureMotionLayout;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.concurrency.MessageRouter;
import com.android.systemui.util.concurrency.MessageRouterImpl;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CentralSurfacesCommandQueueCallbacks implements CommandQueue.Callbacks {
    public final ActivityStarter mActivityStarter;
    public final AssistManager mAssistManager;
    public final Lazy mCameraLauncherLazy;
    public final CentralSurfaces mCentralSurfaces;
    public final CommandQueue mCommandQueue;
    public final Context mContext;
    public final CoverHost mCoverHost;
    public final DeviceProvisionedController mDeviceProvisionedController;
    public final DisableFlagsLogger mDisableFlagsLogger;
    public final int mDisplayId;
    public final DozeServiceHost mDozeServiceHost;
    public final HeadsUpManager mHeadsUpManager;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final MetricsLogger mMetricsLogger;
    public final NotificationStackScrollLayoutController mNotificationStackScrollLayoutController;
    public final SecPanelBlockExpandingHelper mPanelBlockExpandingHelper;
    public final PowerManager mPowerManager;
    public final QSHost mQSHost;
    public final QuickSettingsController mQsController;
    public final RemoteInputQuickSettingsDisabler mRemoteInputQuickSettingsDisabler;
    public final SearcleManager mSearcleManager;
    public final ShadeController mShadeController;
    public final ShadeViewController mShadeViewController;
    public final StatusBarHideIconsForBouncerManager mStatusBarHideIconsForBouncerManager;
    public final StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;
    public final SystemBarAttributesListener mSystemBarAttributesListener;
    public final UserTracker mUserTracker;
    public final boolean mVibrateOnOpening;
    public final VibratorHelper mVibratorHelper;
    public final WakefulnessLifecycle mWakefulnessLifecycle;

    static {
        VibrationAttributes.createForUsage(50);
    }

    public CentralSurfacesCommandQueueCallbacks(CoverHost coverHost, CentralSurfaces centralSurfaces, QuickSettingsController quickSettingsController, Context context, Resources resources, ShadeController shadeController, CommandQueue commandQueue, ShadeViewController shadeViewController, RemoteInputQuickSettingsDisabler remoteInputQuickSettingsDisabler, MetricsLogger metricsLogger, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardStateController keyguardStateController, HeadsUpManager headsUpManager, WakefulnessLifecycle wakefulnessLifecycle, DeviceProvisionedController deviceProvisionedController, StatusBarKeyguardViewManager statusBarKeyguardViewManager, AssistManager assistManager, DozeServiceHost dozeServiceHost, NotificationStackScrollLayoutController notificationStackScrollLayoutController, StatusBarHideIconsForBouncerManager statusBarHideIconsForBouncerManager, PowerManager powerManager, VibratorHelper vibratorHelper, Optional<Vibrator> optional, DisableFlagsLogger disableFlagsLogger, int i, SystemBarAttributesListener systemBarAttributesListener, Lazy lazy, UserTracker userTracker, QSHost qSHost, ActivityStarter activityStarter, SearcleManager searcleManager) {
        this.mCentralSurfaces = centralSurfaces;
        this.mQsController = quickSettingsController;
        this.mContext = context;
        this.mShadeController = shadeController;
        this.mCommandQueue = commandQueue;
        this.mShadeViewController = shadeViewController;
        this.mRemoteInputQuickSettingsDisabler = remoteInputQuickSettingsDisabler;
        this.mMetricsLogger = metricsLogger;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardStateController = keyguardStateController;
        this.mHeadsUpManager = headsUpManager;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mDeviceProvisionedController = deviceProvisionedController;
        this.mStatusBarKeyguardViewManager = statusBarKeyguardViewManager;
        this.mAssistManager = assistManager;
        this.mDozeServiceHost = dozeServiceHost;
        this.mNotificationStackScrollLayoutController = notificationStackScrollLayoutController;
        this.mStatusBarHideIconsForBouncerManager = statusBarHideIconsForBouncerManager;
        this.mPowerManager = powerManager;
        this.mVibratorHelper = vibratorHelper;
        this.mDisableFlagsLogger = disableFlagsLogger;
        this.mDisplayId = i;
        this.mCameraLauncherLazy = lazy;
        this.mUserTracker = userTracker;
        this.mQSHost = qSHost;
        this.mVibrateOnOpening = resources.getBoolean(R.bool.config_vibrateOnIconAnimation);
        if (optional.isPresent() && optional.get().areAllPrimitivesSupported(4, 1)) {
            VibrationEffect.startComposition().addPrimitive(4).addPrimitive(1, 1.0f, 50).compose();
        } else if (optional.isPresent() && optional.get().hasAmplitudeControl()) {
            VibrationEffect.createWaveform(CentralSurfaces.CAMERA_LAUNCH_GESTURE_VIBRATION_TIMINGS, CentralSurfaces.CAMERA_LAUNCH_GESTURE_VIBRATION_AMPLITUDES, -1);
        } else {
            int[] intArray = resources.getIntArray(R.array.config_cameraLaunchGestureVibePattern);
            long[] jArr = new long[intArray.length];
            for (int i2 = 0; i2 < intArray.length; i2++) {
                jArr[i2] = intArray[i2];
            }
            VibrationEffect.createWaveform(jArr, -1);
        }
        this.mSystemBarAttributesListener = systemBarAttributesListener;
        if (LsRune.COVER_SUPPORTED) {
            this.mCoverHost = coverHost;
        }
        this.mActivityStarter = activityStarter;
        this.mPanelBlockExpandingHelper = (SecPanelBlockExpandingHelper) Dependency.get(SecPanelBlockExpandingHelper.class);
        if (BasicRune.SEARCLE) {
            this.mSearcleManager = searcleManager;
        } else {
            this.mSearcleManager = null;
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void abortTransient(int i, int i2) {
        if (i != this.mDisplayId || (WindowInsets.Type.statusBars() & i2) == 0) {
            return;
        }
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
        if (centralSurfacesImpl.mTransientShown) {
            centralSurfacesImpl.mTransientShown = false;
            centralSurfacesImpl.maybeUpdateBarMode();
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void addQsTile(ComponentName componentName) {
        componentName.getClassName();
        this.mQSHost.addTile(componentName);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void animateCollapsePanels(int i, boolean z) {
        ((ShadeControllerImpl) this.mShadeController).animateCollapsePanels(i, z, false, 1.0f, true);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void animateExpandNotificationsPanel() {
        ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("animateExpand: mExpandedVisible="), ((ShadeControllerImpl) this.mShadeController).mExpandedVisible, "CentralSurfaces");
        if (!this.mCommandQueue.panelsEnabled()) {
            return;
        }
        ((NotificationPanelViewController) this.mShadeViewController).expandToNotifications();
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void animateExpandSettingsPanel(String str) {
        ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("animateExpand: mExpandedVisible="), ((ShadeControllerImpl) this.mShadeController).mExpandedVisible, "CentralSurfaces");
        if (!this.mCommandQueue.panelsEnabled() || !((DeviceProvisionedControllerImpl) this.mDeviceProvisionedController).isCurrentUserSetup()) {
            return;
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            return;
        }
        ((NotificationPanelViewController) this.mShadeViewController).expandToQs();
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void clickTile(ComponentName componentName) {
        componentName.getClassName();
        SecQSPanelController secQSPanelController = ((CentralSurfacesImpl) this.mCentralSurfaces).mQSPanelController;
        if (secQSPanelController != null) {
            QSPanelHost qSPanelHost = secQSPanelController.mQsPanelHost;
            qSPanelHost.getClass();
            qSPanelHost.mRecords.stream().map(new QSPanelHost$$ExternalSyntheticLambda0(5)).filter(new QSPanelHost$$ExternalSyntheticLambda5(CustomTile.toSpec(componentName), 1)).findFirst().ifPresent(new QSPanelHost$$ExternalSyntheticLambda1(4));
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void disable(int i, int i2, int i3, boolean z) {
        boolean z2;
        View view;
        boolean z3;
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("disable ", i, " ", i2, " ");
        m.append(i3);
        m.append(" ");
        m.append(z);
        Log.d("CentralSurfaces", m.toString());
        if (i != this.mDisplayId) {
            return;
        }
        this.mRemoteInputQuickSettingsDisabler.getClass();
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
        Log.d("CentralSurfaces", this.mDisableFlagsLogger.getDisableFlagsString(new DisableFlagsLogger.DisableState(centralSurfacesImpl.mDisabled1, centralSurfacesImpl.mDisabled2), new DisableFlagsLogger.DisableState(i2, i3), new DisableFlagsLogger.DisableState(i2, i3)));
        int i4 = centralSurfacesImpl.mDisabled1 ^ i2;
        centralSurfacesImpl.mDisabled1 = i2;
        int i5 = centralSurfacesImpl.mDisabled2 ^ i3;
        centralSurfacesImpl.mDisabled2 = i3;
        int i6 = i4 & 65536;
        boolean z4 = false;
        HeadsUpManager headsUpManager = this.mHeadsUpManager;
        ShadeController shadeController = this.mShadeController;
        if (i6 != 0 && (65536 & i2) != 0) {
            Log.d("CentralSurfaces", "disable DISABLE_EXPAND");
            if (!this.mKeyguardStateController.isVisible()) {
                ShadeControllerImpl shadeControllerImpl = (ShadeControllerImpl) shadeController;
                if (shadeControllerImpl.mNotificationPanelViewController.isExpandingOrCollapsing()) {
                    shadeControllerImpl.instantCollapseShade();
                } else {
                    shadeControllerImpl.animateCollapseShade(0);
                }
            }
            headsUpManager.releaseAllImmediately();
        }
        if ((i4 & 262144) != 0) {
            Log.d("CentralSurfaces", "disable DISABLE_NOTIFICATION_ALERTS");
            if ((262144 & centralSurfacesImpl.mDisabled1) != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                headsUpManager.releaseAllImmediately();
            }
        }
        if ((i5 & 1) != 0) {
            Log.d("CentralSurfaces", "disable DISABLE2_QUICK_SETTINGS");
            centralSurfacesImpl.updateQsExpansionEnabled();
        }
        if ((i5 & 4) != 0) {
            centralSurfacesImpl.updateQsExpansionEnabled();
            if ((i3 & 4) != 0) {
                Log.d("CentralSurfaces", "disable DISABLE2_NOTIFICATION_SHADE");
                ((ShadeControllerImpl) shadeController).animateCollapseShade(0);
            }
        }
        ShadeHeaderController shadeHeaderController = ((NotificationPanelViewController) this.mShadeViewController).mShadeHeaderController;
        shadeHeaderController.getClass();
        if ((i3 & 1) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 != shadeHeaderController.qsDisabled) {
            ((NoRemeasureMotionLayout) shadeHeaderController.header).disabled = z2;
            shadeHeaderController.qsDisabled = z2;
            shadeHeaderController.updateVisibility();
        }
        SecPanelBlockExpandingHelper secPanelBlockExpandingHelper = this.mPanelBlockExpandingHelper;
        secPanelBlockExpandingHelper.getClass();
        if ((i4 & QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT) != 0) {
            if ((i2 & QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT) == 0) {
                z4 = true;
            }
            NavigationBar defaultNavigationBar = secPanelBlockExpandingHelper.mNavigationBarController.getDefaultNavigationBar();
            if (defaultNavigationBar != null && BasicRune.NAVBAR_DISABLE_TOUCH && (view = defaultNavigationBar.mView) != null && ((NavigationBarView) view).isAttachedToWindow()) {
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) ((View) ((NavigationBarView) defaultNavigationBar.mView).getParent()).getLayoutParams();
                SysUiState sysUiState = defaultNavigationBar.mSysUiFlagsContainer;
                if (z4) {
                    layoutParams.flags &= -17;
                    ((NavigationBarView) defaultNavigationBar.mView).updateDisabledSystemUiStateFlags(sysUiState);
                } else {
                    layoutParams.flags |= 16;
                    sysUiState.setFlag(128L, true);
                    sysUiState.setFlag(256L, true);
                    sysUiState.setFlag(4194304L, true);
                    sysUiState.commitUpdate(defaultNavigationBar.mDisplayId);
                }
                defaultNavigationBar.mWindowManager.updateViewLayout((View) ((NavigationBarView) defaultNavigationBar.mView).getParent(), layoutParams);
            }
            StatusBarWindowController statusBarWindowController = secPanelBlockExpandingHelper.mStatusBarWindowController;
            WindowManager.LayoutParams layoutParams2 = statusBarWindowController.mLpChanged;
            if (z4) {
                layoutParams2.flags &= -17;
            } else {
                layoutParams2.flags |= 16;
            }
            WindowManager.LayoutParams layoutParams3 = statusBarWindowController.mLp;
            if (layoutParams3 != null && layoutParams3.copyFrom(layoutParams2) != 0) {
                statusBarWindowController.mWindowManager.updateViewLayout(statusBarWindowController.mStatusBarWindowView, statusBarWindowController.mLp);
            }
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void dismissKeyboardShortcutsMenu() {
        MessageRouter messageRouter = ((CentralSurfacesImpl) this.mCentralSurfaces).mMessageRouter;
        ((MessageRouterImpl) messageRouter).cancelMessages(1027);
        messageRouter.getClass();
        ((MessageRouterImpl) messageRouter).sendMessageDelayed(1027, 0L);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void handleSystemKey(KeyEvent keyEvent) {
        if (this.mCommandQueue.panelsEnabled() && this.mKeyguardUpdateMonitor.mDeviceInteractive) {
            KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
            if ((keyguardStateControllerImpl.mShowing && !keyguardStateControllerImpl.mOccluded) || !((DeviceProvisionedControllerImpl) this.mDeviceProvisionedController).isCurrentUserSetup()) {
                return;
            }
            int keyCode = keyEvent.getKeyCode();
            ShadeViewController shadeViewController = this.mShadeViewController;
            MetricsLogger metricsLogger = this.mMetricsLogger;
            if (280 == keyCode) {
                metricsLogger.action(493);
                ((NotificationPanelViewController) shadeViewController).collapse(1.0f, false);
                return;
            }
            if (281 == keyEvent.getKeyCode()) {
                metricsLogger.action(494);
                NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) shadeViewController;
                if (notificationPanelViewController.isFullyCollapsed()) {
                    if (this.mVibrateOnOpening) {
                        this.mVibratorHelper.vibrate(2);
                    }
                    notificationPanelViewController.expand(true);
                    this.mNotificationStackScrollLayoutController.mView.mWillExpand = true;
                    this.mHeadsUpManager.unpinAll();
                    metricsLogger.count("panel_open", 1);
                    return;
                }
                QuickSettingsController quickSettingsController = this.mQsController;
                if (!quickSettingsController.mExpanded && !notificationPanelViewController.isExpandingOrCollapsing()) {
                    quickSettingsController.flingQs(0.0f, 0);
                    metricsLogger.count("panel_open_qs", 1);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCameraLaunchGestureDetected(int r18) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.CentralSurfacesCommandQueueCallbacks.onCameraLaunchGestureDetected(int):void");
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onEmergencyActionLaunchGestureDetected() {
        boolean z;
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
        Intent emergencyActionIntent = centralSurfacesImpl.getEmergencyActionIntent();
        if (emergencyActionIntent == null) {
            Log.wtf("CentralSurfaces", "Couldn't find an app to process the emergency intent.");
            return;
        }
        WakefulnessLifecycle wakefulnessLifecycle = this.mWakefulnessLifecycle;
        boolean z2 = false;
        if (wakefulnessLifecycle.mWakefulness == 3) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            centralSurfacesImpl.mLaunchEmergencyActionOnFinishedGoingToSleep = true;
            return;
        }
        if (!centralSurfacesImpl.mDeviceInteractive) {
            this.mPowerManager.wakeUp(SystemClock.uptimeMillis(), 4, "com.android.systemui:EMERGENCY_GESTURE");
        }
        boolean z3 = ((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing;
        UserTracker userTracker = this.mUserTracker;
        if (!z3) {
            this.mActivityStarter.startActivityDismissingKeyguard(emergencyActionIntent, false, true, true, null, 0, null, ((UserTrackerImpl) userTracker).getUserHandle());
            return;
        }
        if (!centralSurfacesImpl.mDeviceInteractive) {
            centralSurfacesImpl.mGestureWakeLock.acquire(6000L);
        }
        int i = wakefulnessLifecycle.mWakefulness;
        if (i == 2 || i == 1) {
            z2 = true;
        }
        if (z2) {
            StatusBarKeyguardViewManager statusBarKeyguardViewManager = this.mStatusBarKeyguardViewManager;
            if (statusBarKeyguardViewManager.isBouncerShowing()) {
                statusBarKeyguardViewManager.reset(true);
            }
            this.mContext.startActivityAsUser(emergencyActionIntent, ((UserTrackerImpl) userTracker).getUserHandle());
            return;
        }
        centralSurfacesImpl.mLaunchEmergencyActionWhenFinishedWaking = true;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onFlashlightKeyPressed(int i) {
        boolean z;
        DisplayLifecycle displayLifecycle;
        SubscreenFlashLightController subscreenFlashLightController;
        boolean z2;
        FlashlightControllerImpl flashlightControllerImpl = (FlashlightControllerImpl) ((FlashlightController) Dependency.get(FlashlightController.class));
        flashlightControllerImpl.getClass();
        Log.d("FlashlightControllerImpl", "onFlashlightKeyPressed: " + i);
        boolean z3 = true;
        if (flashlightControllerImpl.mCameraId != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Log.d("FlashlightControllerImpl", "CameraManager is not ready");
            flashlightControllerImpl.updateTorchCallback();
        }
        boolean isAvailable = flashlightControllerImpl.isAvailable();
        Context context = flashlightControllerImpl.mContext;
        if (!isAvailable) {
            synchronized (flashlightControllerImpl) {
                z2 = flashlightControllerImpl.mIsThermalRestricted;
            }
            if (z2) {
                flashlightControllerImpl.showWarningMessage(context.getString(R.string.unable_to_turn_on_by_high_temperature));
                return;
            } else {
                flashlightControllerImpl.showUnavailableMessage();
                return;
            }
        }
        if (flashlightControllerImpl.mIsLowBattery) {
            flashlightControllerImpl.showWarningMessage(context.getString(R.string.flash_light_disabled_by_low_battery));
            return;
        }
        if (!ActivityManager.isUserAMonkey()) {
            if (QpRune.QUICK_SETTINGS_SUBSCREEN && (displayLifecycle = flashlightControllerImpl.mDisplayLifecycle) != null && !displayLifecycle.mIsFolderOpened && (subscreenFlashLightController = flashlightControllerImpl.mSubscreenFlashlightController) != null) {
                SubscreenQSControllerContract$FlashLightView subscreenQSControllerContract$FlashLightView = subscreenFlashLightController.mFlashLightPresentationView;
                if (subscreenQSControllerContract$FlashLightView == null || ((SubroomFlashLightSettingsActivity) subscreenQSControllerContract$FlashLightView).getActivityState() == 0) {
                    z3 = false;
                }
                if (z3) {
                    ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).closeSubscreenPanel();
                    if (flashlightControllerImpl.isEnabled()) {
                        flashlightControllerImpl.setFlashlight(false);
                    }
                    flashlightControllerImpl.mUiHandler.post(new FlashlightControllerImpl$$ExternalSyntheticLambda0(flashlightControllerImpl, 4));
                    return;
                }
                subscreenFlashLightController.startFlashActivity();
                return;
            }
            flashlightControllerImpl.setFlashlight(!flashlightControllerImpl.isEnabled());
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onRecentsAnimationStateChanged(boolean z) {
        ((CentralSurfacesImpl) this.mCentralSurfaces).setInteracting(2, z);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void onSystemBarAttributesChanged(int i, int i2, AppearanceRegion[] appearanceRegionArr, boolean z, int i3, int i4, String str, LetterboxDetails[] letterboxDetailsArr) {
        if (i != this.mDisplayId) {
            return;
        }
        this.mSystemBarAttributesListener.onSystemBarAttributesChanged(i, i2, appearanceRegionArr, z, i3, i4, str, letterboxDetailsArr);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void remQsTile(ComponentName componentName) {
        componentName.getClassName();
        this.mQSHost.removeTileByUser(componentName);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void setTopAppHidesStatusBar(boolean z) {
        StatusBarHideIconsForBouncerManager statusBarHideIconsForBouncerManager = this.mStatusBarHideIconsForBouncerManager;
        statusBarHideIconsForBouncerManager.topAppHidesStatusBar = z;
        if (!z && statusBarHideIconsForBouncerManager.wereIconsJustHidden) {
            statusBarHideIconsForBouncerManager.wereIconsJustHidden = false;
            statusBarHideIconsForBouncerManager.commandQueue.recomputeDisableFlags(statusBarHideIconsForBouncerManager.displayId, true);
        }
        statusBarHideIconsForBouncerManager.updateHideIconsForBouncer(true);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showAssistDisclosure() {
        this.mAssistManager.showDisclosure();
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showPinningEnterExitToast(boolean z) {
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
        int i = centralSurfacesImpl.mDisplayId;
        NavigationBarController navigationBarController = centralSurfacesImpl.mNavigationBarController;
        NavigationBarView navigationBarView = navigationBarController.getNavigationBarView(i);
        if (navigationBarView != null) {
            if (z) {
                SysUIToast.makeText(R.string.sec_screen_pinning_start, navigationBarView.mScreenPinningNotify.mContext, 1).show();
                return;
            } else {
                SysUIToast.makeText(R.string.sec_screen_pinning_exit, navigationBarView.mScreenPinningNotify.mContext, 1).show();
                return;
            }
        }
        boolean z2 = BasicRune.NAVBAR_AOSP_BUG_FIX;
        TaskbarDelegate taskbarDelegate = navigationBarController.mTaskbarDelegate;
        if (!z2 && i == 0 && taskbarDelegate.mInitialized) {
            taskbarDelegate.showPinningEnterExitToast(z);
            return;
        }
        if (BasicRune.NAVBAR_ENABLED_HARD_KEY && !taskbarDelegate.mInitialized) {
            ScreenPinningNotify screenPinningNotify = navigationBarController.mScreenPinningNotify;
            if (z) {
                SysUIToast.makeText(R.string.sec_screen_pinning_start, screenPinningNotify.mContext, 1).show();
            } else {
                SysUIToast.makeText(R.string.sec_screen_pinning_exit, screenPinningNotify.mContext, 1).show();
            }
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showPinningEscapeToast() {
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
        int i = centralSurfacesImpl.mDisplayId;
        NavigationBarController navigationBarController = centralSurfacesImpl.mNavigationBarController;
        NavigationBarView navigationBarView = navigationBarController.getNavigationBarView(i);
        TaskbarDelegate taskbarDelegate = navigationBarController.mTaskbarDelegate;
        if (navigationBarView != null && !taskbarDelegate.mInitialized) {
            navigationBarView.showPinningEscapeToast();
            return;
        }
        if (!BasicRune.NAVBAR_AOSP_BUG_FIX && i == 0 && taskbarDelegate.mInitialized) {
            taskbarDelegate.showPinningEscapeToast();
        } else if (BasicRune.NAVBAR_ENABLED_HARD_KEY && !taskbarDelegate.mInitialized) {
            navigationBarController.mScreenPinningNotify.showEscapeToast(false, true);
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showScreenPinningRequest(int i) {
        if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing) {
            return;
        }
        ((CentralSurfacesImpl) this.mCentralSurfaces).showScreenPinningRequest(i, null, false);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showTransient(int i, int i2, boolean z) {
        if (i != this.mDisplayId || (WindowInsets.Type.statusBars() & i2) == 0) {
            return;
        }
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
        if (!centralSurfacesImpl.mTransientShown) {
            centralSurfacesImpl.mTransientShown = true;
            centralSurfacesImpl.mNoAnimationOnNextBarModeChange = true;
            centralSurfacesImpl.maybeUpdateBarMode();
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void showWirelessChargingAnimation(int i) {
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
        WirelessChargingAnimation.WirelessChargingView wirelessChargingView = WirelessChargingAnimation.makeWirelessChargingAnimation(centralSurfacesImpl.mContext, i, new CentralSurfacesImpl.AnonymousClass8(), RippleShader.RippleShape.CIRCLE, CentralSurfacesImpl.sUiEventLogger).mCurrentWirelessChargingView;
        if (wirelessChargingView != null && wirelessChargingView.mNextView != null) {
            WirelessChargingAnimation.WirelessChargingView wirelessChargingView2 = WirelessChargingAnimation.mPreviousWirelessChargingView;
            if (wirelessChargingView2 != null) {
                wirelessChargingView2.hide(0L);
            }
            WirelessChargingAnimation.mPreviousWirelessChargingView = wirelessChargingView;
            if (WirelessChargingAnimation.DEBUG) {
                Slog.d("WirelessChargingView", "SHOW: " + wirelessChargingView);
            }
            WirelessChargingAnimation.WirelessChargingView.AnonymousClass1 anonymousClass1 = wirelessChargingView.mHandler;
            anonymousClass1.sendMessageDelayed(Message.obtain(anonymousClass1, 0), 0L);
            wirelessChargingView.hide(1500L);
            return;
        }
        throw new RuntimeException("setView must have been called");
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void startAssist(Bundle bundle) {
        this.mAssistManager.startAssist(bundle);
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void startSearcleByHomeKey(Boolean bool, Boolean bool2) {
        if (BasicRune.SEARCLE) {
            this.mSearcleManager.startSearcleByHomeKey(bool.booleanValue(), bool2.booleanValue());
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void suppressAmbientDisplay(boolean z) {
        DozeServiceHost dozeServiceHost = this.mDozeServiceHost;
        if (z != dozeServiceHost.mAlwaysOnSuppressed) {
            dozeServiceHost.mAlwaysOnSuppressed = z;
            Assert.isMainThread();
            Iterator it = dozeServiceHost.mCallbacks.iterator();
            while (it.hasNext()) {
                ((DozeHost.Callback) it.next()).onAlwaysOnSuppressedChanged(z);
            }
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void toggleKeyboardShortcutsMenu(int i) {
        CentralSurfaces centralSurfaces = this.mCentralSurfaces;
        final CentralSurfaces.KeyboardShortcutsMessage keyboardShortcutsMessage = new CentralSurfaces.KeyboardShortcutsMessage(i);
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) centralSurfaces;
        MessageRouterImpl messageRouterImpl = (MessageRouterImpl) centralSurfacesImpl.mMessageRouter;
        synchronized (messageRouterImpl.mDataMessageCancelers) {
            if (((HashMap) messageRouterImpl.mDataMessageCancelers).containsKey(CentralSurfaces.KeyboardShortcutsMessage.class)) {
                Iterator it = ((List) ((HashMap) messageRouterImpl.mDataMessageCancelers).get(CentralSurfaces.KeyboardShortcutsMessage.class)).iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                ((HashMap) messageRouterImpl.mDataMessageCancelers).remove(CentralSurfaces.KeyboardShortcutsMessage.class);
            }
        }
        MessageRouter messageRouter = centralSurfacesImpl.mMessageRouter;
        messageRouter.getClass();
        final MessageRouterImpl messageRouterImpl2 = (MessageRouterImpl) messageRouter;
        ExecutorImpl.ExecutionToken executeDelayed = messageRouterImpl2.mDelayableExecutor.executeDelayed(0L, new Runnable() { // from class: com.android.systemui.util.concurrency.MessageRouterImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MessageRouterImpl messageRouterImpl3 = MessageRouterImpl.this;
                Object obj = keyboardShortcutsMessage;
                synchronized (messageRouterImpl3.mDataMessageListenerMap) {
                    if (((HashMap) messageRouterImpl3.mDataMessageListenerMap).containsKey(obj.getClass())) {
                        Iterator it2 = ((List) ((HashMap) messageRouterImpl3.mDataMessageListenerMap).get(obj.getClass())).iterator();
                        while (it2.hasNext()) {
                            CentralSurfacesImpl$$ExternalSyntheticLambda11 centralSurfacesImpl$$ExternalSyntheticLambda11 = (CentralSurfacesImpl$$ExternalSyntheticLambda11) ((MessageRouter.DataMessageListener) it2.next());
                            int i2 = centralSurfacesImpl$$ExternalSyntheticLambda11.$r8$classId;
                            CentralSurfacesImpl centralSurfacesImpl2 = centralSurfacesImpl$$ExternalSyntheticLambda11.f$0;
                            switch (i2) {
                                case 0:
                                    centralSurfacesImpl2.getClass();
                                    int i3 = ((CentralSurfaces.KeyboardShortcutsMessage) obj).mDeviceId;
                                    boolean z = centralSurfacesImpl2.mIsShortcutListSearchEnabled;
                                    Context context = centralSurfacesImpl2.mContext;
                                    if (z) {
                                        Utilities.isLargeScreen(context);
                                    }
                                    KeyboardShortcuts.toggle(i3, context);
                                    break;
                                default:
                                    centralSurfacesImpl2.mCommandQueueCallbacks.animateExpandSettingsPanel(((CentralSurfacesImpl.AnimateExpandSettingsPanelMessage) obj).mSubpanel);
                                    break;
                            }
                        }
                    }
                }
                synchronized (messageRouterImpl3.mDataMessageCancelers) {
                    if (((HashMap) messageRouterImpl3.mDataMessageCancelers).containsKey(obj.getClass())) {
                        if (!((List) ((HashMap) messageRouterImpl3.mDataMessageCancelers).get(obj.getClass())).isEmpty()) {
                            ((List) ((HashMap) messageRouterImpl3.mDataMessageCancelers).get(obj.getClass())).remove(0);
                            if (((List) ((HashMap) messageRouterImpl3.mDataMessageCancelers).get(obj.getClass())).isEmpty()) {
                                ((HashMap) messageRouterImpl3.mDataMessageCancelers).remove(obj.getClass());
                            }
                        }
                    }
                }
            }
        });
        synchronized (messageRouterImpl2.mDataMessageCancelers) {
            ((HashMap) messageRouterImpl2.mDataMessageCancelers).putIfAbsent(CentralSurfaces.KeyboardShortcutsMessage.class, new ArrayList());
            ((List) ((HashMap) messageRouterImpl2.mDataMessageCancelers).get(CentralSurfaces.KeyboardShortcutsMessage.class)).add(executeDelayed);
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void togglePanel() {
        if (((CentralSurfacesImpl) this.mCentralSurfaces).mPanelExpanded) {
            ((ShadeControllerImpl) this.mShadeController).animateCollapseShade(0);
        } else {
            animateExpandNotificationsPanel();
        }
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void appTransitionCancelled(int i) {
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void appTransitionFinished(int i) {
    }
}
