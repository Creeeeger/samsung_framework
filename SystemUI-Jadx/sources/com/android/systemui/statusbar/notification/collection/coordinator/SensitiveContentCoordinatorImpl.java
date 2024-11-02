package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.NotiRune;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.notification.DynamicPrivacyController;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeRenderListListener;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.Invalidator;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.SettingsHelper;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SensitiveContentCoordinatorImpl extends Invalidator implements SensitiveContentCoordinator, DynamicPrivacyController.Listener, OnBeforeRenderListListener {
    public final DynamicPrivacyController dynamicPrivacyController;
    public final KeyguardStateController keyguardStateController;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1 keyguardUpdateMonitorCallback;
    public final NotificationLockscreenUserManager lockscreenUserManager;
    public boolean needUpdateNext;
    public final SettingsHelper settingsHelper;
    public final StatusBarStateController statusBarStateController;

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.statusbar.notification.collection.coordinator.SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1] */
    public SensitiveContentCoordinatorImpl(DynamicPrivacyController dynamicPrivacyController, NotificationLockscreenUserManager notificationLockscreenUserManager, KeyguardUpdateMonitor keyguardUpdateMonitor, StatusBarStateController statusBarStateController, KeyguardStateController keyguardStateController, SettingsHelper settingsHelper) {
        super("SensitiveContentInvalidator");
        this.dynamicPrivacyController = dynamicPrivacyController;
        this.lockscreenUserManager = notificationLockscreenUserManager;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.statusBarStateController = statusBarStateController;
        this.keyguardStateController = keyguardStateController;
        this.settingsHelper = settingsHelper;
        this.keyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.SensitiveContentCoordinatorImpl$keyguardUpdateMonitorCallback$1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardVisibilityChanged(boolean z) {
                if (!z) {
                    SensitiveContentCoordinatorImpl sensitiveContentCoordinatorImpl = SensitiveContentCoordinatorImpl.this;
                    if (((KeyguardStateControllerImpl) sensitiveContentCoordinatorImpl.keyguardStateController).mKeyguardGoingAway) {
                        sensitiveContentCoordinatorImpl.needUpdateNext = true;
                        sensitiveContentCoordinatorImpl.invalidateList("onKeyguardVisibilityChanged");
                    }
                }
            }
        };
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        this.dynamicPrivacyController.mListeners.add(this);
        notifPipeline.addOnBeforeRenderListListener(this);
        notifPipeline.addPreRenderInvalidator(this);
        this.keyguardUpdateMonitor.registerCallback(this.keyguardUpdateMonitorCallback);
    }

    @Override // com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeRenderListListener
    public final void onBeforeRenderList(List list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6 = NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.keyguardUpdateMonitor;
        if (z6) {
            keyguardUpdateMonitor.setHasRedactedNotifications(false);
        }
        if (!((KeyguardStateControllerImpl) this.keyguardStateController).mKeyguardGoingAway || this.needUpdateNext) {
            if (this.statusBarStateController.getState() == 1 && keyguardUpdateMonitor.getUserUnlockedWithBiometricAndIsBypassing(KeyguardUpdateMonitor.getCurrentUser())) {
                return;
            }
            this.needUpdateNext = false;
            NotificationLockscreenUserManagerImpl notificationLockscreenUserManagerImpl = (NotificationLockscreenUserManagerImpl) this.lockscreenUserManager;
            int i = notificationLockscreenUserManagerImpl.mCurrentUserId;
            boolean isLockscreenPublicMode = notificationLockscreenUserManagerImpl.isLockscreenPublicMode(i);
            if (isLockscreenPublicMode && !notificationLockscreenUserManagerImpl.userAllowsPrivateNotificationsInPublic(i)) {
                z = true;
            } else {
                z = false;
            }
            boolean isDynamicallyUnlocked = this.dynamicPrivacyController.isDynamicallyUnlocked();
            if (z6) {
                z2 = this.settingsHelper.isAllowPrivateNotificationsWhenUnsecure(i);
            } else {
                z2 = false;
            }
            FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.flatMap(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(list), SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1.INSTANCE), new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.SensitiveContentCoordinatorImpl$onBeforeRenderList$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(((NotificationEntry) obj).rowExists());
                }
            }));
            while (filteringSequence$iterator$1.hasNext()) {
                NotificationEntry notificationEntry = (NotificationEntry) filteringSequence$iterator$1.next();
                int identifier = notificationEntry.mSbn.getUser().getIdentifier();
                if (!isLockscreenPublicMode && !notificationLockscreenUserManagerImpl.isLockscreenPublicMode(identifier)) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE && z2) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (!z4) {
                    if (z3) {
                        if (!isDynamicallyUnlocked) {
                            z3 = true;
                        } else if (identifier != i && identifier != -1) {
                            z3 = notificationLockscreenUserManagerImpl.mUsersWithSeparateWorkChallenge.get(identifier, false);
                        }
                    }
                    z3 = false;
                }
                boolean needsRedaction = notificationLockscreenUserManagerImpl.needsRedaction(notificationEntry);
                if (z3 && needsRedaction) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH) {
                    notificationEntry.mUserPublic = z3;
                }
                ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
                int intrinsicHeight = expandableNotificationRow.getIntrinsicHeight();
                expandableNotificationRow.mSensitive = z5;
                expandableNotificationRow.mSensitiveHiddenInGeneral = z;
                if (intrinsicHeight != expandableNotificationRow.getIntrinsicHeight()) {
                    FeatureFlags featureFlags = expandableNotificationRow.mFeatureFlags;
                    Flags flags = Flags.INSTANCE;
                    featureFlags.getClass();
                    expandableNotificationRow.notifyHeightChanged(false);
                }
                if (z5 != notificationEntry.mSensitive) {
                    notificationEntry.mSensitive = z5;
                    Iterator it = notificationEntry.mOnSensitivityChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((NotificationEntry.OnSensitivityChangedListener) it.next()).onSensitivityChanged(notificationEntry);
                    }
                }
                if (NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE && !keyguardUpdateMonitor.hasRedactedNotifications() && needsRedaction) {
                    keyguardUpdateMonitor.setHasRedactedNotifications(needsRedaction);
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.DynamicPrivacyController.Listener
    public final void onDynamicPrivacyChanged() {
        invalidateList("onDynamicPrivacyChanged");
    }
}
