package com.android.systemui.statusbar.notification.collection.coordinator;

import android.os.Handler;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.notification.SubscreenNotificationController;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda4;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.notifcollection.SelfTrackingLifetimeExtender;
import com.samsung.android.view.SemWindowManager;
import java.io.PrintWriter;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenQuickReplyCoordinator implements Coordinator, Dumpable {
    public final SubscreenNotificationController mController;
    public boolean mIsFolded;
    public final Handler mMainHandler;
    public NotifCollection$$ExternalSyntheticLambda4 mNotifUpdater;
    public final SubscreenQuickReplyExtender mQuickReplyExtender = new SubscreenQuickReplyExtender();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SubscreenQuickReplyExtender extends SelfTrackingLifetimeExtender {
        public SubscreenQuickReplyExtender() {
            super("SubscreenQuickReplyCoordinator", "SubscreenQuickReply", ((Boolean) SubscreenQuickReplyCoordinatorKt.DEBUG$delegate.getValue()).booleanValue(), SubscreenQuickReplyCoordinator.this.mMainHandler);
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.SelfTrackingLifetimeExtender
        public final boolean queryShouldExtendLifetime(NotificationEntry notificationEntry) {
            boolean z;
            if (notificationEntry.mIsGhost && SubscreenQuickReplyCoordinator.this.mIsFolded) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("   should extend lifetime - "), notificationEntry.mKey, "SubscreenQuickReplyCoordinator");
            }
            return z;
        }
    }

    public SubscreenQuickReplyCoordinator(DumpManager dumpManager, SubscreenNotificationController subscreenNotificationController, Handler handler) {
        this.mController = subscreenNotificationController;
        this.mMainHandler = handler;
        dumpManager.registerDumpable(this);
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        notifPipeline.addNotificationLifetimeExtender(this.mQuickReplyExtender);
        NotifCollection notifCollection = notifPipeline.mNotifCollection;
        notifCollection.getClass();
        this.mNotifUpdater = new NotifCollection$$ExternalSyntheticLambda4(notifCollection, "SubscreenQuickReplyCoordinator");
        SemWindowManager.getInstance().registerFoldStateListener(new SemWindowManager.FoldStateListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.SubscreenQuickReplyCoordinator$getFoldStateListener$1
            public final void onFoldStateChanged(boolean z) {
                SubscreenQuickReplyCoordinator subscreenQuickReplyCoordinator = SubscreenQuickReplyCoordinator.this;
                subscreenQuickReplyCoordinator.mIsFolded = z;
                if (!z) {
                    subscreenQuickReplyCoordinator.mQuickReplyExtender.endAllLifetimeExtensions();
                }
            }

            public final void onTableModeChanged(boolean z) {
            }
        }, this.mMainHandler);
        ((ArrayList) this.mController.subscreenStateListenerList).add(new SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1(this));
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        this.mQuickReplyExtender.dump(printWriter, strArr);
    }
}
