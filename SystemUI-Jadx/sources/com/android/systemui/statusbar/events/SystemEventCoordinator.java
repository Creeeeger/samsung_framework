package com.android.systemui.statusbar.events;

import android.content.Context;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.privacy.PrivacyItem;
import com.android.systemui.privacy.PrivacyItemController;
import com.android.systemui.statusbar.policy.BatteryController;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemEventCoordinator {
    public final Context context;
    public final FeatureFlags featureFlags;
    public final PrivacyItemController privacyController;
    public final SystemEventCoordinator$privacyStateListener$1 privacyStateListener;
    public SystemStatusAnimationScheduler scheduler;
    public final SystemClock systemClock;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.statusbar.events.SystemEventCoordinator$privacyStateListener$1] */
    public SystemEventCoordinator(SystemClock systemClock, BatteryController batteryController, PrivacyItemController privacyItemController, Context context, FeatureFlags featureFlags) {
        this.systemClock = systemClock;
        this.privacyController = privacyItemController;
        this.context = context;
        this.featureFlags = featureFlags;
        new BatteryController.BatteryStateChangeCallback() { // from class: com.android.systemui.statusbar.events.SystemEventCoordinator$batteryStateListener$1
            public boolean plugged;
            public boolean stateKnown;

            public final void notifyListeners(int i) {
                if (this.plugged) {
                    SystemEventCoordinator systemEventCoordinator = SystemEventCoordinator.this;
                    systemEventCoordinator.getClass();
                    Flags.INSTANCE.getClass();
                    if (((FeatureFlagsRelease) systemEventCoordinator.featureFlags).isEnabled(Flags.PLUG_IN_STATUS_BAR_CHIP)) {
                        SystemStatusAnimationScheduler systemStatusAnimationScheduler = systemEventCoordinator.scheduler;
                        if (systemStatusAnimationScheduler == null) {
                            systemStatusAnimationScheduler = null;
                        }
                        ((SystemStatusAnimationSchedulerImpl) systemStatusAnimationScheduler).onStatusEvent(new BatteryEvent(i));
                    }
                }
            }

            @Override // com.android.systemui.statusbar.policy.BatteryController.BatteryStateChangeCallback
            public final void onBatteryLevelChanged(int i, boolean z, boolean z2) {
                if (!this.stateKnown) {
                    this.stateKnown = true;
                    this.plugged = z;
                    notifyListeners(i);
                } else if (this.plugged != z) {
                    this.plugged = z;
                    notifyListeners(i);
                }
            }
        };
        this.privacyStateListener = new PrivacyItemController.Callback() { // from class: com.android.systemui.statusbar.events.SystemEventCoordinator$privacyStateListener$1
            public List currentPrivacyItems;
            public List previousPrivacyItems;
            public long timeLastEmpty;

            {
                EmptyList emptyList = EmptyList.INSTANCE;
                this.currentPrivacyItems = emptyList;
                this.previousPrivacyItems = emptyList;
                ((SystemClockImpl) SystemEventCoordinator.this.systemClock).getClass();
                this.timeLastEmpty = android.os.SystemClock.elapsedRealtime();
            }

            public static boolean uniqueItemsMatch(List list, List list2) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    PrivacyItem privacyItem = (PrivacyItem) it.next();
                    arrayList.add(new Pair(Integer.valueOf(privacyItem.application.uid), privacyItem.privacyType.getPermGroupName()));
                }
                Set set = CollectionsKt___CollectionsKt.toSet(arrayList);
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    PrivacyItem privacyItem2 = (PrivacyItem) it2.next();
                    arrayList2.add(new Pair(Integer.valueOf(privacyItem2.application.uid), privacyItem2.privacyType.getPermGroupName()));
                }
                return Intrinsics.areEqual(set, CollectionsKt___CollectionsKt.toSet(arrayList2));
            }

            /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
            
                if ((android.os.SystemClock.elapsedRealtime() - r7.timeLastEmpty) >= 3000) goto L25;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x0072, code lost:
            
                if (r0 != false) goto L28;
             */
            @Override // com.android.systemui.privacy.PrivacyItemController.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onPrivacyItemsChanged(java.util.List r8) {
                /*
                    r7 = this;
                    java.util.List r0 = r7.currentPrivacyItems
                    boolean r0 = uniqueItemsMatch(r8, r0)
                    if (r0 == 0) goto L9
                    return
                L9:
                    boolean r0 = r8.isEmpty()
                    com.android.systemui.statusbar.events.SystemEventCoordinator r1 = com.android.systemui.statusbar.events.SystemEventCoordinator.this
                    if (r0 == 0) goto L22
                    java.util.List r0 = r7.currentPrivacyItems
                    r7.previousPrivacyItems = r0
                    com.android.systemui.util.time.SystemClock r0 = r1.systemClock
                    com.android.systemui.util.time.SystemClockImpl r0 = (com.android.systemui.util.time.SystemClockImpl) r0
                    r0.getClass()
                    long r2 = android.os.SystemClock.elapsedRealtime()
                    r7.timeLastEmpty = r2
                L22:
                    java.util.List r0 = r7.currentPrivacyItems
                    int r0 = r0.size()
                    int r2 = r8.size()
                    r3 = 1
                    r4 = 0
                    if (r0 >= r2) goto L32
                    r0 = r3
                    goto L33
                L32:
                    r0 = r4
                L33:
                    r7.currentPrivacyItems = r8
                    boolean r8 = r8.isEmpty()
                    r2 = 0
                    if (r8 == 0) goto L48
                    com.android.systemui.statusbar.events.SystemStatusAnimationScheduler r7 = r1.scheduler
                    if (r7 != 0) goto L41
                    goto L42
                L41:
                    r2 = r7
                L42:
                    com.android.systemui.statusbar.events.SystemStatusAnimationSchedulerImpl r2 = (com.android.systemui.statusbar.events.SystemStatusAnimationSchedulerImpl) r2
                    r2.removePersistentDot(r3)
                    goto La7
                L48:
                    java.lang.String r8 = "privacy_chip_animation_enabled"
                    java.lang.String r5 = "privacy"
                    boolean r8 = android.provider.DeviceConfig.getBoolean(r5, r8, r3)
                    if (r8 == 0) goto L75
                    java.util.List r8 = r7.currentPrivacyItems
                    java.util.List r5 = r7.previousPrivacyItems
                    boolean r8 = uniqueItemsMatch(r8, r5)
                    if (r8 == 0) goto L72
                    com.android.systemui.util.time.SystemClock r8 = r1.systemClock
                    com.android.systemui.util.time.SystemClockImpl r8 = (com.android.systemui.util.time.SystemClockImpl) r8
                    r8.getClass()
                    long r5 = android.os.SystemClock.elapsedRealtime()
                    long r7 = r7.timeLastEmpty
                    long r5 = r5 - r7
                    r7 = 3000(0xbb8, double:1.482E-320)
                    int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                    if (r7 < 0) goto L75
                L72:
                    if (r0 == 0) goto L75
                    goto L76
                L75:
                    r3 = r4
                L76:
                    r1.getClass()
                    com.android.systemui.statusbar.events.PrivacyEvent r7 = new com.android.systemui.statusbar.events.PrivacyEvent
                    r7.<init>(r3)
                    com.android.systemui.statusbar.events.SystemEventCoordinator$privacyStateListener$1 r8 = r1.privacyStateListener
                    java.util.List r8 = r8.currentPrivacyItems
                    r7.privacyItems = r8
                    com.android.systemui.privacy.PrivacyChipBuilder r0 = new com.android.systemui.privacy.PrivacyChipBuilder
                    android.content.Context r3 = r1.context
                    r0.<init>(r3, r8)
                    java.lang.String r8 = r0.joinTypes()
                    r0 = 2131954781(0x7f130c5d, float:1.954607E38)
                    java.lang.Object[] r8 = new java.lang.Object[]{r8}
                    java.lang.String r8 = r3.getString(r0, r8)
                    r7.contentDescription = r8
                    com.android.systemui.statusbar.events.SystemStatusAnimationScheduler r8 = r1.scheduler
                    if (r8 != 0) goto La1
                    goto La2
                La1:
                    r2 = r8
                La2:
                    com.android.systemui.statusbar.events.SystemStatusAnimationSchedulerImpl r2 = (com.android.systemui.statusbar.events.SystemStatusAnimationSchedulerImpl) r2
                    r2.onStatusEvent(r7)
                La7:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.events.SystemEventCoordinator$privacyStateListener$1.onPrivacyItemsChanged(java.util.List):void");
            }
        };
    }
}
