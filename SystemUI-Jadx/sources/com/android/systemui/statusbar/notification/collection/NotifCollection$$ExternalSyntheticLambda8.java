package com.android.systemui.statusbar.notification.collection;

import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifLifetimeExtender;
import com.android.systemui.util.Assert;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotifCollection$$ExternalSyntheticLambda8 {
    public final /* synthetic */ NotifCollection f$0;

    public /* synthetic */ NotifCollection$$ExternalSyntheticLambda8(NotifCollection notifCollection) {
        this.f$0 = notifCollection;
    }

    public final void onEndLifetimeExtension(NotificationEntry notificationEntry, NotifLifetimeExtender notifLifetimeExtender) {
        String str;
        boolean z;
        NotifCollection notifCollection = this.f$0;
        notifCollection.getClass();
        Assert.isMainThread();
        if (notifCollection.mAttached) {
            NotificationEntry entry = notifCollection.getEntry(notificationEntry.mKey);
            String logKey = NotificationUtils.logKey(notificationEntry);
            if (entry == null) {
                str = "null";
            } else if (notificationEntry == entry) {
                str = "same";
            } else {
                str = "different";
            }
            NotifCollectionLogger notifCollectionLogger = notifCollection.mLogger;
            if (notificationEntry != entry) {
                notifCollectionLogger.logEntryBeingExtendedNotInCollection(notificationEntry, notifLifetimeExtender, str);
            }
            List list = notificationEntry.mLifetimeExtenders;
            ArrayList arrayList = (ArrayList) list;
            if (arrayList.remove(notifLifetimeExtender)) {
                notifCollectionLogger.logLifetimeExtensionEnded(notificationEntry, notifLifetimeExtender, arrayList.size());
                if (((ArrayList) list).size() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z && notifCollection.tryRemoveNotification(notificationEntry)) {
                    notifCollection.dispatchEventsAndRebuildList("onEndLifetimeExtension");
                    return;
                }
                return;
            }
            IllegalStateException illegalStateException = new IllegalStateException(String.format("Cannot end lifetime extension for extender \"%s\" of entry %s (collection entry is %s)", notifLifetimeExtender.getName(), logKey, str));
            notifCollection.mEulogizer.record(illegalStateException);
            throw illegalStateException;
        }
    }
}
