package com.android.systemui.wmshell;

import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.wmshell.BubblesManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubblesManager$4$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BubblesManager.AnonymousClass4 f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ BubblesManager$4$$ExternalSyntheticLambda0(BubblesManager.AnonymousClass4 anonymousClass4, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass4;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ExpandableNotificationRow expandableNotificationRow;
        switch (this.$r8$classId) {
            case 0:
                NotificationEntry entry = ((NotifPipeline) BubblesManager.this.mCommonNotifCollection).getEntry((String) this.f$1);
                if (entry != null && entry.getImportance() >= 4) {
                    entry.interruption = true;
                    return;
                }
                return;
            case 1:
                NotificationEntry entry2 = ((NotifPipeline) BubblesManager.this.mCommonNotifCollection).getEntry((String) this.f$1);
                if (entry2 != null && (expandableNotificationRow = entry2.row) != null) {
                    expandableNotificationRow.updateBubbleButton();
                    return;
                }
                return;
            case 2:
                BubblesManager.AnonymousClass4 anonymousClass4 = this.f$0;
                String str = (String) this.f$1;
                Iterator it = ((ArrayList) BubblesManager.this.mCallbacks).iterator();
                while (it.hasNext()) {
                    BubbleCoordinator.this.mNotifFilter.invalidateList(str);
                }
                return;
            case 3:
                BubblesManager.AnonymousClass4 anonymousClass42 = this.f$0;
                String str2 = (String) this.f$1;
                BubblesManager bubblesManager = BubblesManager.this;
                NotificationEntry entry3 = ((NotifPipeline) bubblesManager.mCommonNotifCollection).getEntry(str2);
                if (entry3 != null) {
                    bubblesManager.onUserChangedBubble(entry3, false);
                    return;
                }
                return;
            default:
                ((Consumer) this.f$1).accept(Boolean.valueOf(((NotificationShadeWindowControllerImpl) BubblesManager.this.mNotificationShadeWindowController).mCurrentState.panelExpanded));
                return;
        }
    }
}
