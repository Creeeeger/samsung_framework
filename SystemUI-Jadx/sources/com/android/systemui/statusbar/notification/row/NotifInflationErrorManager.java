package com.android.systemui.statusbar.notification.row;

import android.os.RemoteException;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import androidx.collection.ArraySet;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotifInflationErrorManager {
    public final ArraySet mErroredNotifs = new ArraySet();
    public final List mListeners = new ArrayList();

    public final void clearInflationError(NotificationEntry notificationEntry) {
        ArraySet arraySet = this.mErroredNotifs;
        if (arraySet.contains(notificationEntry)) {
            arraySet.remove(notificationEntry);
            int i = 0;
            while (true) {
                ArrayList arrayList = (ArrayList) this.mListeners;
                if (i < arrayList.size()) {
                    PreparationCoordinator.this.mNotifInflationErrorFilter.invalidateList("onNotifInflationErrorCleared for " + NotificationUtils.logKey(notificationEntry));
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void setInflationError(NotificationEntry notificationEntry, Exception exc) {
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.mListeners;
            if (i < arrayList.size()) {
                PreparationCoordinator preparationCoordinator = PreparationCoordinator.this;
                preparationCoordinator.mViewBarn.rowMap.remove(notificationEntry.getKey());
                preparationCoordinator.mInflationStates.put(notificationEntry, -1);
                if (exc instanceof RuntimeException) {
                    Log.i("PreparationCoordinator", "Notification : " + notificationEntry.mKey + " not inflated because of inflation thread interrupted. " + exc);
                    preparationCoordinator.mNotifUpdate.onInternalNotificationUpdate("inflation error", notificationEntry.mSbn);
                } else {
                    try {
                        StatusBarNotification statusBarNotification = notificationEntry.mSbn;
                        preparationCoordinator.mStatusBarService.onNotificationError(statusBarNotification.getPackageName(), statusBarNotification.getTag(), statusBarNotification.getId(), statusBarNotification.getUid(), statusBarNotification.getInitialPid(), exc.getMessage(), statusBarNotification.getUser().getIdentifier());
                    } catch (RemoteException unused) {
                    }
                    preparationCoordinator.mNotifInflationErrorFilter.invalidateList("onNotifInflationError for " + NotificationUtils.logKey(notificationEntry));
                }
                i++;
            } else {
                return;
            }
        }
    }
}
