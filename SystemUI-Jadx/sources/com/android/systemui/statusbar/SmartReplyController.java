package com.android.systemui.statusbar;

import android.app.Notification;
import android.os.RemoteException;
import android.util.ArraySet;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.statusbar.NotificationVisibility;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.RemoteInputCoordinator$setRemoteInputController$1;
import com.android.systemui.statusbar.notification.collection.provider.NotificationVisibilityProviderImpl;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.util.SystemUIAnalytics;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SmartReplyController implements Dumpable {
    public final IStatusBarService mBarService;
    public RemoteInputCoordinator$setRemoteInputController$1 mCallback;
    public final NotificationClickNotifier mClickNotifier;
    public final Set mSendingKeys = new ArraySet();
    public final NotificationVisibilityProvider mVisibilityProvider;

    public SmartReplyController(DumpManager dumpManager, NotificationVisibilityProvider notificationVisibilityProvider, IStatusBarService iStatusBarService, NotificationClickNotifier notificationClickNotifier) {
        this.mBarService = iStatusBarService;
        this.mVisibilityProvider = notificationVisibilityProvider;
        this.mClickNotifier = notificationClickNotifier;
        dumpManager.registerDumpable(this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        StringBuilder sb = new StringBuilder("mSendingKeys: ");
        Set set = this.mSendingKeys;
        sb.append(((ArraySet) set).size());
        printWriter.println(sb.toString());
        Iterator it = ((ArraySet) set).iterator();
        while (it.hasNext()) {
            FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m(" * ", (String) it.next(), printWriter);
        }
    }

    public final void smartActionClicked(NotificationEntry notificationEntry, int i, Notification.Action action, boolean z) {
        NotificationVisibility obtain = ((NotificationVisibilityProviderImpl) this.mVisibilityProvider).obtain(notificationEntry);
        String str = notificationEntry.mKey;
        NotificationClickNotifier notificationClickNotifier = this.mClickNotifier;
        notificationClickNotifier.getClass();
        try {
            notificationClickNotifier.barService.onNotificationActionClick(str, i, action, obtain, z);
        } catch (RemoteException unused) {
        }
        notificationClickNotifier.mainExecutor.execute(new NotificationClickNotifier$onNotificationActionClick$1(notificationClickNotifier, str));
        SystemUIAnalytics.sendEventCDLog("QPN001", "QPNE0011", "type", "actions", "app", notificationEntry.mSbn.getPackageName());
    }

    public final void stopSending(NotificationEntry notificationEntry) {
        if (notificationEntry != null) {
            ((ArraySet) this.mSendingKeys).remove(notificationEntry.mSbn.getKey());
        }
    }
}
