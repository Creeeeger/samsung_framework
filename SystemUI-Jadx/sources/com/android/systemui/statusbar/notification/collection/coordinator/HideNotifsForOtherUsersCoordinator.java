package com.android.systemui.statusbar.notification.collection.coordinator;

import android.util.SparseArray;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HideNotifsForOtherUsersCoordinator implements Coordinator {
    public final NotificationLockscreenUserManager mLockscreenUserManager;
    public final AnonymousClass1 mFilter = new NotifFilter("NotCurrentUserFilter") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HideNotifsForOtherUsersCoordinator.1
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            return !((NotificationLockscreenUserManagerImpl) HideNotifsForOtherUsersCoordinator.this.mLockscreenUserManager).isCurrentProfile(notificationEntry.mSbn.getUser().getIdentifier());
        }
    };
    public final AnonymousClass2 mUserChangedListener = new NotificationLockscreenUserManager.UserChangedListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.HideNotifsForOtherUsersCoordinator.2
        @Override // com.android.systemui.statusbar.NotificationLockscreenUserManager.UserChangedListener
        public final void onCurrentProfilesChanged(SparseArray sparseArray) {
            StringBuilder sb = new StringBuilder("onCurrentProfilesChanged: user=");
            HideNotifsForOtherUsersCoordinator hideNotifsForOtherUsersCoordinator = HideNotifsForOtherUsersCoordinator.this;
            sb.append(((NotificationLockscreenUserManagerImpl) hideNotifsForOtherUsersCoordinator.mLockscreenUserManager).mCurrentUserId);
            sb.append(" profiles={");
            for (int i = 0; i < sparseArray.size(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                sb.append(sparseArray.keyAt(i));
            }
            sb.append("}");
            hideNotifsForOtherUsersCoordinator.mFilter.invalidateList(sb.toString());
        }
    };

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.statusbar.notification.collection.coordinator.HideNotifsForOtherUsersCoordinator$1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.statusbar.notification.collection.coordinator.HideNotifsForOtherUsersCoordinator$2] */
    public HideNotifsForOtherUsersCoordinator(NotificationLockscreenUserManager notificationLockscreenUserManager) {
        this.mLockscreenUserManager = notificationLockscreenUserManager;
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        notifPipeline.addPreGroupFilter(this.mFilter);
        ((ArrayList) ((NotificationLockscreenUserManagerImpl) this.mLockscreenUserManager).mListeners).add(this.mUserChangedListener);
    }
}
