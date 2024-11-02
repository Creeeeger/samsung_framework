package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Region;
import android.os.Handler;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.util.Pools;
import android.view.View;
import androidx.collection.ArraySet;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.policy.SystemBarUtils;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.biometrics.SideFpsController$$ExternalSyntheticOutline0;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.shade.ShadeFullExpansionListener;
import com.android.systemui.shade.panelpolicy.HeadsUpManagerPhoneAgent;
import com.android.systemui.statusbar.AlertingNotificationManager;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.provider.VisualStabilityProvider;
import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManager;
import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManagerImpl;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda3;
import com.android.systemui.statusbar.phone.HeadsUpManagerPhone;
import com.android.systemui.statusbar.policy.AccessibilityManagerWrapper;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.policy.HeadsUpManagerLogger;
import com.android.systemui.statusbar.policy.OnHeadsUpChangedListener;
import com.android.systemui.util.ListenerSet;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HeadsUpManagerPhone extends HeadsUpManager implements Dumpable, OnHeadsUpChangedListener {
    public NotificationStackScrollLayoutController$$ExternalSyntheticLambda3 mAnimationStateHandler;
    public final KeyguardBypassController mBypassController;
    public final HashSet mEntriesToRemoveAfterExpand;
    public final ArraySet mEntriesToRemoveWhenReorderingAllowed;
    public final AnonymousClass1 mEntryPool;
    final int mExtensionTime;
    public final GroupMembershipManager mGroupMembershipManager;
    public boolean mHeadsUpGoingAway;
    public int mHeadsUpInset;
    public final List mHeadsUpPhoneListeners;
    public boolean mIsExpanded;
    public final HeadsUpManagerPhone$$ExternalSyntheticLambda0 mOnReorderingAllowedListener;
    public boolean mReleaseOnExpandFinish;
    public int mStatusBarState;
    public final AnonymousClass3 mStatusBarStateListener;
    public final HashSet mSwipedOutKeys;
    public final Region mTouchableRegion;
    public boolean mTrackingHeadsUp;
    public final VisualStabilityProvider mVisualStabilityProvider;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.HeadsUpManagerPhone$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements Pools.Pool {
        public final Stack mPoolObjects = new Stack();

        public AnonymousClass1() {
        }

        public final Object acquire() {
            if (!this.mPoolObjects.isEmpty()) {
                return (HeadsUpEntryPhone) this.mPoolObjects.pop();
            }
            return new HeadsUpEntryPhone();
        }

        public final boolean release(Object obj) {
            this.mPoolObjects.push((HeadsUpEntryPhone) obj);
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HeadsUpEntryPhone extends HeadsUpManager.HeadsUpEntry {
        public boolean extended;
        public boolean mGutsShownPinned;

        public HeadsUpEntryPhone() {
            super();
        }

        @Override // com.android.systemui.statusbar.policy.HeadsUpManager.HeadsUpEntry, com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public final long calculateFinishTime() {
            int i;
            long calculateFinishTime = super.calculateFinishTime();
            if (this.extended) {
                i = HeadsUpManagerPhone.this.mExtensionTime;
            } else {
                i = 0;
            }
            return calculateFinishTime + i;
        }

        @Override // com.android.systemui.statusbar.policy.HeadsUpManager.HeadsUpEntry, com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public final boolean isSticky() {
            if (!super.isSticky() && !this.mGutsShownPinned) {
                return false;
            }
            return true;
        }

        @Override // com.android.systemui.statusbar.policy.HeadsUpManager.HeadsUpEntry, com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public final void reset() {
            super.reset();
            this.mGutsShownPinned = false;
            this.extended = false;
        }

        @Override // com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public final void setEntry(final NotificationEntry notificationEntry) {
            setEntry(notificationEntry, new Runnable() { // from class: com.android.systemui.statusbar.phone.HeadsUpManagerPhone$HeadsUpEntryPhone$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    HeadsUpManagerPhone.HeadsUpEntryPhone headsUpEntryPhone = HeadsUpManagerPhone.HeadsUpEntryPhone.this;
                    NotificationEntry notificationEntry2 = notificationEntry;
                    if (!HeadsUpManagerPhone.this.mVisualStabilityProvider.isReorderingAllowed) {
                        ExpandableNotificationRow expandableNotificationRow = notificationEntry2.row;
                        if (expandableNotificationRow != null && expandableNotificationRow.showingPulsing()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            HeadsUpManagerPhone.this.mEntriesToRemoveWhenReorderingAllowed.add(notificationEntry2);
                            HeadsUpManagerPhone headsUpManagerPhone = HeadsUpManagerPhone.this;
                            VisualStabilityProvider visualStabilityProvider = headsUpManagerPhone.mVisualStabilityProvider;
                            ListenerSet listenerSet = visualStabilityProvider.allListeners;
                            HeadsUpManagerPhone$$ExternalSyntheticLambda0 headsUpManagerPhone$$ExternalSyntheticLambda0 = headsUpManagerPhone.mOnReorderingAllowedListener;
                            if (listenerSet.addIfAbsent(headsUpManagerPhone$$ExternalSyntheticLambda0)) {
                                visualStabilityProvider.temporaryListeners.add(headsUpManagerPhone$$ExternalSyntheticLambda0);
                                return;
                            }
                            return;
                        }
                    }
                    HeadsUpManagerPhone headsUpManagerPhone2 = HeadsUpManagerPhone.this;
                    if (headsUpManagerPhone2.mTrackingHeadsUp) {
                        headsUpManagerPhone2.mEntriesToRemoveAfterExpand.add(notificationEntry2);
                    } else {
                        headsUpManagerPhone2.removeAlertEntry(notificationEntry2.mKey);
                    }
                }
            });
        }

        @Override // com.android.systemui.statusbar.policy.HeadsUpManager.HeadsUpEntry
        public final void setExpanded(boolean z) {
            if (this.expanded == z) {
                return;
            }
            this.expanded = z;
            if (z) {
                removeAutoRemovalCallbacks();
            } else {
                updateEntry(false);
            }
        }

        @Override // com.android.systemui.statusbar.AlertingNotificationManager.AlertEntry
        public final void updateEntry(boolean z) {
            super.updateEntry(z);
            if (HeadsUpManagerPhone.this.mEntriesToRemoveAfterExpand.contains(this.mEntry)) {
                HeadsUpManagerPhone.this.mEntriesToRemoveAfterExpand.remove(this.mEntry);
            }
            if (HeadsUpManagerPhone.this.mEntriesToRemoveWhenReorderingAllowed.contains(this.mEntry)) {
                HeadsUpManagerPhone.this.mEntriesToRemoveWhenReorderingAllowed.remove(this.mEntry);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.systemui.statusbar.phone.HeadsUpManagerPhone$3, com.android.systemui.plugins.statusbar.StatusBarStateController$StateListener] */
    public HeadsUpManagerPhone(Context context, HeadsUpManagerLogger headsUpManagerLogger, StatusBarStateController statusBarStateController, KeyguardBypassController keyguardBypassController, GroupMembershipManager groupMembershipManager, VisualStabilityProvider visualStabilityProvider, ConfigurationController configurationController, Handler handler, AccessibilityManagerWrapper accessibilityManagerWrapper, UiEventLogger uiEventLogger, ShadeExpansionStateManager shadeExpansionStateManager) {
        super(context, headsUpManagerLogger, handler, accessibilityManagerWrapper, uiEventLogger);
        this.mHeadsUpPhoneListeners = new ArrayList();
        this.mSwipedOutKeys = new HashSet();
        this.mEntriesToRemoveAfterExpand = new HashSet();
        this.mEntriesToRemoveWhenReorderingAllowed = new ArraySet();
        this.mTouchableRegion = new Region();
        this.mEntryPool = new AnonymousClass1();
        this.mOnReorderingAllowedListener = new HeadsUpManagerPhone$$ExternalSyntheticLambda0(this);
        ?? r0 = new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.phone.HeadsUpManagerPhone.3
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onDozingChanged(boolean z) {
                if (!z) {
                    Iterator it = HeadsUpManagerPhone.this.mAlertEntries.values().iterator();
                    while (it.hasNext()) {
                        ((AlertingNotificationManager.AlertEntry) it.next()).updateEntry(true);
                    }
                }
            }

            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onStateChanged(int i) {
                boolean z;
                HeadsUpManagerPhone headsUpManagerPhone = HeadsUpManagerPhone.this;
                boolean z2 = false;
                if (headsUpManagerPhone.mStatusBarState == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (i == 1) {
                    z2 = true;
                }
                headsUpManagerPhone.mStatusBarState = i;
                if (z && !z2 && headsUpManagerPhone.mBypassController.getBypassEnabled()) {
                    ArrayList arrayList = new ArrayList();
                    for (AlertingNotificationManager.AlertEntry alertEntry : headsUpManagerPhone.mAlertEntries.values()) {
                        NotificationEntry notificationEntry = alertEntry.mEntry;
                        if (notificationEntry != null && notificationEntry.isBubble() && !alertEntry.isSticky()) {
                            arrayList.add(alertEntry.mEntry.mKey);
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        headsUpManagerPhone.removeAlertEntry((String) it.next());
                    }
                }
            }
        };
        this.mStatusBarStateListener = r0;
        this.mExtensionTime = this.mContext.getResources().getInteger(R.integer.ambient_notification_extension_time);
        statusBarStateController.addCallback(r0);
        this.mBypassController = keyguardBypassController;
        this.mGroupMembershipManager = groupMembershipManager;
        this.mVisualStabilityProvider = visualStabilityProvider;
        updateResources();
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.phone.HeadsUpManagerPhone.2
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onDensityOrFontScaleChanged() {
                HeadsUpManagerPhone.this.updateResources();
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onThemeChanged() {
                HeadsUpManagerPhone.this.updateResources();
            }
        });
        shadeExpansionStateManager.addFullExpansionListener(new ShadeFullExpansionListener() { // from class: com.android.systemui.statusbar.phone.HeadsUpManagerPhone$$ExternalSyntheticLambda1
            @Override // com.android.systemui.shade.ShadeFullExpansionListener
            public final void onShadeExpansionFullyChanged(boolean z) {
                Boolean valueOf = Boolean.valueOf(z);
                HeadsUpManagerPhone headsUpManagerPhone = HeadsUpManagerPhone.this;
                headsUpManagerPhone.getClass();
                if (valueOf.booleanValue() != headsUpManagerPhone.mIsExpanded) {
                    headsUpManagerPhone.mIsExpanded = valueOf.booleanValue();
                    if (valueOf.booleanValue()) {
                        headsUpManagerPhone.mHeadsUpGoingAway = false;
                    }
                }
            }
        });
        new HeadsUpManagerPhoneAgent(new Supplier() { // from class: com.android.systemui.statusbar.phone.HeadsUpManagerPhone$$ExternalSyntheticLambda2
            @Override // java.util.function.Supplier
            public final Object get() {
                return HeadsUpManagerPhone.this.getTouchableRegion();
            }
        });
    }

    @Override // com.android.systemui.statusbar.policy.HeadsUpManager, com.android.systemui.statusbar.AlertingNotificationManager
    public final boolean canRemoveImmediately(String str) {
        HashSet hashSet = this.mSwipedOutKeys;
        if (hashSet.contains(str)) {
            hashSet.remove(str);
            return true;
        }
        HeadsUpEntryPhone headsUpEntryPhone = (HeadsUpEntryPhone) this.mAlertEntries.get(str);
        HeadsUpEntryPhone headsUpEntryPhone2 = (HeadsUpEntryPhone) getTopHeadsUpEntry();
        if (headsUpEntryPhone == null || headsUpEntryPhone != headsUpEntryPhone2 || super.canRemoveImmediately(str)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("HeadsUpManagerPhone state:");
        printWriter.print("  mTouchAcceptanceDelay=");
        printWriter.println(this.mTouchAcceptanceDelay);
        printWriter.print("  mSnoozeLengthMs=");
        printWriter.println(this.mSnoozeLengthMs);
        printWriter.print("  now=");
        this.mClock.getClass();
        printWriter.println(SystemClock.elapsedRealtime());
        printWriter.print("  mUser=");
        printWriter.println(this.mUser);
        for (AlertingNotificationManager.AlertEntry alertEntry : this.mAlertEntries.values()) {
            printWriter.print("  HeadsUpEntry=");
            printWriter.println(alertEntry.mEntry);
        }
        ArrayMap arrayMap = this.mSnoozedPackages;
        int size = arrayMap.size();
        SideFpsController$$ExternalSyntheticOutline0.m("  snoozed packages: ", size, printWriter);
        for (int i = 0; i < size; i++) {
            printWriter.print("    ");
            printWriter.print(arrayMap.valueAt(i));
            printWriter.print(", ");
            printWriter.println((String) arrayMap.keyAt(i));
        }
        printWriter.print("  mBarState=");
        printWriter.println(this.mStatusBarState);
        printWriter.print("  mTouchableRegion=");
        printWriter.println(this.mTouchableRegion);
    }

    public final Region getTouchableRegion() {
        NotificationEntry notificationEntry;
        NotificationEntry groupSummary;
        HeadsUpManager.HeadsUpEntry topHeadsUpEntry = getTopHeadsUpEntry();
        if (topHeadsUpEntry != null) {
            notificationEntry = topHeadsUpEntry.mEntry;
        } else {
            notificationEntry = null;
        }
        if (!this.mHasPinnedNotification || notificationEntry == null) {
            return null;
        }
        if (notificationEntry.isChildInGroup() && (groupSummary = ((GroupMembershipManagerImpl) this.mGroupMembershipManager).getGroupSummary(notificationEntry)) != null) {
            notificationEntry = groupSummary;
        }
        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
        int[] iArr = new int[2];
        expandableNotificationRow.getLocationOnScreen(iArr);
        int i = 0;
        int i2 = iArr[0];
        int width = expandableNotificationRow.getWidth() + i2;
        int intrinsicHeight = expandableNotificationRow.getIntrinsicHeight();
        boolean z = true;
        int i3 = iArr[1];
        if (i3 > this.mHeadsUpInset) {
            z = false;
        }
        if (!z) {
            i = i3;
        }
        Region region = this.mTouchableRegion;
        region.set(i2, i, width, i3 + intrinsicHeight);
        return region;
    }

    @Override // com.android.systemui.statusbar.policy.HeadsUpManager
    public final boolean isTrackingHeadsUp() {
        return this.mTrackingHeadsUp;
    }

    @Override // com.android.systemui.statusbar.policy.HeadsUpManager, com.android.systemui.statusbar.AlertingNotificationManager
    public final void onAlertEntryRemoved(AlertingNotificationManager.AlertEntry alertEntry) {
        super.onAlertEntryRemoved(alertEntry);
        this.mEntryPool.release((HeadsUpEntryPhone) alertEntry);
    }

    public final void setGutsShown(NotificationEntry notificationEntry, boolean z) {
        HeadsUpManager.HeadsUpEntry headsUpEntry = getHeadsUpEntry(notificationEntry.mKey);
        if (!(headsUpEntry instanceof HeadsUpEntryPhone)) {
            return;
        }
        HeadsUpEntryPhone headsUpEntryPhone = (HeadsUpEntryPhone) headsUpEntry;
        if ((notificationEntry.isRowPinned() || !z) && headsUpEntryPhone.mGutsShownPinned != z) {
            headsUpEntryPhone.mGutsShownPinned = z;
            if (z) {
                headsUpEntryPhone.removeAutoRemovalCallbacks();
            } else {
                headsUpEntryPhone.updateEntry(false);
            }
        }
    }

    public final void setHeadsUpGoingAway(boolean z) {
        if (z != this.mHeadsUpGoingAway) {
            this.mHeadsUpGoingAway = z;
            Iterator it = this.mHeadsUpPhoneListeners.iterator();
            while (it.hasNext()) {
                final StatusBarTouchableRegionManager statusBarTouchableRegionManager = ((StatusBarTouchableRegionManager$$ExternalSyntheticLambda0) it.next()).f$0;
                if (!z) {
                    View view = statusBarTouchableRegionManager.mNotificationPanelView;
                    if (view != null) {
                        statusBarTouchableRegionManager.mForceCollapsedUntilLayout = true;
                        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.systemui.statusbar.phone.StatusBarTouchableRegionManager.3
                            @Override // android.view.View.OnLayoutChangeListener
                            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                                if (!StatusBarTouchableRegionManager.this.mNotificationPanelView.isVisibleToUser()) {
                                    StatusBarTouchableRegionManager.this.mNotificationPanelView.removeOnLayoutChangeListener(this);
                                    StatusBarTouchableRegionManager statusBarTouchableRegionManager2 = StatusBarTouchableRegionManager.this;
                                    statusBarTouchableRegionManager2.mForceCollapsedUntilLayout = false;
                                    statusBarTouchableRegionManager2.updateTouchableRegion();
                                }
                            }
                        });
                    }
                } else {
                    statusBarTouchableRegionManager.updateTouchableRegion();
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.policy.HeadsUpManager
    public final boolean shouldHeadsUpBecomePinned(NotificationEntry notificationEntry) {
        boolean z;
        boolean z2;
        if (this.mStatusBarState == 0 && !this.mIsExpanded) {
            z = true;
        } else {
            z = false;
        }
        if (this.mBypassController.getBypassEnabled()) {
            if (this.mStatusBarState == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            z |= z2;
        }
        if (!z && !super.shouldHeadsUpBecomePinned(notificationEntry)) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.policy.HeadsUpManager
    public final void snooze() {
        super.snooze();
        this.mReleaseOnExpandFinish = true;
    }

    public final void updateResources() {
        Context context = this.mContext;
        Resources resources = context.getResources();
        this.mHeadsUpInset = resources.getDimensionPixelSize(R.dimen.heads_up_status_bar_padding) + SystemBarUtils.getStatusBarHeight(context);
    }

    @Override // com.android.systemui.statusbar.policy.HeadsUpManager
    public final HeadsUpManager.HeadsUpEntry createAlertEntry() {
        return (HeadsUpManager.HeadsUpEntry) this.mEntryPool.acquire();
    }
}
