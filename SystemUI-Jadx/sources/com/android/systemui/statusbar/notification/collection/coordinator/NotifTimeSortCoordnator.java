package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.statusbar.notification.collection.GroupEntry;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifComparator;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.TransformingSequence;
import kotlin.sequences.TransformingSequence$iterator$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifTimeSortCoordnator implements Coordinator {
    public final SettingsHelper settingsHelper;
    public final SystemClock systemClock;
    public final String[] pkgArray = {"com.samsung.android.incallui", "com.skt.prod.dialer", "com.android.systemui"};
    public final String[] channelArray = {"Ongoing_call", "NO_HUN_CHANNEL_CALL_CONTROL", "ZEN_ONGOING"};
    public final NotifTimeSortCoordnator$sectionerForPriority$1 sectionerForPriority = new NotifSectioner() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator$sectionerForPriority$1
        {
            super("TimeOrderPriority", 2);
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final NotifComparator getComparator() {
            return new NotifTimeSortCoordnator$sectionerForPriority$1$getComparator$1(NotifTimeSortCoordnator.this);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
        
            if (r0 != false) goto L25;
         */
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean isInSection(com.android.systemui.statusbar.notification.collection.ListEntry r12) {
            /*
                r11 = this;
                com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator r11 = com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator.this
                com.android.systemui.util.SettingsHelper r0 = r11.settingsHelper
                com.android.systemui.util.SettingsHelper$ItemMap r0 = r0.mItemLists
                java.lang.String r1 = "notification_sort_order"
                com.android.systemui.util.SettingsHelper$Item r0 = r0.get(r1)
                int r0 = r0.getIntValue()
                r1 = 1
                r2 = 0
                if (r0 != r1) goto L57
                com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = r12.getRepresentativeEntry()
                java.lang.String[] r3 = r11.pkgArray
                int r4 = r3.length
                r5 = r2
                r6 = r5
            L1d:
                if (r5 >= r4) goto L53
                r7 = r3[r5]
                int r8 = r6 + 1
                r9 = 0
                if (r0 == 0) goto L29
                android.service.notification.StatusBarNotification r10 = r0.mSbn
                goto L2a
            L29:
                r10 = r9
            L2a:
                kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
                java.lang.String r10 = r10.getPackageName()
                boolean r7 = r7.equals(r10)
                if (r7 == 0) goto L4f
                java.lang.String[] r7 = r11.channelArray
                r6 = r7[r6]
                if (r0 == 0) goto L47
                android.app.NotificationChannel r7 = r0.getChannel()
                if (r7 == 0) goto L47
                java.lang.String r9 = r7.getId()
            L47:
                boolean r6 = r6.equals(r9)
                if (r6 == 0) goto L4f
                r0 = r1
                goto L54
            L4f:
                int r5 = r5 + 1
                r6 = r8
                goto L1d
            L53:
                r0 = r2
            L54:
                if (r0 == 0) goto L57
                goto L58
            L57:
                r1 = r2
            L58:
                if (r1 == 0) goto L6c
                com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator$sectionerForPriority$1$getComparator$1 r0 = new com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator$sectionerForPriority$1$getComparator$1
                r0.<init>(r11)
                boolean r11 = r12 instanceof com.android.systemui.statusbar.notification.collection.GroupEntry
                if (r11 == 0) goto L6c
                com.android.systemui.statusbar.notification.collection.GroupEntry r12 = (com.android.systemui.statusbar.notification.collection.GroupEntry) r12
                java.util.List r11 = r12.mChildren
                java.util.ArrayList r11 = (java.util.ArrayList) r11
                r11.sort(r0)
            L6c:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator$sectionerForPriority$1.isInSection(com.android.systemui.statusbar.notification.collection.ListEntry):boolean");
        }
    };
    public final NotifTimeSortCoordnator$sectioner$1 sectioner = new NotifSectioner() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator$sectioner$1
        {
            super("TimeOrder", 3);
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final NotifComparator getComparator() {
            return new NotifTimeSortCoordnator$sectioner$1$getComparator$1(NotifTimeSortCoordnator.this);
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final boolean isInSection(ListEntry listEntry) {
            NotifTimeSortCoordnator notifTimeSortCoordnator = NotifTimeSortCoordnator.this;
            boolean z = true;
            if (notifTimeSortCoordnator.settingsHelper.mItemLists.get("notification_sort_order").getIntValue() != 1) {
                z = false;
            }
            if (z) {
                NotifTimeSortCoordnator$sectioner$1$getComparator$1 notifTimeSortCoordnator$sectioner$1$getComparator$1 = new NotifTimeSortCoordnator$sectioner$1$getComparator$1(notifTimeSortCoordnator);
                if (listEntry instanceof GroupEntry) {
                    ((ArrayList) ((GroupEntry) listEntry).mChildren).sort(notifTimeSortCoordnator$sectioner$1$getComparator$1);
                }
            }
            return z;
        }
    };

    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator$sectionerForPriority$1] */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator$sectioner$1] */
    public NotifTimeSortCoordnator(SettingsHelper settingsHelper, SystemClock systemClock) {
        this.settingsHelper = settingsHelper;
        this.systemClock = systemClock;
    }

    public static long getTime(NotificationEntry notificationEntry) {
        if (notificationEntry == null) {
            return 0L;
        }
        long j = notificationEntry.mSbn.getNotification().when;
        if (j > 0) {
            return j;
        }
        return notificationEntry.mSbn.getPostTime();
    }

    public final long calculateRepresentativeNotificationTime(ListEntry listEntry) {
        boolean z;
        if (listEntry instanceof GroupEntry) {
            ((SystemClockImpl) this.systemClock).getClass();
            long currentTimeMillis = System.currentTimeMillis();
            GroupEntry groupEntry = (GroupEntry) listEntry;
            TransformingSequence$iterator$1 transformingSequence$iterator$1 = new TransformingSequence$iterator$1(new TransformingSequence(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(groupEntry.mUnmodifiableChildren), new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.NotifTimeSortCoordnator$calculateGroupNotificationTime$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    NotifTimeSortCoordnator.this.getClass();
                    return Long.valueOf(NotifTimeSortCoordnator.getTime((NotificationEntry) obj));
                }
            }));
            long j = Long.MIN_VALUE;
            long j2 = Long.MAX_VALUE;
            while (transformingSequence$iterator$1.hasNext()) {
                long longValue = ((Number) transformingSequence$iterator$1.next()).longValue();
                if (currentTimeMillis - longValue > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    j = Math.max(j, longValue);
                } else {
                    j2 = Math.min(j2, longValue);
                }
            }
            if (j == Long.MIN_VALUE && j2 == Long.MAX_VALUE) {
                NotificationEntry notificationEntry = groupEntry.mSummary;
                Intrinsics.checkNotNull(notificationEntry);
                return getTime(notificationEntry);
            }
            if (j2 != Long.MAX_VALUE) {
                j = j2;
            }
            return j;
        }
        NotificationEntry representativeEntry = listEntry.getRepresentativeEntry();
        Intrinsics.checkNotNull(representativeEntry);
        return getTime(representativeEntry);
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
    }
}
