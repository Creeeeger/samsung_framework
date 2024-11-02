package com.android.systemui.dreams;

import android.app.AlarmManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.text.format.DateFormat;
import com.android.systemui.R;
import com.android.systemui.dreams.DreamOverlayStateController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyController;
import com.android.systemui.statusbar.policy.IndividualSensorPrivacyControllerImpl;
import com.android.systemui.statusbar.policy.NextAlarmController;
import com.android.systemui.statusbar.policy.NextAlarmControllerImpl;
import com.android.systemui.statusbar.policy.ZenModeController;
import com.android.systemui.statusbar.policy.ZenModeControllerImpl;
import com.android.systemui.statusbar.window.StatusBarWindowStateController;
import com.android.systemui.statusbar.window.StatusBarWindowStateListener;
import com.android.systemui.touch.TouchInsetManager;
import com.android.systemui.touch.TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;
import com.android.systemui.util.ViewController;
import com.android.systemui.util.time.DateFormatUtil;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DreamOverlayStatusBarViewController extends ViewController {
    public final AlarmManager mAlarmManager;
    public final ConnectivityManager mConnectivityManager;
    public final DateFormatUtil mDateFormatUtil;
    public final Optional mDreamOverlayNotificationCountProvider;
    public final AnonymousClass2 mDreamOverlayStateCallback;
    public final DreamOverlayStateController mDreamOverlayStateController;
    public boolean mEntryAnimationsFinished;
    public final List mExtraStatusBarItems;
    public boolean mIsAttached;
    public final Executor mMainExecutor;
    public final AnonymousClass1 mNetworkCallback;
    public final NetworkRequest mNetworkRequest;
    public final DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2 mNextAlarmCallback;
    public final NextAlarmController mNextAlarmController;
    public final DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3 mNotificationCountCallback;
    public final Resources mResources;
    public final DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1 mSensorCallback;
    public final IndividualSensorPrivacyController mSensorPrivacyController;
    public final DreamOverlayStatusBarItemsProvider mStatusBarItemsProvider;
    public final DreamOverlayStatusBarViewController$$ExternalSyntheticLambda4 mStatusBarItemsProviderCallback;
    public final StatusBarWindowStateController mStatusBarWindowStateController;
    public final TouchInsetManager.TouchInsetSession mTouchInsetSession;
    public final UserTracker mUserTracker;
    public final AnonymousClass3 mZenModeCallback;
    public final ZenModeController mZenModeController;

    /* JADX WARN: Type inference failed for: r2v10, types: [com.android.systemui.dreams.DreamOverlayStatusBarViewController$3] */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.android.systemui.dreams.DreamOverlayStatusBarViewController$1] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.android.systemui.dreams.DreamOverlayStatusBarViewController$2] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.android.systemui.dreams.DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.android.systemui.dreams.DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2] */
    public DreamOverlayStatusBarViewController(DreamOverlayStatusBarView dreamOverlayStatusBarView, Resources resources, Executor executor, ConnectivityManager connectivityManager, TouchInsetManager.TouchInsetSession touchInsetSession, AlarmManager alarmManager, NextAlarmController nextAlarmController, DateFormatUtil dateFormatUtil, IndividualSensorPrivacyController individualSensorPrivacyController, Optional<DreamOverlayNotificationCountProvider> optional, ZenModeController zenModeController, StatusBarWindowStateController statusBarWindowStateController, DreamOverlayStatusBarItemsProvider dreamOverlayStatusBarItemsProvider, DreamOverlayStateController dreamOverlayStateController, UserTracker userTracker) {
        super(dreamOverlayStatusBarView);
        this.mExtraStatusBarItems = new ArrayList();
        this.mEntryAnimationsFinished = false;
        this.mNetworkRequest = new NetworkRequest.Builder().clearCapabilities().addTransportType(1).build();
        this.mNetworkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.android.systemui.dreams.DreamOverlayStatusBarViewController.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                DreamOverlayStatusBarViewController.this.updateWifiUnavailableStatusIcon();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                DreamOverlayStatusBarViewController.this.updateWifiUnavailableStatusIcon();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                DreamOverlayStatusBarViewController.this.updateWifiUnavailableStatusIcon();
            }
        };
        this.mDreamOverlayStateCallback = new DreamOverlayStateController.Callback() { // from class: com.android.systemui.dreams.DreamOverlayStatusBarViewController.2
            @Override // com.android.systemui.dreams.DreamOverlayStateController.Callback
            public final void onStateChanged() {
                DreamOverlayStatusBarViewController dreamOverlayStatusBarViewController = DreamOverlayStatusBarViewController.this;
                dreamOverlayStatusBarViewController.mEntryAnimationsFinished = dreamOverlayStatusBarViewController.mDreamOverlayStateController.containsState(4);
                dreamOverlayStatusBarViewController.updateVisibility();
                dreamOverlayStatusBarViewController.showIcon(7, R.string.assistant_attention_content_description, dreamOverlayStatusBarViewController.mDreamOverlayStateController.containsState(16));
            }
        };
        this.mSensorCallback = new IndividualSensorPrivacyController.Callback() { // from class: com.android.systemui.dreams.DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1
            @Override // com.android.systemui.statusbar.policy.IndividualSensorPrivacyController.Callback
            public final void onSensorBlockedChanged(int i, boolean z) {
                DreamOverlayStatusBarViewController.this.updateMicCameraBlockedStatusIcon();
            }
        };
        this.mNextAlarmCallback = new NextAlarmController.NextAlarmChangeCallback() { // from class: com.android.systemui.dreams.DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2
            @Override // com.android.systemui.statusbar.policy.NextAlarmController.NextAlarmChangeCallback
            public final void onNextAlarmChanged(AlarmManager.AlarmClockInfo alarmClockInfo) {
                DreamOverlayStatusBarViewController.this.updateAlarmStatusIcon();
            }
        };
        this.mZenModeCallback = new ZenModeController.Callback() { // from class: com.android.systemui.dreams.DreamOverlayStatusBarViewController.3
            @Override // com.android.systemui.statusbar.policy.ZenModeController.Callback
            public final void onZenChanged(int i) {
                boolean z;
                DreamOverlayStatusBarViewController dreamOverlayStatusBarViewController = DreamOverlayStatusBarViewController.this;
                if (((ZenModeControllerImpl) dreamOverlayStatusBarViewController.mZenModeController).mZenMode != 0) {
                    z = true;
                } else {
                    z = false;
                }
                dreamOverlayStatusBarViewController.showIcon(6, R.string.priority_mode_dream_overlay_content_description, z);
            }
        };
        this.mNotificationCountCallback = new DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3(this);
        this.mStatusBarItemsProviderCallback = new DreamOverlayStatusBarViewController$$ExternalSyntheticLambda4(this);
        this.mResources = resources;
        this.mMainExecutor = executor;
        this.mConnectivityManager = connectivityManager;
        this.mTouchInsetSession = touchInsetSession;
        this.mAlarmManager = alarmManager;
        this.mNextAlarmController = nextAlarmController;
        this.mDateFormatUtil = dateFormatUtil;
        this.mSensorPrivacyController = individualSensorPrivacyController;
        this.mDreamOverlayNotificationCountProvider = optional;
        this.mStatusBarWindowStateController = statusBarWindowStateController;
        this.mStatusBarItemsProvider = dreamOverlayStatusBarItemsProvider;
        this.mZenModeController = zenModeController;
        this.mDreamOverlayStateController = dreamOverlayStateController;
        this.mUserTracker = userTracker;
        ((HashSet) statusBarWindowStateController.listeners).add(new StatusBarWindowStateListener() { // from class: com.android.systemui.dreams.DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5
            @Override // com.android.systemui.statusbar.window.StatusBarWindowStateListener
            public final void onStatusBarWindowStateChanged(int i) {
                final DreamOverlayStatusBarViewController dreamOverlayStatusBarViewController = DreamOverlayStatusBarViewController.this;
                if (dreamOverlayStatusBarViewController.mIsAttached && dreamOverlayStatusBarViewController.mEntryAnimationsFinished) {
                    dreamOverlayStatusBarViewController.mMainExecutor.execute(new Runnable() { // from class: com.android.systemui.dreams.DreamOverlayStatusBarViewController$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            DreamOverlayStatusBarViewController.this.updateVisibility();
                        }
                    });
                }
            }
        });
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        boolean z;
        this.mIsAttached = true;
        this.mConnectivityManager.registerNetworkCallback(this.mNetworkRequest, this.mNetworkCallback);
        updateWifiUnavailableStatusIcon();
        ((NextAlarmControllerImpl) this.mNextAlarmController).addCallback(this.mNextAlarmCallback);
        updateAlarmStatusIcon();
        ((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).addCallback(this.mSensorCallback);
        updateMicCameraBlockedStatusIcon();
        ZenModeController zenModeController = this.mZenModeController;
        ((ZenModeControllerImpl) zenModeController).addCallback(this.mZenModeCallback);
        if (((ZenModeControllerImpl) zenModeController).mZenMode != 0) {
            z = true;
        } else {
            z = false;
        }
        showIcon(6, R.string.priority_mode_dream_overlay_content_description, z);
        this.mDreamOverlayNotificationCountProvider.ifPresent(new DreamOverlayStatusBarViewController$$ExternalSyntheticLambda0(this, 0));
        DreamOverlayStatusBarItemsProvider dreamOverlayStatusBarItemsProvider = this.mStatusBarItemsProvider;
        dreamOverlayStatusBarItemsProvider.getClass();
        dreamOverlayStatusBarItemsProvider.mExecutor.execute(new DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0(dreamOverlayStatusBarItemsProvider, this.mStatusBarItemsProviderCallback, 1));
        this.mDreamOverlayStateController.addCallback((DreamOverlayStateController.Callback) this.mDreamOverlayStateCallback);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        ((ZenModeControllerImpl) this.mZenModeController).removeCallback(this.mZenModeCallback);
        ((IndividualSensorPrivacyControllerImpl) this.mSensorPrivacyController).removeCallback(this.mSensorCallback);
        ((NextAlarmControllerImpl) this.mNextAlarmController).removeCallback(this.mNextAlarmCallback);
        this.mConnectivityManager.unregisterNetworkCallback(this.mNetworkCallback);
        this.mDreamOverlayNotificationCountProvider.ifPresent(new DreamOverlayStatusBarViewController$$ExternalSyntheticLambda0(this, 1));
        DreamOverlayStatusBarItemsProvider dreamOverlayStatusBarItemsProvider = this.mStatusBarItemsProvider;
        dreamOverlayStatusBarItemsProvider.getClass();
        dreamOverlayStatusBarItemsProvider.mExecutor.execute(new DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0(dreamOverlayStatusBarItemsProvider, this.mStatusBarItemsProviderCallback, 0));
        ((DreamOverlayStatusBarView) this.mView).mExtraSystemStatusViewGroup.removeAllViews();
        DreamOverlayStateController dreamOverlayStateController = this.mDreamOverlayStateController;
        dreamOverlayStateController.getClass();
        dreamOverlayStateController.modifyState(1, 32);
        dreamOverlayStateController.removeCallback((DreamOverlayStateController.Callback) this.mDreamOverlayStateCallback);
        TouchInsetManager.TouchInsetSession touchInsetSession = this.mTouchInsetSession;
        touchInsetSession.getClass();
        touchInsetSession.mExecutor.execute(new TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1(touchInsetSession, 1));
        this.mIsAttached = false;
    }

    public final void showIcon(int i, int i2, boolean z) {
        this.mMainExecutor.execute(new DreamOverlayStatusBarViewController$$ExternalSyntheticLambda6(this, i, z, this.mResources.getString(i2)));
    }

    public final void updateAlarmStatusIcon() {
        boolean z;
        String str;
        String str2;
        AlarmManager.AlarmClockInfo nextAlarmClock = this.mAlarmManager.getNextAlarmClock(((UserTrackerImpl) this.mUserTracker).getUserId());
        if (nextAlarmClock != null && nextAlarmClock.getTriggerTime() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            DateFormatUtil dateFormatUtil = this.mDateFormatUtil;
            if (DateFormat.is24HourFormat(dateFormatUtil.mContext, ((UserTrackerImpl) dateFormatUtil.mUserTracker).getUserId())) {
                str2 = "EHm";
            } else {
                str2 = "Ehma";
            }
            str = this.mResources.getString(R.string.accessibility_quick_settings_alarm, DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), str2), nextAlarmClock.getTriggerTime()).toString());
        } else {
            str = null;
        }
        this.mMainExecutor.execute(new DreamOverlayStatusBarViewController$$ExternalSyntheticLambda6(this, 2, z, str));
    }

    public final void updateMicCameraBlockedStatusIcon() {
        boolean z;
        boolean z2;
        IndividualSensorPrivacyController individualSensorPrivacyController = this.mSensorPrivacyController;
        boolean z3 = true;
        boolean isSensorBlocked = ((IndividualSensorPrivacyControllerImpl) individualSensorPrivacyController).isSensorBlocked(1);
        boolean isSensorBlocked2 = ((IndividualSensorPrivacyControllerImpl) individualSensorPrivacyController).isSensorBlocked(2);
        if (!isSensorBlocked && isSensorBlocked2) {
            z = true;
        } else {
            z = false;
        }
        showIcon(3, R.string.camera_blocked_dream_overlay_content_description, z);
        if (isSensorBlocked && !isSensorBlocked2) {
            z2 = true;
        } else {
            z2 = false;
        }
        showIcon(4, R.string.microphone_blocked_dream_overlay_content_description, z2);
        if (!isSensorBlocked || !isSensorBlocked2) {
            z3 = false;
        }
        showIcon(5, R.string.camera_and_microphone_blocked_dream_overlay_content_description, z3);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateVisibility() {
        /*
            r6 = this;
            android.view.View r0 = r6.mView
            com.android.systemui.dreams.DreamOverlayStatusBarView r0 = (com.android.systemui.dreams.DreamOverlayStatusBarView) r0
            int r0 = r0.getVisibility()
            com.android.systemui.dreams.DreamOverlayStateController r1 = r6.mDreamOverlayStateController
            r2 = 2
            boolean r3 = r1.containsState(r2)
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L20
            com.android.systemui.statusbar.window.StatusBarWindowStateController r3 = r6.mStatusBarWindowStateController
            int r3 = r3.windowState
            if (r3 != 0) goto L1b
            r3 = r4
            goto L1c
        L1b:
            r3 = r5
        L1c:
            if (r3 != 0) goto L20
            r3 = r4
            goto L21
        L20:
            r3 = r5
        L21:
            if (r3 == 0) goto L25
            r3 = r5
            goto L26
        L25:
            r3 = 4
        L26:
            if (r0 != r3) goto L29
            return
        L29:
            android.view.View r6 = r6.mView
            com.android.systemui.dreams.DreamOverlayStatusBarView r6 = (com.android.systemui.dreams.DreamOverlayStatusBarView) r6
            r6.setVisibility(r3)
            if (r3 != 0) goto L33
            r5 = r4
        L33:
            if (r5 == 0) goto L36
            goto L37
        L36:
            r2 = r4
        L37:
            r6 = 32
            r1.modifyState(r2, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.dreams.DreamOverlayStatusBarViewController.updateVisibility():void");
    }

    public final void updateWifiUnavailableStatusIcon() {
        boolean z;
        ConnectivityManager connectivityManager = this.mConnectivityManager;
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities != null && networkCapabilities.hasTransport(1)) {
            z = true;
        } else {
            z = false;
        }
        showIcon(1, R.string.wifi_unavailable_dream_overlay_content_description, !z);
    }
}
