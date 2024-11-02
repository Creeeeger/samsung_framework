package com.android.systemui.statusbar.notification.collection.coordinator;

import android.net.Uri;
import android.provider.Settings;
import androidx.collection.ArraySet;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.NotiRune;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.shade.ShadeStateEvents;
import com.android.systemui.statusbar.notification.SubscreenNotificationController;
import com.android.systemui.statusbar.notification.VisibilityLocationProvider;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder$$ExternalSyntheticLambda0;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager;
import com.android.systemui.statusbar.notification.collection.provider.VisualStabilityProvider;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.phone.HeadsUpManagerPhone;
import com.android.systemui.statusbar.phone.HeadsUpManagerPhone$$ExternalSyntheticLambda0;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.util.Assert;
import com.android.systemui.util.ListenerSet;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.concurrency.DelayableExecutor;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VisualStabilityCoordinator implements Coordinator, Dumpable, ShadeStateEvents.ShadeStateEventsListener {
    protected static final long ALLOW_SECTION_CHANGE_TIMEOUT = 500;
    public final DelayableExecutor mDelayableExecutor;
    public boolean mFullyDozed;
    public final HeadsUpManager mHeadsUpManager;
    public boolean mNotifPanelCollapsing;
    public boolean mNotifPanelLaunchingActivity;
    public final AnonymousClass2 mNotifStabilityManager;
    public boolean mPanelExpanded;
    public boolean mPipelineRunAllowed;
    public boolean mPulsing;
    public boolean mReorderingAllowed;
    public final AnonymousClass1 mSettingsCallback;
    public final ShadeStateEvents mShadeStateEvents;
    public final StatusBarStateController mStatusBarStateController;
    public final AnonymousClass3 mStatusBarStateControllerListener;
    public final VisibilityLocationProvider mVisibilityLocationProvider;
    public final VisualStabilityProvider mVisualStabilityProvider;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final AnonymousClass4 mWakefulnessObserver;
    public boolean mSleepy = true;
    public boolean mIsSuppressingPipelineRun = false;
    public boolean mIsSuppressingGroupChange = false;
    public final Set mEntriesWithSuppressedSectionChange = new HashSet();
    public boolean mIsSuppressingEntryReorder = false;
    public final Map mEntriesThatCanChangeSection = new HashMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends NotifStabilityManager {
        public AnonymousClass2(String str) {
            super(str);
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager
        public final boolean isEntryReorderingAllowed(ListEntry listEntry) {
            boolean z;
            VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
            if (visualStabilityCoordinator.mReorderingAllowed) {
                return true;
            }
            NotificationEntry representativeEntry = listEntry.getRepresentativeEntry();
            if (representativeEntry != null && visualStabilityCoordinator.mHeadsUpManager.isAlerting(representativeEntry.mKey) && !visualStabilityCoordinator.mVisibilityLocationProvider.isInVisibleLocation(representativeEntry)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager
        public final boolean isEveryChangeAllowed() {
            return VisualStabilityCoordinator.this.mReorderingAllowed;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager
        public final void isGroupChangeAllowed() {
            VisualStabilityCoordinator.this.mIsSuppressingGroupChange |= false;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager
        public final boolean isGroupPruneAllowed() {
            VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
            boolean z = visualStabilityCoordinator.mReorderingAllowed;
            visualStabilityCoordinator.mIsSuppressingGroupChange |= !z;
            return z;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager
        public final boolean isPipelineRunAllowed() {
            VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
            boolean z = visualStabilityCoordinator.mIsSuppressingPipelineRun;
            boolean z2 = visualStabilityCoordinator.mPipelineRunAllowed;
            visualStabilityCoordinator.mIsSuppressingPipelineRun = z | (!z2);
            return z2;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager
        public final boolean isSectionChangeAllowed(NotificationEntry notificationEntry) {
            boolean z;
            VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
            boolean z2 = true;
            if (!visualStabilityCoordinator.mReorderingAllowed) {
                if (notificationEntry != null && visualStabilityCoordinator.mHeadsUpManager.isAlerting(notificationEntry.mKey) && !visualStabilityCoordinator.mVisibilityLocationProvider.isInVisibleLocation(notificationEntry)) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    if (!((HashMap) visualStabilityCoordinator.mEntriesThatCanChangeSection).containsKey(notificationEntry.mKey)) {
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                ((HashSet) visualStabilityCoordinator.mEntriesWithSuppressedSectionChange).add(notificationEntry.mKey);
            }
            return z2;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager
        public final void onBeginRun() {
            VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
            visualStabilityCoordinator.mIsSuppressingPipelineRun = false;
            visualStabilityCoordinator.mIsSuppressingGroupChange = false;
            ((HashSet) visualStabilityCoordinator.mEntriesWithSuppressedSectionChange).clear();
            visualStabilityCoordinator.mIsSuppressingEntryReorder = false;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager
        public final void onEntryReorderSuppressed() {
            VisualStabilityCoordinator.this.mIsSuppressingEntryReorder = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.util.SettingsHelper$OnChangedCallback, com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator$1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator$3] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator$4] */
    public VisualStabilityCoordinator(DelayableExecutor delayableExecutor, DumpManager dumpManager, HeadsUpManager headsUpManager, ShadeStateEvents shadeStateEvents, StatusBarStateController statusBarStateController, VisibilityLocationProvider visibilityLocationProvider, VisualStabilityProvider visualStabilityProvider, WakefulnessLifecycle wakefulnessLifecycle) {
        Uri[] uriArr = {Settings.Global.getUriFor("notification_sort_order")};
        ?? r1 = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator.1
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (uri.equals(Settings.Global.getUriFor("notification_sort_order"))) {
                    VisualStabilityCoordinator.this.mNotifStabilityManager.invalidateList("TIME_SORT_CHANGED");
                }
            }
        };
        this.mSettingsCallback = r1;
        this.mNotifStabilityManager = new AnonymousClass2("VisualStabilityCoordinator");
        this.mStatusBarStateControllerListener = new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator.3
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onDozeAmountChanged(float f, float f2) {
                boolean z;
                if (f == 1.0f) {
                    z = true;
                } else {
                    z = false;
                }
                VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
                visualStabilityCoordinator.mFullyDozed = z;
                visualStabilityCoordinator.updateAllowedStates();
            }

            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onExpandedChanged(boolean z) {
                VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
                visualStabilityCoordinator.mPanelExpanded = z;
                visualStabilityCoordinator.updateAllowedStates();
            }

            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onPulsingChanged(boolean z) {
                VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
                visualStabilityCoordinator.mPulsing = z;
                visualStabilityCoordinator.updateAllowedStates();
            }
        };
        this.mWakefulnessObserver = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.VisualStabilityCoordinator.4
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedGoingToSleep() {
                VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
                visualStabilityCoordinator.mSleepy = true;
                visualStabilityCoordinator.updateAllowedStates();
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedWakingUp() {
                VisualStabilityCoordinator visualStabilityCoordinator = VisualStabilityCoordinator.this;
                visualStabilityCoordinator.mSleepy = false;
                visualStabilityCoordinator.updateAllowedStates();
            }
        };
        this.mHeadsUpManager = headsUpManager;
        this.mVisibilityLocationProvider = visibilityLocationProvider;
        this.mVisualStabilityProvider = visualStabilityProvider;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mStatusBarStateController = statusBarStateController;
        this.mDelayableExecutor = delayableExecutor;
        this.mShadeStateEvents = shadeStateEvents;
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(r1, uriArr);
        dumpManager.registerDumpable(this);
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        boolean z;
        WakefulnessLifecycle wakefulnessLifecycle = this.mWakefulnessLifecycle;
        wakefulnessLifecycle.addObserver(this.mWakefulnessObserver);
        boolean z2 = true;
        if (wakefulnessLifecycle.mWakefulness == 0) {
            z = true;
        } else {
            z = false;
        }
        this.mSleepy = z;
        StatusBarStateController statusBarStateController = this.mStatusBarStateController;
        if (statusBarStateController.getDozeAmount() != 1.0f) {
            z2 = false;
        }
        this.mFullyDozed = z2;
        statusBarStateController.addCallback(this.mStatusBarStateControllerListener);
        this.mPulsing = statusBarStateController.isPulsing();
        ((ShadeExpansionStateManager) this.mShadeStateEvents).shadeStateEventsListeners.addIfAbsent(this);
        ShadeListBuilder shadeListBuilder = notifPipeline.mShadeListBuilder;
        shadeListBuilder.getClass();
        Assert.isMainThread();
        shadeListBuilder.mPipelineState.requireState();
        NotifStabilityManager notifStabilityManager = shadeListBuilder.mNotifStabilityManager;
        AnonymousClass2 anonymousClass2 = this.mNotifStabilityManager;
        if (notifStabilityManager == null) {
            shadeListBuilder.mNotifStabilityManager = anonymousClass2;
            anonymousClass2.mListener = new ShadeListBuilder$$ExternalSyntheticLambda0(shadeListBuilder, 3);
        } else {
            throw new IllegalStateException("Attempting to set the NotifStabilityManager more than once. There should only be one visual stability manager. Manager is being set by " + shadeListBuilder.mNotifStabilityManager.mName + " and " + anonymousClass2.mName);
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        StringBuilder m = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("pipelineRunAllowed: "), this.mPipelineRunAllowed, printWriter, "  notifPanelCollapsing: "), this.mNotifPanelCollapsing, printWriter, "  launchingNotifActivity: "), this.mNotifPanelLaunchingActivity, printWriter, "reorderingAllowed: "), this.mReorderingAllowed, printWriter, "  sleepy: "), this.mSleepy, printWriter, "  fullyDozed: "), this.mFullyDozed, printWriter, "  panelExpanded: "), this.mPanelExpanded, printWriter, "  pulsing: "), this.mPulsing, printWriter, "isSuppressingPipelineRun: "), this.mIsSuppressingPipelineRun, printWriter, "isSuppressingGroupChange: "), this.mIsSuppressingGroupChange, printWriter, "isSuppressingEntryReorder: "), this.mIsSuppressingEntryReorder, printWriter, "entriesWithSuppressedSectionChange: ");
        Set set = this.mEntriesWithSuppressedSectionChange;
        m.append(((HashSet) set).size());
        printWriter.println(m.toString());
        Iterator it = ((HashSet) set).iterator();
        while (it.hasNext()) {
            FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("  ", (String) it.next(), printWriter);
        }
        StringBuilder sb = new StringBuilder("entriesThatCanChangeSection: ");
        Map map = this.mEntriesThatCanChangeSection;
        sb.append(((HashMap) map).size());
        printWriter.println(sb.toString());
        Iterator it2 = ((HashMap) map).keySet().iterator();
        while (it2.hasNext()) {
            FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("  ", (String) it2.next(), printWriter);
        }
    }

    @Override // com.android.systemui.shade.ShadeStateEvents.ShadeStateEventsListener
    public final void onLaunchingActivityChanged(boolean z) {
        this.mNotifPanelLaunchingActivity = z;
        updateAllowedStates();
    }

    @Override // com.android.systemui.shade.ShadeStateEvents.ShadeStateEventsListener
    public final void onPanelCollapsingChanged(boolean z) {
        this.mNotifPanelCollapsing = z;
        updateAllowedStates();
    }

    public final void updateAllowedStates() {
        boolean z;
        boolean z2;
        if (!this.mNotifPanelCollapsing && !this.mNotifPanelLaunchingActivity) {
            z = false;
        } else {
            z = true;
        }
        this.mPipelineRunAllowed = !z;
        if ((NotiRune.NOTI_SUBSCREEN_ALL && ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel.isSubScreen()) || (((this.mFullyDozed && this.mSleepy) || !this.mPanelExpanded) && !this.mPulsing)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mReorderingAllowed = z2;
        boolean z3 = this.mPipelineRunAllowed;
        AnonymousClass2 anonymousClass2 = this.mNotifStabilityManager;
        if (z3 && this.mIsSuppressingPipelineRun) {
            anonymousClass2.invalidateList("pipeline run suppression ended");
        } else if (z2) {
            boolean z4 = this.mIsSuppressingGroupChange;
            Set set = this.mEntriesWithSuppressedSectionChange;
            if (z4 || (!((HashSet) set).isEmpty()) || this.mIsSuppressingEntryReorder) {
                StringBuilder sb = new StringBuilder("reorder suppression ended for group=");
                sb.append(this.mIsSuppressingGroupChange);
                sb.append(" section=");
                sb.append(!((HashSet) set).isEmpty());
                sb.append(" sort=");
                sb.append(this.mIsSuppressingEntryReorder);
                anonymousClass2.invalidateList(sb.toString());
            }
        }
        boolean z5 = this.mReorderingAllowed;
        VisualStabilityProvider visualStabilityProvider = this.mVisualStabilityProvider;
        if (visualStabilityProvider.isReorderingAllowed != z5) {
            visualStabilityProvider.isReorderingAllowed = z5;
            if (z5) {
                ListenerSet listenerSet = visualStabilityProvider.allListeners;
                Iterator it = listenerSet.iterator();
                while (it.hasNext()) {
                    HeadsUpManagerPhone$$ExternalSyntheticLambda0 headsUpManagerPhone$$ExternalSyntheticLambda0 = (HeadsUpManagerPhone$$ExternalSyntheticLambda0) it.next();
                    if (visualStabilityProvider.temporaryListeners.remove(headsUpManagerPhone$$ExternalSyntheticLambda0)) {
                        listenerSet.remove(headsUpManagerPhone$$ExternalSyntheticLambda0);
                    }
                    HeadsUpManagerPhone headsUpManagerPhone = headsUpManagerPhone$$ExternalSyntheticLambda0.f$0;
                    ((NotificationStackScrollLayout) headsUpManagerPhone.mAnimationStateHandler.f$0).mHeadsUpGoingAwayAnimationsAllowed = false;
                    ArraySet arraySet = headsUpManagerPhone.mEntriesToRemoveWhenReorderingAllowed;
                    arraySet.getClass();
                    ArraySet.ElementIterator elementIterator = new ArraySet.ElementIterator();
                    while (elementIterator.hasNext()) {
                        NotificationEntry notificationEntry = (NotificationEntry) elementIterator.next();
                        if (headsUpManagerPhone.isAlerting(notificationEntry.mKey)) {
                            headsUpManagerPhone.removeAlertEntry(notificationEntry.mKey);
                        }
                    }
                    arraySet.clear();
                    ((NotificationStackScrollLayout) headsUpManagerPhone.mAnimationStateHandler.f$0).mHeadsUpGoingAwayAnimationsAllowed = true;
                }
            }
        }
    }
}
