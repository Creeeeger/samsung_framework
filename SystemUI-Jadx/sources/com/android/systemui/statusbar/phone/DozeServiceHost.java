package com.android.systemui.statusbar.phone;

import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.ActiveUnlockConfig;
import com.android.keyguard.FaceAuthUiEvent;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.DejankUtils;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.Rune;
import com.android.systemui.assist.AssistManager;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.cover.CoverScreenManager;
import com.android.systemui.doze.DozeHost;
import com.android.systemui.doze.DozeLog;
import com.android.systemui.doze.DozeReceiver;
import com.android.systemui.doze.DozeUi;
import com.android.systemui.doze.PluginAODManager;
import com.android.systemui.facewidget.plugin.FaceWidgetContainerWrapper;
import com.android.systemui.facewidget.plugin.PluginFaceWidgetManager;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl;
import com.android.systemui.keyguard.domain.interactor.BurnInInteractor;
import com.android.systemui.keyguard.domain.interactor.DozeInteractor;
import com.android.systemui.plugins.keyguardstatusview.PluginKeyguardStatusView;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.NotificationShadeWindowViewController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.PulseExpansionHandler;
import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.notification.NotificationWakeUpCoordinator;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.phone.DozeScrimController;
import com.android.systemui.statusbar.phone.HeadsUpManagerPhone;
import com.android.systemui.statusbar.policy.BatteryController;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.OnHeadsUpChangedListener;
import com.android.systemui.subscreen.SubScreenManager;
import com.android.systemui.uithreadmonitor.LooperSlowLogController;
import com.android.systemui.uithreadmonitor.LooperSlowLogControllerImpl;
import com.android.systemui.util.Assert;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.time.SystemClockImpl;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.function.LongConsumer;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DozeServiceHost implements DozeHost {
    public boolean mAlwaysOnSuppressed;
    public View mAmbientIndicationContainer;
    public boolean mAnimateWakeup;
    public final Lazy mAssistManagerLazy;
    public final AuthController mAuthController;
    public final BatteryController mBatteryController;
    public final Lazy mBiometricUnlockControllerLazy;
    public final BurnInInteractor mBurnInInteractor;
    public CentralSurfaces mCentralSurfaces;
    public final DeviceProvisionedController mDeviceProvisionedController;
    public final DozeInteractor mDozeInteractor;
    public final DozeLog mDozeLog;
    public final DozeScrimController mDozeScrimController;
    public boolean mDozingRequested;
    public final HeadsUpManagerPhone mHeadsUpManagerPhone;
    public boolean mIgnoreTouchWhilePulsing;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public LooperSlowLogController mLooperSlowLogController;
    public final NotificationIconAreaController mNotificationIconAreaController;
    public ShadeViewController mNotificationPanel;
    public final NotificationShadeWindowController mNotificationShadeWindowController;
    public NotificationShadeWindowViewController mNotificationShadeWindowViewController;
    public final NotificationWakeUpCoordinator mNotificationWakeUpCoordinator;
    public final AnonymousClass2 mOnHeadsUpChangedListener;
    public Runnable mPendingScreenOffCallback;
    public Lazy mPluginAODManagerLazy;
    public final PowerManager mPowerManager;
    public final PulseExpansionHandler mPulseExpansionHandler;
    public boolean mPulsePending;
    public boolean mPulsing;
    public final ScrimController mScrimController;
    public Lazy mSecPanelPolicyLazy;
    public StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;
    public final SysuiStatusBarStateController mStatusBarStateController;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final ArrayList mCallbacks = new ArrayList();
    boolean mWakeLockScreenPerformsAuth = SystemProperties.getBoolean("persist.sysui.wake_performs_auth", true);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.systemui.statusbar.phone.DozeServiceHost$2, com.android.systemui.statusbar.policy.OnHeadsUpChangedListener] */
    public DozeServiceHost(DozeLog dozeLog, PowerManager powerManager, WakefulnessLifecycle wakefulnessLifecycle, SysuiStatusBarStateController sysuiStatusBarStateController, DeviceProvisionedController deviceProvisionedController, HeadsUpManagerPhone headsUpManagerPhone, BatteryController batteryController, ScrimController scrimController, Lazy lazy, Lazy lazy2, DozeScrimController dozeScrimController, KeyguardUpdateMonitor keyguardUpdateMonitor, PulseExpansionHandler pulseExpansionHandler, NotificationShadeWindowController notificationShadeWindowController, NotificationWakeUpCoordinator notificationWakeUpCoordinator, AuthController authController, NotificationIconAreaController notificationIconAreaController, DozeInteractor dozeInteractor, BurnInInteractor burnInInteractor) {
        ?? r2 = new OnHeadsUpChangedListener() { // from class: com.android.systemui.statusbar.phone.DozeServiceHost.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.statusbar.phone.DozeServiceHost$$ExternalSyntheticLambda1] */
            @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
            public final void onHeadsUpStateChanged(final NotificationEntry notificationEntry, boolean z) {
                final DozeServiceHost dozeServiceHost = DozeServiceHost.this;
                boolean z2 = ((StatusBarStateControllerImpl) dozeServiceHost.mStatusBarStateController).mIsDozing;
                DozeScrimController dozeScrimController2 = dozeServiceHost.mDozeScrimController;
                if (z2 && z) {
                    notificationEntry.mPulseSupressed = false;
                    ?? r0 = new Runnable() { // from class: com.android.systemui.statusbar.phone.DozeServiceHost$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DozeServiceHost dozeServiceHost2 = DozeServiceHost.this;
                            NotificationEntry notificationEntry2 = notificationEntry;
                            dozeServiceHost2.getClass();
                            notificationEntry2.mPulseSupressed = true;
                            dozeServiceHost2.mNotificationIconAreaController.updateAodNotificationIcons();
                        }
                    };
                    Assert.isMainThread();
                    Iterator it = dozeServiceHost.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((DozeHost.Callback) it.next()).onNotificationAlerted(r0);
                    }
                    if (dozeServiceHost.mPulsing) {
                        DozeScrimController.AnonymousClass3 anonymousClass3 = dozeScrimController2.mPulseOut;
                        Handler handler = dozeScrimController2.mHandler;
                        handler.removeCallbacks(anonymousClass3);
                        handler.removeCallbacks(dozeScrimController2.mPulseOutExtended);
                    }
                }
                if (!z && !(!dozeServiceHost.mHeadsUpManagerPhone.mAlertEntries.isEmpty())) {
                    dozeServiceHost.mPulsePending = false;
                    dozeScrimController2.mPulseOut.run();
                }
            }
        };
        this.mOnHeadsUpChangedListener = r2;
        this.mDozeLog = dozeLog;
        this.mPowerManager = powerManager;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mStatusBarStateController = sysuiStatusBarStateController;
        this.mDeviceProvisionedController = deviceProvisionedController;
        this.mHeadsUpManagerPhone = headsUpManagerPhone;
        this.mBatteryController = batteryController;
        this.mScrimController = scrimController;
        this.mBiometricUnlockControllerLazy = lazy;
        this.mAssistManagerLazy = lazy2;
        this.mDozeScrimController = dozeScrimController;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mPulseExpansionHandler = pulseExpansionHandler;
        this.mNotificationShadeWindowController = notificationShadeWindowController;
        this.mNotificationWakeUpCoordinator = notificationWakeUpCoordinator;
        this.mAuthController = authController;
        this.mNotificationIconAreaController = notificationIconAreaController;
        this.mBurnInInteractor = burnInInteractor;
        headsUpManagerPhone.addListener(r2);
        this.mDozeInteractor = dozeInteractor;
    }

    public final void dozeTimeTick() {
        PluginKeyguardStatusView pluginKeyguardStatusView;
        Lazy lazy;
        Lazy lazy2;
        NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) this.mNotificationPanel;
        notificationPanelViewController.mLockIconViewController.getClass();
        notificationPanelViewController.mKeyguardStatusViewController.dozeTimeTick();
        PluginFaceWidgetManager pluginFaceWidgetManager = (PluginFaceWidgetManager) Dependency.get(PluginFaceWidgetManager.class);
        if (pluginFaceWidgetManager == null) {
            Log.e("NotificationPanelView", "dozeTimeTick() Failed to get PluginFaceWidgetManager");
        } else {
            FaceWidgetContainerWrapper faceWidgetContainerWrapper = pluginFaceWidgetManager.mFaceWidgetContainerWrapper;
            if (faceWidgetContainerWrapper != null && (pluginKeyguardStatusView = faceWidgetContainerWrapper.mPluginKeyguardStatusView) != null) {
                pluginKeyguardStatusView.dozeTimeTick();
            }
        }
        if (notificationPanelViewController.mInterpolatedDarkAmount > 0.0f) {
            notificationPanelViewController.positionClockAndNotifications(false);
        }
        if (LsRune.SUBSCREEN_WATCHFACE && (lazy2 = notificationPanelViewController.mSubScreenManagerLazy) != null) {
            SubScreenManager subScreenManager = (SubScreenManager) lazy2.get();
            if (subScreenManager.mSubScreenPlugin == null) {
                Log.w("SubScreenManager", "dozeTimeTick() no plugin");
            } else {
                Log.d("SubScreenManager", "dozeTimeTick() ");
                subScreenManager.mSubScreenPlugin.dozeTimeTick();
            }
        }
        if (LsRune.COVER_VIRTUAL_DISPLAY && (lazy = notificationPanelViewController.mCoverScreenManagerLazy) != null) {
            CoverScreenManager coverScreenManager = (CoverScreenManager) lazy.get();
            if (coverScreenManager.mCoverPlugin == null) {
                Log.w("CoverScreenManager", "dozeTimeTick() no plugin");
            } else {
                Log.d("CoverScreenManager", "dozeTimeTick() ");
                coverScreenManager.mCoverPlugin.dozeTimeTick();
            }
        }
        this.mAuthController.dozeTimeTick();
        KeyEvent.Callback callback = this.mAmbientIndicationContainer;
        if (callback instanceof DozeReceiver) {
            ((DozeReceiver) callback).dozeTimeTick();
        }
        BurnInInteractor burnInInteractor = this.mBurnInInteractor;
        StateFlowImpl stateFlowImpl = burnInInteractor._dozeTimeTick;
        ((SystemClockImpl) burnInInteractor.systemClock).getClass();
        stateFlowImpl.setValue(Long.valueOf(SystemClock.uptimeMillis()));
    }

    public final void extendPulse(int i) {
        boolean z;
        if (i == 8) {
            this.mScrimController.setWakeLockScreenSensorActive(true);
        }
        DozeScrimController dozeScrimController = this.mDozeScrimController;
        if (dozeScrimController.mPulseCallback != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            HeadsUpManagerPhone headsUpManagerPhone = this.mHeadsUpManagerPhone;
            if (!headsUpManagerPhone.mAlertEntries.isEmpty()) {
                HeadsUpManagerPhone.HeadsUpEntryPhone headsUpEntryPhone = (HeadsUpManagerPhone.HeadsUpEntryPhone) headsUpManagerPhone.getTopHeadsUpEntry();
                if (headsUpEntryPhone != null && !headsUpEntryPhone.extended) {
                    headsUpEntryPhone.extended = true;
                    headsUpEntryPhone.updateEntry(false);
                    return;
                }
                return;
            }
        }
        dozeScrimController.mHandler.removeCallbacks(dozeScrimController.mPulseOut);
    }

    public final void pulseWhileDozing(final DozeUi.AnonymousClass1 anonymousClass1, int i) {
        final boolean z;
        if (i == 5) {
            this.mPowerManager.wakeUp(SystemClock.uptimeMillis(), 4, "com.android.systemui:LONG_PRESS");
            ((AssistManager) this.mAssistManagerLazy.get()).startAssist(new Bundle());
            return;
        }
        if (i == 8) {
            this.mScrimController.setWakeLockScreenSensorActive(true);
        }
        if (i == 8 && this.mWakeLockScreenPerformsAuth) {
            z = true;
        } else {
            z = false;
        }
        this.mPulsing = true;
        DozeHost.PulseCallback pulseCallback = new DozeHost.PulseCallback() { // from class: com.android.systemui.statusbar.phone.DozeServiceHost.1
            @Override // com.android.systemui.doze.DozeHost.PulseCallback
            public final void onPulseFinished() {
                DozeServiceHost dozeServiceHost = DozeServiceHost.this;
                dozeServiceHost.mPulsing = false;
                anonymousClass1.onPulseFinished();
                ((CentralSurfacesImpl) dozeServiceHost.mCentralSurfaces).updateNotificationPanelTouchState();
                dozeServiceHost.mScrimController.setWakeLockScreenSensorActive(false);
                setPulsing(false);
            }

            @Override // com.android.systemui.doze.DozeHost.PulseCallback
            public final void onPulseStarted() {
                anonymousClass1.onPulseStarted();
                ((CentralSurfacesImpl) DozeServiceHost.this.mCentralSurfaces).updateNotificationPanelTouchState();
                setPulsing(true);
            }

            public final void setPulsing(boolean z2) {
                boolean z3;
                DozeServiceHost.this.mStatusBarKeyguardViewManager.setPulsing(z2);
                NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) DozeServiceHost.this.mNotificationPanel;
                notificationPanelViewController.mPulsing = z2;
                DozeParameters dozeParameters = notificationPanelViewController.mDozeParameters;
                if (!dozeParameters.getDisplayNeedsBlanking() && dozeParameters.getAlwaysOn()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    notificationPanelViewController.mAnimateNextPositionUpdate = true;
                }
                if (!notificationPanelViewController.mPulsing && !notificationPanelViewController.mDozing) {
                    notificationPanelViewController.mAnimateNextPositionUpdate = false;
                }
                NotificationStackScrollLayout notificationStackScrollLayout = notificationPanelViewController.mNotificationStackScrollLayoutController.mView;
                if (notificationStackScrollLayout.mPulsing || z2) {
                    notificationStackScrollLayout.mPulsing = z2;
                    notificationStackScrollLayout.mAmbientState.mPulsing = z2;
                    notificationStackScrollLayout.mSwipeHelper.mPulsing = z2;
                    notificationStackScrollLayout.updateNotificationAnimationStates();
                    notificationStackScrollLayout.updateAlgorithmHeightAndPadding();
                    notificationStackScrollLayout.updateContentHeight();
                    notificationStackScrollLayout.requestChildrenUpdate();
                    notificationStackScrollLayout.notifyHeightChangeListener(null, z3);
                }
                notificationPanelViewController.updateKeyguardStatusViewAlignment(true);
                StatusBarStateControllerImpl statusBarStateControllerImpl = (StatusBarStateControllerImpl) DozeServiceHost.this.mStatusBarStateController;
                if (statusBarStateControllerImpl.mPulsing != z2) {
                    statusBarStateControllerImpl.mPulsing = z2;
                    synchronized (statusBarStateControllerImpl.mListeners) {
                        Iterator it = new ArrayList(statusBarStateControllerImpl.mListeners).iterator();
                        while (it.hasNext()) {
                            ((SysuiStatusBarStateController.RankedListener) it.next()).mListener.onPulsingChanged(z2);
                        }
                    }
                }
                DozeServiceHost dozeServiceHost = DozeServiceHost.this;
                dozeServiceHost.mIgnoreTouchWhilePulsing = false;
                KeyguardUpdateMonitor keyguardUpdateMonitor = dozeServiceHost.mKeyguardUpdateMonitor;
                if (keyguardUpdateMonitor != null && z) {
                    keyguardUpdateMonitor.mLogger.logAuthInterruptDetected(z2);
                    if (keyguardUpdateMonitor.mAuthInterruptActive != z2) {
                        keyguardUpdateMonitor.mAuthInterruptActive = z2;
                        keyguardUpdateMonitor.updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD);
                        keyguardUpdateMonitor.requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.WAKE, "onReach");
                    }
                }
                ((CentralSurfacesImpl) DozeServiceHost.this.mCentralSurfaces).updateScrimController();
                DozeServiceHost dozeServiceHost2 = DozeServiceHost.this;
                dozeServiceHost2.mPulseExpansionHandler.mPulsing = z2;
                NotificationWakeUpCoordinator notificationWakeUpCoordinator = dozeServiceHost2.mNotificationWakeUpCoordinator;
                notificationWakeUpCoordinator.pulsing = z2;
                if (z2) {
                    notificationWakeUpCoordinator.updateNotificationVisibility(notificationWakeUpCoordinator.shouldAnimateVisibility(), false);
                }
            }
        };
        DozeScrimController dozeScrimController = this.mDozeScrimController;
        if (dozeScrimController.mDozing && dozeScrimController.mPulseCallback == null) {
            dozeScrimController.mPulseCallback = pulseCallback;
            dozeScrimController.mPulseReason = i;
        } else {
            pulseCallback.onPulseFinished();
            boolean z2 = dozeScrimController.mDozing;
            DozeLog dozeLog = dozeScrimController.mDozeLog;
            if (!z2) {
                dozeLog.tracePulseDropped("pulse - device isn't dozing");
            } else {
                dozeLog.tracePulseDropped("pulse - already has pulse callback mPulseCallback=" + dozeScrimController.mPulseCallback);
            }
        }
        ((CentralSurfacesImpl) this.mCentralSurfaces).updateScrimController();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setAodDimmingScrim(float r3) {
        /*
            r2 = this;
            com.android.systemui.doze.DozeLog r0 = r2.mDozeLog
            r0.traceSetAodDimmingScrim(r3)
            com.android.systemui.statusbar.phone.ScrimController r2 = r2.mScrimController
            float r0 = r2.mInFrontAlpha
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 == 0) goto L30
            com.android.systemui.statusbar.phone.ScrimState r0 = r2.mState
            com.android.systemui.statusbar.phone.ScrimState r1 = com.android.systemui.statusbar.phone.ScrimState.AOD
            if (r0 != r1) goto L20
            com.android.systemui.statusbar.phone.DozeParameters r0 = r2.mDozeParameters
            boolean r0 = r0.getAlwaysOn()
            if (r0 != 0) goto L26
            com.android.systemui.dock.DockManager r0 = r2.mDockManager
            r0.getClass()
        L20:
            com.android.systemui.statusbar.phone.ScrimState r0 = r2.mState
            com.android.systemui.statusbar.phone.ScrimState r1 = com.android.systemui.statusbar.phone.ScrimState.PULSING
            if (r0 != r1) goto L28
        L26:
            r0 = 1
            goto L29
        L28:
            r0 = 0
        L29:
            if (r0 == 0) goto L30
            r2.mInFrontAlpha = r3
            r2.updateScrims()
        L30:
            com.android.systemui.statusbar.phone.ScrimState r2 = com.android.systemui.statusbar.phone.ScrimState.AOD
            r2.mAodFrontScrimAlpha = r3
            com.android.systemui.statusbar.phone.ScrimState r2 = com.android.systemui.statusbar.phone.ScrimState.PULSING
            r2.mAodFrontScrimAlpha = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.DozeServiceHost.setAodDimmingScrim(float):void");
    }

    public final void stopDozing() {
        if (this.mDozingRequested) {
            Log.d("DozeServiceHost", "stopDozing");
            this.mDozingRequested = false;
            updateDozing();
            this.mDozeLog.traceDozing(((StatusBarStateControllerImpl) this.mStatusBarStateController).mIsDozing);
        }
    }

    public final String toString() {
        return "PSB.DozeServiceHost[mCallbacks=" + this.mCallbacks.size() + "]";
    }

    public final void updateDozing() {
        int i;
        final boolean z;
        boolean z2;
        Assert.isMainThread();
        boolean z3 = Rune.SYSUI_UI_THREAD_MONITOR;
        if (z3 && ((LooperSlowLogControllerImpl) this.mLooperSlowLogController).isEnabled()) {
            i = LogUtil.startTime(-1);
        } else {
            i = -1;
        }
        if (this.mDozingRequested && ((StatusBarStateControllerImpl) this.mStatusBarStateController).mState == 1) {
            z = true;
        } else {
            z = false;
        }
        if (((BiometricUnlockController) this.mBiometricUnlockControllerLazy.get()).mMode == 1 || ((KeyguardFastBioUnlockController) Dependency.get(KeyguardFastBioUnlockController.class)).isFastWakeAndUnlockMode()) {
            Log.d("DozeServiceHost", "updateDozing set dozing false (bio unlock)");
            z = false;
        }
        if (z && this.mWakefulnessLifecycle.mWakefulness == 1) {
            Log.d("DozeServiceHost", "updateDozing set dozing false (dozing true, setDozing to false)");
            z = false;
        }
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("updateDozing dozing = ", z, " / dozingRequested = ");
        m.append(this.mDozingRequested);
        m.append(" / state = ");
        m.append(StatusBarState.toString(((StatusBarStateControllerImpl) this.mStatusBarStateController).mState));
        m.append(" mode = ");
        RecyclerView$$ExternalSyntheticOutline0.m(m, ((BiometricUnlockController) this.mBiometricUnlockControllerLazy.get()).mMode, "DozeServiceHost");
        PluginAODManager pluginAODManager = (PluginAODManager) this.mPluginAODManagerLazy.get();
        if (((BiometricUnlockController) this.mBiometricUnlockControllerLazy.get()).mMode == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        pluginAODManager.setIsDozing(z, z2);
        if (z3 && i >= 0) {
            LogUtil.internalLapTime(i, new LongConsumer() { // from class: com.android.systemui.statusbar.phone.DozeServiceHost$$ExternalSyntheticLambda0
                @Override // java.util.function.LongConsumer
                public final void accept(long j) {
                    boolean z4 = z;
                    if (j >= 10) {
                        LogUtil.w("LooperSlow", "updateDozing %s AOD %dms ", Boolean.valueOf(z4), Long.valueOf(j));
                    }
                }
            }, null, null, new Object[0]);
        }
        Iterator it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            ((DozeHost.Callback) it.next()).getClass();
        }
        ((KeyguardRepositoryImpl) this.mDozeInteractor.keyguardRepository)._isDozing.setValue(Boolean.valueOf(z));
        StatusBarStateControllerImpl statusBarStateControllerImpl = (StatusBarStateControllerImpl) this.mStatusBarStateController;
        if (statusBarStateControllerImpl.mIsDozing != z) {
            statusBarStateControllerImpl.mIsDozing = z;
            if (Rune.SYSUI_UI_THREAD_MONITOR && ((LooperSlowLogControllerImpl) statusBarStateControllerImpl.mLooperSlowLogController).isEnabled()) {
                synchronized (statusBarStateControllerImpl.mListeners) {
                    Iterator it2 = new ArrayList(statusBarStateControllerImpl.mListeners).iterator();
                    while (it2.hasNext()) {
                        SysuiStatusBarStateController.RankedListener rankedListener = (SysuiStatusBarStateController.RankedListener) it2.next();
                        int startTime = LogUtil.startTime(-1);
                        rankedListener.mListener.onDozingChanged(z);
                        LogUtil.internalEndTime(startTime, 10, null, "LooperSlow", "setIsDozing " + rankedListener, Arrays.copyOf(new Object[]{new Object[0]}, 1));
                    }
                }
            } else {
                synchronized (statusBarStateControllerImpl.mListeners) {
                    DejankUtils.startDetectingBlockingIpcs("StatusBarStateControllerImpl#setIsDozing");
                    Iterator it3 = new ArrayList(statusBarStateControllerImpl.mListeners).iterator();
                    while (it3.hasNext()) {
                        ((SysuiStatusBarStateController.RankedListener) it3.next()).mListener.onDozingChanged(z);
                    }
                    DejankUtils.stopDetectingBlockingIpcs("StatusBarStateControllerImpl#setIsDozing");
                }
            }
        }
        if (Rune.SYSUI_UI_THREAD_MONITOR && i >= 0) {
            Map map = LogUtil.beginTimes;
            LogUtil.internalEndTime(i, 10, null, "LooperSlow", "updateDozing end", Arrays.copyOf(new Object[0], 0));
        }
    }
}
