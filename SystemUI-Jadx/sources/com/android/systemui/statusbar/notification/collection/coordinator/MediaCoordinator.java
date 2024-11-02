package com.android.systemui.statusbar.notification.collection.coordinator;

import android.os.RemoteException;
import android.service.notification.StatusBarNotification;
import android.util.ArrayMap;
import com.android.internal.statusbar.IStatusBarService;
import com.android.systemui.media.controls.pipeline.MediaDataManagerKt;
import com.android.systemui.media.controls.util.MediaFeatureFlag;
import com.android.systemui.statusbar.notification.InflationException;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.statusbar.notification.icon.IconManager;
import com.android.systemui.util.Utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MediaCoordinator implements Coordinator {
    public final IconManager mIconManager;
    public final Boolean mIsMediaFeatureEnabled;
    public final IStatusBarService mStatusBarService;
    public final ArrayMap mIconsState = new ArrayMap();
    public final AnonymousClass1 mMediaFilter = new NotifFilter("MediaCoordinator") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.MediaCoordinator.1
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            MediaCoordinator mediaCoordinator = MediaCoordinator.this;
            if (mediaCoordinator.mIsMediaFeatureEnabled.booleanValue()) {
                StatusBarNotification statusBarNotification = notificationEntry.mSbn;
                String[] strArr = MediaDataManagerKt.ART_URIS;
                if (statusBarNotification.getNotification().isMediaNotification()) {
                    ArrayMap arrayMap = mediaCoordinator.mIconsState;
                    int intValue = ((Integer) arrayMap.getOrDefault(notificationEntry, 0)).intValue();
                    IconManager iconManager = mediaCoordinator.mIconManager;
                    if (intValue != 0) {
                        if (intValue == 1) {
                            try {
                                iconManager.updateIcons(notificationEntry);
                            } catch (InflationException e) {
                                MediaCoordinator.m1417$$Nest$mreportInflationError(mediaCoordinator, notificationEntry, e);
                                arrayMap.put(notificationEntry, 2);
                            }
                        }
                    } else {
                        try {
                            iconManager.createIcons(notificationEntry);
                            arrayMap.put(notificationEntry, 1);
                        } catch (InflationException e2) {
                            MediaCoordinator.m1417$$Nest$mreportInflationError(mediaCoordinator, notificationEntry, e2);
                            arrayMap.put(notificationEntry, 2);
                        }
                    }
                    return true;
                }
            }
            return false;
        }
    };
    public final AnonymousClass2 mCollectionListener = new NotifCollectionListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.MediaCoordinator.2
        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryCleanUp(NotificationEntry notificationEntry) {
            MediaCoordinator.this.mIconsState.remove(notificationEntry);
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryInit(NotificationEntry notificationEntry) {
            MediaCoordinator.this.mIconsState.put(notificationEntry, 0);
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryUpdated(NotificationEntry notificationEntry) {
            MediaCoordinator mediaCoordinator = MediaCoordinator.this;
            if (((Integer) mediaCoordinator.mIconsState.getOrDefault(notificationEntry, 0)).intValue() == 2) {
                mediaCoordinator.mIconsState.put(notificationEntry, 0);
            }
        }
    };

    /* renamed from: -$$Nest$mreportInflationError, reason: not valid java name */
    public static void m1417$$Nest$mreportInflationError(MediaCoordinator mediaCoordinator, NotificationEntry notificationEntry, InflationException inflationException) {
        mediaCoordinator.getClass();
        try {
            StatusBarNotification statusBarNotification = notificationEntry.mSbn;
            mediaCoordinator.mStatusBarService.onNotificationError(statusBarNotification.getPackageName(), statusBarNotification.getTag(), statusBarNotification.getId(), statusBarNotification.getUid(), statusBarNotification.getInitialPid(), inflationException.getMessage(), statusBarNotification.getUser().getIdentifier());
        } catch (RemoteException unused) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.statusbar.notification.collection.coordinator.MediaCoordinator$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.statusbar.notification.collection.coordinator.MediaCoordinator$2] */
    public MediaCoordinator(MediaFeatureFlag mediaFeatureFlag, IStatusBarService iStatusBarService, IconManager iconManager) {
        this.mIsMediaFeatureEnabled = Boolean.valueOf(Utils.useQsMediaPlayer(mediaFeatureFlag.context));
        this.mStatusBarService = iStatusBarService;
        this.mIconManager = iconManager;
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        notifPipeline.addPreGroupFilter(this.mMediaFilter);
        notifPipeline.addCollectionListener(this.mCollectionListener);
    }
}
