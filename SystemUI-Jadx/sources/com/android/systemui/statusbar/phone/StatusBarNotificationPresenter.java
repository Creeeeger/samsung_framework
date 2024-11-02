package com.android.systemui.statusbar.phone;

import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.session.MediaController;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.vr.IVrManager;
import android.service.vr.IVrStateCallbacks;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.statusbar.IStatusBarService;
import com.android.keyguard.KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.InitController;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.shade.NotificationShadeWindowView;
import com.android.systemui.shade.QuickSettingsController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.KeyguardIndicationController;
import com.android.systemui.statusbar.LockscreenShadeTransitionController;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.NotificationMediaManager;
import com.android.systemui.statusbar.NotificationPresenter;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.RemoteInputController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.notification.AboveShelfObserver;
import com.android.systemui.statusbar.notification.DynamicPrivacyController;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.RemoteInputCoordinator;
import com.android.systemui.statusbar.notification.collection.coordinator.RemoteInputCoordinator$setRemoteInputController$1;
import com.android.systemui.statusbar.notification.collection.coordinator.RemoteInputCoordinatorKt;
import com.android.systemui.statusbar.notification.collection.coordinator.ShadeEventCoordinator;
import com.android.systemui.statusbar.notification.collection.inflation.NotificationRowBinderImpl;
import com.android.systemui.statusbar.notification.collection.render.NotifShadeEventSource;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProviderImpl;
import com.android.systemui.statusbar.notification.logging.NotificationLogger;
import com.android.systemui.statusbar.notification.row.NotificationGutsManager;
import com.android.systemui.statusbar.notification.stack.NotificationListContainer;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.util.settings.SecureSettingsImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarNotificationPresenter implements NotificationPresenter, NotificationRowBinderImpl.BindRowCallback, CommandQueue.Callbacks {
    public final AboveShelfObserver mAboveShelfObserver;
    public final ActivityStarter mActivityStarter;
    public final IStatusBarService mBarService;
    public final CentralSurfaces mCentralSurfaces;
    public final CommandQueue mCommandQueue;
    public final DozeScrimController mDozeScrimController;
    public final DynamicPrivacyController mDynamicPrivacyController;
    public final NotificationGutsManager mGutsManager;
    public final HeadsUpManagerPhone mHeadsUpManager;
    public final AnonymousClass4 mInterruptSuppressor;
    public final KeyguardIndicationController mKeyguardIndicationController;
    public final KeyguardStateController mKeyguardStateController;
    public final NotificationLockscreenUserManager mLockscreenUserManager;
    public final NotificationMediaManager mMediaManager;
    public final NotificationListContainer mNotifListContainer;
    public final NotifShadeEventSource mNotifShadeEventSource;
    public final ShadeViewController mNotificationPanel;
    public final NotificationShadeWindowController mNotificationShadeWindowController;
    public final AnonymousClass3 mOnSettingsClickListener;
    public final QuickSettingsController mQsController;
    public final LockscreenShadeTransitionController mShadeTransitionController;
    public final SysuiStatusBarStateController mStatusBarStateController;
    public boolean mVrMode;
    public final AnonymousClass1 mVrStateCallbacks;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 {
        public AnonymousClass3() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 {
        public AnonymousClass4() {
        }
    }

    public StatusBarNotificationPresenter(Context context, ShadeViewController shadeViewController, QuickSettingsController quickSettingsController, HeadsUpManagerPhone headsUpManagerPhone, NotificationShadeWindowView notificationShadeWindowView, ActivityStarter activityStarter, NotificationStackScrollLayoutController notificationStackScrollLayoutController, DozeScrimController dozeScrimController, NotificationShadeWindowController notificationShadeWindowController, DynamicPrivacyController dynamicPrivacyController, KeyguardStateController keyguardStateController, KeyguardIndicationController keyguardIndicationController, CentralSurfaces centralSurfaces, LockscreenShadeTransitionController lockscreenShadeTransitionController, CommandQueue commandQueue, NotificationLockscreenUserManager notificationLockscreenUserManager, SysuiStatusBarStateController sysuiStatusBarStateController, NotifShadeEventSource notifShadeEventSource, NotificationMediaManager notificationMediaManager, NotificationGutsManager notificationGutsManager, LockscreenGestureLogger lockscreenGestureLogger, InitController initController, final NotificationInterruptStateProvider notificationInterruptStateProvider, final NotificationRemoteInputManager notificationRemoteInputManager, NotifPipelineFlags notifPipelineFlags, NotificationRemoteInputManager.Callback callback, NotificationListContainer notificationListContainer) {
        IVrStateCallbacks iVrStateCallbacks = new IVrStateCallbacks.Stub() { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationPresenter.1
            public final void onVrStateChanged(boolean z) {
                StatusBarNotificationPresenter.this.mVrMode = z;
            }
        };
        this.mVrStateCallbacks = iVrStateCallbacks;
        new Object(this) { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationPresenter.2
        };
        this.mOnSettingsClickListener = new AnonymousClass3();
        this.mInterruptSuppressor = new AnonymousClass4();
        this.mActivityStarter = activityStarter;
        this.mKeyguardStateController = keyguardStateController;
        this.mNotificationPanel = shadeViewController;
        this.mQsController = quickSettingsController;
        this.mHeadsUpManager = headsUpManagerPhone;
        this.mDynamicPrivacyController = dynamicPrivacyController;
        this.mKeyguardIndicationController = keyguardIndicationController;
        this.mCentralSurfaces = centralSurfaces;
        this.mShadeTransitionController = lockscreenShadeTransitionController;
        this.mCommandQueue = commandQueue;
        this.mLockscreenUserManager = notificationLockscreenUserManager;
        this.mStatusBarStateController = sysuiStatusBarStateController;
        this.mNotifShadeEventSource = notifShadeEventSource;
        this.mMediaManager = notificationMediaManager;
        this.mGutsManager = notificationGutsManager;
        AboveShelfObserver aboveShelfObserver = new AboveShelfObserver(notificationStackScrollLayoutController.mView);
        this.mAboveShelfObserver = aboveShelfObserver;
        this.mNotificationShadeWindowController = notificationShadeWindowController;
        aboveShelfObserver.mListener = (AboveShelfObserver.HasViewAboveShelfChangedListener) notificationShadeWindowView.findViewById(R.id.notification_container_parent);
        this.mDozeScrimController = dozeScrimController;
        this.mBarService = IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar"));
        this.mNotifListContainer = notificationListContainer;
        IVrManager asInterface = IVrManager.Stub.asInterface(ServiceManager.getService("vrmanager"));
        if (asInterface != null) {
            try {
                asInterface.registerListener(iVrStateCallbacks);
            } catch (RemoteException e) {
                Slog.e("StatusBarNotificationPresenter", "Failed to register VR mode state listener: " + e);
            }
        }
        NotificationStackScrollLayoutController notificationStackScrollLayoutController2 = NotificationPanelViewController.this.mNotificationStackScrollLayoutController;
        notificationStackScrollLayoutController2.getClass();
        NotificationStackScrollLayoutController.AnonymousClass15 anonymousClass15 = new NotificationStackScrollLayoutController.AnonymousClass15();
        notificationRemoteInputManager.mCallback = callback;
        notificationRemoteInputManager.mRemoteInputController = new RemoteInputController(anonymousClass15, notificationRemoteInputManager.mRemoteInputUriController, notificationRemoteInputManager.mRemoteInputControllerLogger);
        RemoteInputCoordinator remoteInputCoordinator = notificationRemoteInputManager.mRemoteInputListener;
        if (remoteInputCoordinator != null) {
            remoteInputCoordinator.mSmartReplyController.mCallback = new RemoteInputCoordinator$setRemoteInputController$1(remoteInputCoordinator);
        }
        ArrayList arrayList = (ArrayList) notificationRemoteInputManager.mControllerCallbacks;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            RemoteInputController.Callback callback2 = (RemoteInputController.Callback) it.next();
            RemoteInputController remoteInputController = notificationRemoteInputManager.mRemoteInputController;
            remoteInputController.getClass();
            Objects.requireNonNull(callback2);
            remoteInputController.mCallbacks.add(callback2);
        }
        arrayList.clear();
        RemoteInputController remoteInputController2 = notificationRemoteInputManager.mRemoteInputController;
        RemoteInputController.Callback anonymousClass2 = new RemoteInputController.Callback() { // from class: com.android.systemui.statusbar.NotificationRemoteInputManager.2
            public AnonymousClass2() {
            }

            @Override // com.android.systemui.statusbar.RemoteInputController.Callback
            public final void onRemoteInputSent(NotificationEntry notificationEntry) {
                boolean z;
                boolean booleanValue;
                NotificationRemoteInputManager notificationRemoteInputManager2 = NotificationRemoteInputManager.this;
                RemoteInputCoordinator remoteInputCoordinator2 = notificationRemoteInputManager2.mRemoteInputListener;
                if (remoteInputCoordinator2 != null) {
                    remoteInputCoordinator2.getClass();
                    booleanValue = ((Boolean) RemoteInputCoordinatorKt.DEBUG$delegate.getValue()).booleanValue();
                    String str = notificationEntry.mKey;
                    if (booleanValue) {
                        KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("onRemoteInputSent(entry=", str, ")", "RemoteInputCoordinator");
                    }
                    remoteInputCoordinator2.mRemoteInputHistoryExtender.endLifetimeExtension(str);
                    remoteInputCoordinator2.mSmartReplyHistoryExtender.endLifetimeExtension(str);
                    remoteInputCoordinator2.mRemoteInputActiveExtender.endLifetimeExtensionAfterDelay(str, 500L);
                }
                try {
                    notificationRemoteInputManager2.mBarService.onNotificationDirectReplied(notificationEntry.mSbn.getKey());
                    NotificationEntry.EditedSuggestionInfo editedSuggestionInfo = notificationEntry.editedSuggestionInfo;
                    if (editedSuggestionInfo != null) {
                        if (!TextUtils.equals(notificationEntry.remoteInputText, editedSuggestionInfo.originalText)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        IStatusBarService iStatusBarService = notificationRemoteInputManager2.mBarService;
                        String key = notificationEntry.mSbn.getKey();
                        NotificationEntry.EditedSuggestionInfo editedSuggestionInfo2 = notificationEntry.editedSuggestionInfo;
                        iStatusBarService.onNotificationSmartReplySent(key, editedSuggestionInfo2.index, editedSuggestionInfo2.originalText, NotificationLogger.getNotificationLocation(notificationEntry).toMetricsEventEnum(), z);
                    }
                } catch (RemoteException unused) {
                }
            }
        };
        remoteInputController2.getClass();
        remoteInputController2.mCallbacks.add(anonymousClass2);
        Runnable runnable = new Runnable() { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                boolean z2;
                final StatusBarNotificationPresenter statusBarNotificationPresenter = StatusBarNotificationPresenter.this;
                NotificationInterruptStateProvider notificationInterruptStateProvider2 = notificationInterruptStateProvider;
                statusBarNotificationPresenter.mKeyguardIndicationController.init();
                final int i = 0;
                Runnable runnable2 = new Runnable() { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                StatusBarNotificationPresenter statusBarNotificationPresenter2 = statusBarNotificationPresenter;
                                if (!((NotificationPanelViewController) statusBarNotificationPresenter2.mNotificationPanel).mTracking && !statusBarNotificationPresenter2.mQsController.mExpanded) {
                                    SysuiStatusBarStateController sysuiStatusBarStateController2 = statusBarNotificationPresenter2.mStatusBarStateController;
                                    if (((StatusBarStateControllerImpl) sysuiStatusBarStateController2).mState == 2 && !statusBarNotificationPresenter2.isCollapsing()) {
                                        sysuiStatusBarStateController2.setState$1(1);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            default:
                                StatusBarNotificationPresenter statusBarNotificationPresenter3 = statusBarNotificationPresenter;
                                if (NotificationStackScrollLayoutController.this.mView.mPulsing && !(!statusBarNotificationPresenter3.mHeadsUpManager.mAlertEntries.isEmpty())) {
                                    statusBarNotificationPresenter3.mDozeScrimController.mPulseOut.run();
                                    return;
                                }
                                return;
                        }
                    }
                };
                ShadeEventCoordinator shadeEventCoordinator = (ShadeEventCoordinator) statusBarNotificationPresenter.mNotifShadeEventSource;
                final int i2 = 1;
                if (shadeEventCoordinator.mShadeEmptiedCallback == null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    shadeEventCoordinator.mShadeEmptiedCallback = runnable2;
                    Runnable runnable3 = new Runnable() { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (i2) {
                                case 0:
                                    StatusBarNotificationPresenter statusBarNotificationPresenter2 = statusBarNotificationPresenter;
                                    if (!((NotificationPanelViewController) statusBarNotificationPresenter2.mNotificationPanel).mTracking && !statusBarNotificationPresenter2.mQsController.mExpanded) {
                                        SysuiStatusBarStateController sysuiStatusBarStateController2 = statusBarNotificationPresenter2.mStatusBarStateController;
                                        if (((StatusBarStateControllerImpl) sysuiStatusBarStateController2).mState == 2 && !statusBarNotificationPresenter2.isCollapsing()) {
                                            sysuiStatusBarStateController2.setState$1(1);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                default:
                                    StatusBarNotificationPresenter statusBarNotificationPresenter3 = statusBarNotificationPresenter;
                                    if (NotificationStackScrollLayoutController.this.mView.mPulsing && !(!statusBarNotificationPresenter3.mHeadsUpManager.mAlertEntries.isEmpty())) {
                                        statusBarNotificationPresenter3.mDozeScrimController.mPulseOut.run();
                                        return;
                                    }
                                    return;
                            }
                        }
                    };
                    if (shadeEventCoordinator.mNotifRemovedByUserCallback == null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        shadeEventCoordinator.mNotifRemovedByUserCallback = runnable3;
                        ((ArrayList) ((NotificationInterruptStateProviderImpl) notificationInterruptStateProvider2).mSuppressors).add(statusBarNotificationPresenter.mInterruptSuppressor);
                        NotificationLockscreenUserManagerImpl notificationLockscreenUserManagerImpl = (NotificationLockscreenUserManagerImpl) statusBarNotificationPresenter.mLockscreenUserManager;
                        notificationLockscreenUserManagerImpl.mPresenter = statusBarNotificationPresenter;
                        Handler handler = notificationLockscreenUserManagerImpl.mMainHandler;
                        notificationLockscreenUserManagerImpl.mLockscreenSettingsObserver = new ContentObserver(handler) { // from class: com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl.4
                            public AnonymousClass4(Handler handler2) {
                                super(handler2);
                            }

                            @Override // android.database.ContentObserver
                            public final void onChange(boolean z3) {
                                NotificationLockscreenUserManagerImpl.this.mUsersAllowingPrivateNotifications.clear();
                                NotificationLockscreenUserManagerImpl.this.mUsersAllowingNotifications.clear();
                                NotificationLockscreenUserManagerImpl.this.updateLockscreenNotificationSetting();
                                Iterator it2 = NotificationLockscreenUserManagerImpl.this.mNotifStateChangedListeners.iterator();
                                while (it2.hasNext()) {
                                    ((NotificationLockscreenUserManager.NotificationStateChangedListener) it2.next()).onNotificationStateChanged();
                                }
                            }
                        };
                        notificationLockscreenUserManagerImpl.mSettingsObserver = new ContentObserver(handler2) { // from class: com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl.5
                            public AnonymousClass5(Handler handler2) {
                                super(handler2);
                            }

                            @Override // android.database.ContentObserver
                            public final void onChange(boolean z3) {
                                NotificationLockscreenUserManagerImpl.this.updateLockscreenNotificationSetting();
                                ((DeviceProvisionedControllerImpl) NotificationLockscreenUserManagerImpl.this.mDeviceProvisionedController).isDeviceProvisioned();
                            }
                        };
                        Context context2 = notificationLockscreenUserManagerImpl.mContext;
                        ContentResolver contentResolver = context2.getContentResolver();
                        ((SecureSettingsImpl) notificationLockscreenUserManagerImpl.mSecureSettings).getClass();
                        contentResolver.registerContentObserver(Settings.Secure.getUriFor("lock_screen_show_notifications"), false, notificationLockscreenUserManagerImpl.mLockscreenSettingsObserver, -1);
                        context2.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("lock_screen_allow_private_notifications"), true, notificationLockscreenUserManagerImpl.mLockscreenSettingsObserver, -1);
                        context2.getContentResolver().registerContentObserver(Settings.Global.getUriFor("zen_mode"), false, notificationLockscreenUserManagerImpl.mSettingsObserver);
                        IntentFilter intentFilter = new IntentFilter("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED");
                        UserHandle userHandle = UserHandle.ALL;
                        BroadcastDispatcher broadcastDispatcher = notificationLockscreenUserManagerImpl.mBroadcastDispatcher;
                        broadcastDispatcher.registerReceiver(notificationLockscreenUserManagerImpl.mAllUsersReceiver, intentFilter, null, userHandle);
                        IntentFilter intentFilter2 = new IntentFilter();
                        intentFilter2.addAction("android.intent.action.USER_ADDED");
                        intentFilter2.addAction("android.intent.action.USER_REMOVED");
                        intentFilter2.addAction("android.intent.action.USER_UNLOCKED");
                        intentFilter2.addAction("android.intent.action.MANAGED_PROFILE_AVAILABLE");
                        intentFilter2.addAction("android.intent.action.MANAGED_PROFILE_UNAVAILABLE");
                        NotificationLockscreenUserManagerImpl.AnonymousClass2 anonymousClass22 = notificationLockscreenUserManagerImpl.mBaseBroadcastReceiver;
                        broadcastDispatcher.registerReceiver(anonymousClass22, intentFilter2, null, UserHandle.ALL);
                        IntentFilter intentFilter3 = new IntentFilter();
                        intentFilter3.addAction("com.android.systemui.statusbar.work_challenge_unlocked_notification_action");
                        notificationLockscreenUserManagerImpl.mContext.registerReceiver(anonymousClass22, intentFilter3, "com.android.systemui.permission.SELF", null, 2);
                        Executor handlerExecutor = new HandlerExecutor(handler2);
                        UserTrackerImpl userTrackerImpl = (UserTrackerImpl) notificationLockscreenUserManagerImpl.mUserTracker;
                        userTrackerImpl.addCallback(notificationLockscreenUserManagerImpl.mUserChangedCallback, handlerExecutor);
                        notificationLockscreenUserManagerImpl.mCurrentUserId = userTrackerImpl.getUserId();
                        notificationLockscreenUserManagerImpl.updateCurrentProfilesCache();
                        notificationLockscreenUserManagerImpl.mSettingsObserver.onChange(false);
                        notificationLockscreenUserManagerImpl.mLockscreenSettingsObserver.onChange(false);
                        NotificationGutsManager notificationGutsManager2 = statusBarNotificationPresenter.mGutsManager;
                        notificationGutsManager2.mPresenter = statusBarNotificationPresenter;
                        notificationGutsManager2.mListContainer = statusBarNotificationPresenter.mNotifListContainer;
                        notificationGutsManager2.mOnSettingsClickListener = statusBarNotificationPresenter.mOnSettingsClickListener;
                        statusBarNotificationPresenter.onUserSwitched(notificationLockscreenUserManagerImpl.mCurrentUserId);
                        return;
                    }
                    throw new IllegalStateException("mNotifRemovedByUserCallback already set".toString());
                }
                throw new IllegalStateException("mShadeEmptiedCallback already set".toString());
            }
        };
        if (!initController.mTasksExecuted) {
            initController.mTasks.add(runnable);
            return;
        }
        throw new IllegalStateException("post init tasks have already been executed!");
    }

    public final boolean isCollapsing() {
        if (!((NotificationPanelViewController) this.mNotificationPanel).isCollapsing() && !((NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController).mCurrentState.launchingActivityFromNotification) {
            return false;
        }
        return true;
    }

    public final boolean isPresenterFullyCollapsed() {
        return ((NotificationPanelViewController) this.mNotificationPanel).isFullyCollapsed();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0093, code lost:
    
        if (r13 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009c, code lost:
    
        r15.mLeaveOpenOnKeyguardHide = true;
        r4.dismissKeyguardThenExecute(new com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda2(r6), null, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009a, code lost:
    
        if (r13.isInLockedDownShade() != false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onExpandClicked(com.android.systemui.statusbar.notification.collection.NotificationEntry r14, boolean r15) {
        /*
            r13 = this;
            com.android.systemui.statusbar.phone.HeadsUpManagerPhone r0 = r13.mHeadsUpManager
            r0.getClass()
            java.lang.String r1 = r14.mKey
            com.android.systemui.statusbar.policy.HeadsUpManager$HeadsUpEntry r0 = r0.getHeadsUpEntry(r1)
            if (r0 == 0) goto L16
            boolean r1 = r14.isRowPinned()
            if (r1 == 0) goto L16
            r0.setExpanded(r15)
        L16:
            long r0 = android.os.SystemClock.uptimeMillis()
            com.android.systemui.statusbar.phone.CentralSurfaces r2 = r13.mCentralSurfaces
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r2 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r2
            java.lang.String r3 = "NOTIFICATION_CLICK"
            r4 = 4
            r2.wakeUpIfDozing(r0, r3, r4)
            if (r15 == 0) goto Lcb
            com.android.systemui.statusbar.SysuiStatusBarStateController r15 = r13.mStatusBarStateController
            com.android.systemui.statusbar.StatusBarStateControllerImpl r15 = (com.android.systemui.statusbar.StatusBarStateControllerImpl) r15
            int r0 = r15.mState
            r1 = 1
            r2 = 0
            r3 = 0
            com.android.systemui.plugins.ActivityStarter r4 = r13.mActivityStarter
            if (r0 != r1) goto L4b
            boolean r0 = r14.mSensitive
            if (r0 == 0) goto L43
            r15.mLeaveOpenOnKeyguardHide = r1
            com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda2 r13 = new com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda2
            r13.<init>(r2)
            r4.dismissKeyguardThenExecute(r13, r3, r2)
            goto La6
        L43:
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r15 = r14.row
            com.android.systemui.statusbar.LockscreenShadeTransitionController r13 = r13.mShadeTransitionController
            r13.goToLockedShade(r15, r1)
            goto La6
        L4b:
            boolean r5 = r14.mSensitive
            r6 = 2
            if (r5 == 0) goto L5d
            if (r0 != r6) goto L5d
            r15.mLeaveOpenOnKeyguardHide = r1
            com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda2 r13 = new com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda2
            r13.<init>(r1)
            r4.dismissKeyguardThenExecute(r13, r3, r2)
            goto La6
        L5d:
            if (r5 == 0) goto La6
            boolean r0 = com.android.systemui.NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE
            com.android.systemui.statusbar.notification.DynamicPrivacyController r13 = r13.mDynamicPrivacyController
            if (r0 == 0) goto L96
            com.android.systemui.statusbar.policy.KeyguardStateController r0 = r13.mKeyguardStateController
            com.android.systemui.statusbar.policy.KeyguardStateControllerImpl r0 = (com.android.systemui.statusbar.policy.KeyguardStateControllerImpl) r0
            boolean r5 = r0.mShowing
            if (r5 == 0) goto L92
            boolean r0 = r0.mSecure
            if (r0 != 0) goto L72
            goto L92
        L72:
            com.android.systemui.plugins.statusbar.StatusBarStateController r0 = r13.mStateController
            int r0 = r0.getState()
            if (r0 == 0) goto L7d
            if (r0 == r6) goto L7d
            goto L92
        L7d:
            com.android.systemui.statusbar.NotificationLockscreenUserManager r0 = r13.mLockscreenUserManager
            com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl r0 = (com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl) r0
            int r5 = r0.mCurrentUserId
            boolean r0 = r0.userAllowsNotificationsInPublic(r5)
            if (r0 == 0) goto L92
            boolean r13 = r13.isDynamicallyUnlocked()
            if (r13 == 0) goto L90
            goto L92
        L90:
            r13 = r1
            goto L93
        L92:
            r13 = r2
        L93:
            if (r13 == 0) goto La6
            goto L9c
        L96:
            boolean r13 = r13.isInLockedDownShade()
            if (r13 == 0) goto La6
        L9c:
            r15.mLeaveOpenOnKeyguardHide = r1
            com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda2 r13 = new com.android.systemui.statusbar.phone.StatusBarNotificationPresenter$$ExternalSyntheticLambda2
            r13.<init>(r6)
            r4.dismissKeyguardThenExecute(r13, r3, r2)
        La6:
            java.lang.String r7 = "QPN001"
            java.lang.String r8 = "QPNE0008"
            java.lang.String r9 = "type"
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r13 = r14.row
            if (r13 == 0) goto Lb6
            boolean r13 = r13.mIsSummaryWithChildren
            if (r13 == 0) goto Lb6
            goto Lb7
        Lb6:
            r1 = r2
        Lb7:
            if (r1 == 0) goto Lbc
            java.lang.String r13 = "grouped"
            goto Lbf
        Lbc:
            java.lang.String r13 = "single"
        Lbf:
            r10 = r13
            java.lang.String r11 = "app"
            android.service.notification.StatusBarNotification r13 = r14.mSbn
            java.lang.String r12 = r13.getPackageName()
            com.android.systemui.util.SystemUIAnalytics.sendEventCDLog(r7, r8, r9, r10, r11, r12)
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.StatusBarNotificationPresenter.onExpandClicked(com.android.systemui.statusbar.notification.collection.NotificationEntry, boolean):void");
    }

    public final void onUserSwitched(int i) {
        this.mHeadsUpManager.mUser = i;
        this.mCommandQueue.animateCollapsePanels();
        NotificationMediaManager notificationMediaManager = this.mMediaManager;
        notificationMediaManager.mMediaNotificationKey = null;
        notificationMediaManager.mMediaArtworkProcessor.getClass();
        notificationMediaManager.mMediaMetadata = null;
        MediaController mediaController = notificationMediaManager.mMediaController;
        if (mediaController != null) {
            mediaController.unregisterCallback(notificationMediaManager.mMediaListener);
        }
        notificationMediaManager.mMediaController = null;
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
        if (centralSurfacesImpl.mLockscreenWallpaper != null && !centralSurfacesImpl.mWallpaperManager.isLockscreenLiveWallpaperEnabled()) {
            LockscreenWallpaper lockscreenWallpaper = centralSurfacesImpl.mLockscreenWallpaper;
            lockscreenWallpaper.assertLockscreenLiveWallpaperNotEnabled();
            if (i != lockscreenWallpaper.mCurrentUserId) {
                lockscreenWallpaper.mCached = false;
                lockscreenWallpaper.mCurrentUserId = i;
            }
        }
        centralSurfacesImpl.mScrimController.getClass();
        if (centralSurfacesImpl.mWallpaperSupported) {
            centralSurfacesImpl.mWallpaperChangedReceiver.onReceive(centralSurfacesImpl.mContext, null);
        }
        notificationMediaManager.updateMediaMetaData(true, false);
    }
}
