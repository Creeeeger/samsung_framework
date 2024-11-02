package com.android.systemui.statusbar.notification.collection.coordinator;

import android.widget.ImageView;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner;
import com.android.systemui.statusbar.notification.collection.provider.HighPriorityProvider;
import com.android.systemui.statusbar.notification.collection.render.NodeController;
import com.android.systemui.statusbar.notification.collection.render.SectionHeaderController;
import com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl;
import com.android.systemui.statusbar.notification.stack.SectionHeaderView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RankingCoordinator implements Coordinator {
    public boolean mHasMinimizedEntries;
    public boolean mHasSilentEntries;
    public final HighPriorityProvider mHighPriorityProvider;
    public final AnonymousClass3 mMinimizedNotifSectioner;
    public final SectionHeaderController mSilentHeaderController;
    public final NodeController mSilentNodeController;
    public final AnonymousClass2 mSilentNotifSectioner;
    public final StatusBarStateController mStatusBarStateController;
    public final AnonymousClass1 mAlertingNotifSectioner = new NotifSectioner(this, "Alerting", 8) { // from class: com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator.1
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final NodeController getHeaderNodeController() {
            return null;
        }

        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
        public final boolean isInSection(ListEntry listEntry) {
            return true;
        }
    };
    public final AnonymousClass4 mSuspendedFilter = new NotifFilter(this, "IsSuspendedFilter") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator.4
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            return notificationEntry.mRanking.isSuspended();
        }
    };
    public final AnonymousClass5 mDndVisualEffectsFilter = new NotifFilter("DndSuppressingVisualEffects") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator.5
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            RankingCoordinator rankingCoordinator = RankingCoordinator.this;
            if ((rankingCoordinator.mStatusBarStateController.isDozing() || rankingCoordinator.mStatusBarStateController.getDozeAmount() == 1.0f) && notificationEntry.shouldSuppressVisualEffect(128)) {
                return true;
            }
            return notificationEntry.shouldSuppressVisualEffect(256);
        }
    };
    public final AnonymousClass6 mStatusBarStateCallback = new StatusBarStateController.StateListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator.6
        public boolean mPrevDozeAmountIsOne = false;

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onDozeAmountChanged(float f, float f2) {
            boolean z;
            String str;
            super.onDozeAmountChanged(f, f2);
            if (f == 1.0f) {
                z = true;
            } else {
                z = false;
            }
            if (this.mPrevDozeAmountIsOne != z) {
                AnonymousClass5 anonymousClass5 = RankingCoordinator.this.mDndVisualEffectsFilter;
                if (z) {
                    str = "one";
                } else {
                    str = "not one";
                }
                anonymousClass5.invalidateList("dozeAmount changed to ".concat(str));
                this.mPrevDozeAmountIsOne = z;
            }
        }

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onDozingChanged(boolean z) {
            invalidateList("onDozingChanged to " + z);
        }
    };

    /* JADX WARN: Type inference failed for: r5v1, types: [com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator$1] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator$2] */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator$3] */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator$4] */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator$5] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator$6] */
    public RankingCoordinator(StatusBarStateController statusBarStateController, HighPriorityProvider highPriorityProvider, NodeController nodeController, SectionHeaderController sectionHeaderController, NodeController nodeController2) {
        int i = 9;
        this.mSilentNotifSectioner = new NotifSectioner("Silent", i) { // from class: com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator.2
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
            public final NodeController getHeaderNodeController() {
                return RankingCoordinator.this.mSilentNodeController;
            }

            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
            public final boolean isInSection(ListEntry listEntry) {
                if (!RankingCoordinator.this.mHighPriorityProvider.isHighPriority(listEntry, true) && !listEntry.getRepresentativeEntry().isAmbient()) {
                    return true;
                }
                return false;
            }

            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
            public final void onEntriesUpdated(List list) {
                RankingCoordinator rankingCoordinator = RankingCoordinator.this;
                int i2 = 0;
                rankingCoordinator.mHasSilentEntries = false;
                int i3 = 0;
                while (true) {
                    ArrayList arrayList = (ArrayList) list;
                    if (i3 >= arrayList.size()) {
                        break;
                    }
                    if (((ListEntry) arrayList.get(i3)).getRepresentativeEntry().mSbn.isClearable()) {
                        rankingCoordinator.mHasSilentEntries = true;
                        break;
                    }
                    i3++;
                }
                boolean z = rankingCoordinator.mHasSilentEntries | rankingCoordinator.mHasMinimizedEntries;
                SectionHeaderNodeControllerImpl sectionHeaderNodeControllerImpl = (SectionHeaderNodeControllerImpl) rankingCoordinator.mSilentHeaderController;
                sectionHeaderNodeControllerImpl.clearAllButtonEnabled = z;
                SectionHeaderView sectionHeaderView = sectionHeaderNodeControllerImpl._view;
                if (sectionHeaderView != null) {
                    ImageView imageView = sectionHeaderView.mClearAllButton;
                    if (!z) {
                        i2 = 8;
                    }
                    imageView.setVisibility(i2);
                }
            }
        };
        this.mMinimizedNotifSectioner = new NotifSectioner("Minimized", i) { // from class: com.android.systemui.statusbar.notification.collection.coordinator.RankingCoordinator.3
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
            public final NodeController getHeaderNodeController() {
                return RankingCoordinator.this.mSilentNodeController;
            }

            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
            public final boolean isInSection(ListEntry listEntry) {
                if (!RankingCoordinator.this.mHighPriorityProvider.isHighPriority(listEntry, true) && listEntry.getRepresentativeEntry().isAmbient()) {
                    return true;
                }
                return false;
            }

            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifSectioner
            public final void onEntriesUpdated(List list) {
                RankingCoordinator rankingCoordinator = RankingCoordinator.this;
                int i2 = 0;
                rankingCoordinator.mHasMinimizedEntries = false;
                int i3 = 0;
                while (true) {
                    ArrayList arrayList = (ArrayList) list;
                    if (i3 >= arrayList.size()) {
                        break;
                    }
                    if (((ListEntry) arrayList.get(i3)).getRepresentativeEntry().mSbn.isClearable()) {
                        rankingCoordinator.mHasMinimizedEntries = true;
                        break;
                    }
                    i3++;
                }
                boolean z = rankingCoordinator.mHasSilentEntries | rankingCoordinator.mHasMinimizedEntries;
                SectionHeaderNodeControllerImpl sectionHeaderNodeControllerImpl = (SectionHeaderNodeControllerImpl) rankingCoordinator.mSilentHeaderController;
                sectionHeaderNodeControllerImpl.clearAllButtonEnabled = z;
                SectionHeaderView sectionHeaderView = sectionHeaderNodeControllerImpl._view;
                if (sectionHeaderView != null) {
                    ImageView imageView = sectionHeaderView.mClearAllButton;
                    if (!z) {
                        i2 = 8;
                    }
                    imageView.setVisibility(i2);
                }
            }
        };
        this.mStatusBarStateController = statusBarStateController;
        this.mHighPriorityProvider = highPriorityProvider;
        this.mSilentNodeController = nodeController2;
        this.mSilentHeaderController = sectionHeaderController;
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        this.mStatusBarStateController.addCallback(this.mStatusBarStateCallback);
        notifPipeline.addPreGroupFilter(this.mSuspendedFilter);
        notifPipeline.addPreGroupFilter(this.mDndVisualEffectsFilter);
    }
}
