package com.android.systemui.statusbar.notification.collection;

import com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator;
import com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$$ExternalSyntheticLambda3;
import com.android.systemui.statusbar.notification.collection.inflation.NotifInflater;
import com.android.systemui.statusbar.notification.collection.inflation.NotificationRowBinderImpl;
import com.android.systemui.statusbar.notification.row.NotifInflationErrorManager;
import com.android.systemui.statusbar.notification.row.NotificationRowContentBinder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifInflaterImpl implements NotifInflater {
    public final NotifInflationErrorManager mNotifErrorManager;
    public NotificationRowBinderImpl mNotificationRowBinder;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.collection.NotifInflaterImpl$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements NotificationRowContentBinder.InflationCallback {
        public final /* synthetic */ NotifInflater.InflationCallback val$callback;

        public AnonymousClass1(NotifInflater.InflationCallback inflationCallback) {
            this.val$callback = inflationCallback;
        }

        @Override // com.android.systemui.statusbar.notification.row.NotificationRowContentBinder.InflationCallback
        public final void handleInflationException(NotificationEntry notificationEntry, Exception exc) {
            NotifInflaterImpl.this.mNotifErrorManager.setInflationError(notificationEntry, exc);
        }

        @Override // com.android.systemui.statusbar.notification.row.NotificationRowContentBinder.InflationCallback
        public final void onAsyncInflationFinished(NotificationEntry notificationEntry) {
            NotifInflaterImpl.this.mNotifErrorManager.clearInflationError(notificationEntry);
            NotifInflater.InflationCallback inflationCallback = this.val$callback;
            if (inflationCallback != null) {
                PreparationCoordinator.$r8$lambda$T1DwXSSxf_XS7CenlmlbkE5FMFw(((PreparationCoordinator$$ExternalSyntheticLambda3) inflationCallback).f$0, notificationEntry, notificationEntry.mRowController);
            }
        }
    }

    public NotifInflaterImpl(NotifInflationErrorManager notifInflationErrorManager) {
        this.mNotifErrorManager = notifInflationErrorManager;
    }
}
