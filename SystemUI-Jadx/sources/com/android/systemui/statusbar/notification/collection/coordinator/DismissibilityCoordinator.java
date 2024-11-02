package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.statusbar.notification.collection.GroupEntry;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeRenderListListener;
import com.android.systemui.statusbar.notification.collection.provider.NotificationDismissibilityProviderImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DismissibilityCoordinator implements Coordinator {
    public final KeyguardStateController keyguardStateController;
    public final NotificationDismissibilityProviderImpl provider;

    public DismissibilityCoordinator(KeyguardStateController keyguardStateController, NotificationDismissibilityProviderImpl notificationDismissibilityProviderImpl) {
        this.keyguardStateController = keyguardStateController;
        this.provider = notificationDismissibilityProviderImpl;
    }

    public static boolean markNonDismissibleEntries(Set set, List list, boolean z) {
        boolean z2;
        Iterator it = list.iterator();
        boolean z3 = false;
        while (it.hasNext()) {
            ListEntry listEntry = (ListEntry) it.next();
            NotificationEntry representativeEntry = listEntry.getRepresentativeEntry();
            if (representativeEntry != null) {
                if (representativeEntry.mSbn.isNonDismissable() || (representativeEntry.mSbn.isOngoing() && z)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (!z2) {
                    set.add(representativeEntry.mKey);
                    z3 = true;
                }
            }
            if (listEntry instanceof GroupEntry) {
                GroupEntry groupEntry = (GroupEntry) listEntry;
                if (markNonDismissibleEntries(set, groupEntry.mUnmodifiableChildren, z)) {
                    NotificationEntry notificationEntry = groupEntry.mSummary;
                    if (notificationEntry != null) {
                        set.add(notificationEntry.mKey);
                    }
                    z3 = true;
                }
            }
        }
        return z3;
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        notifPipeline.addOnBeforeRenderListListener(new OnBeforeRenderListListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.DismissibilityCoordinator$attach$1
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeRenderListListener
            public final void onBeforeRenderList(List list) {
                DismissibilityCoordinator dismissibilityCoordinator = DismissibilityCoordinator.this;
                boolean z = !dismissibilityCoordinator.keyguardStateController.isUnlocked();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                DismissibilityCoordinator.markNonDismissibleEntries(linkedHashSet, list, z);
                NotificationDismissibilityProviderImpl notificationDismissibilityProviderImpl = dismissibilityCoordinator.provider;
                synchronized (notificationDismissibilityProviderImpl) {
                    notificationDismissibilityProviderImpl.nonDismissableEntryKeys = CollectionsKt___CollectionsKt.toSet(linkedHashSet);
                }
            }
        });
    }
}
