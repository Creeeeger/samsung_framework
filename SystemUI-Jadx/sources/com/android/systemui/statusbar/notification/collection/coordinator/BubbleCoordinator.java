package com.android.systemui.statusbar.notification.collection.coordinator;

import android.util.Log;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.statusbar.LockscreenNotificationManager;
import com.android.systemui.statusbar.notification.SubscreenDeviceModelParent;
import com.android.systemui.statusbar.notification.SubscreenNotificationController;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda8;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.notifcollection.DismissedByUserStats;
import com.android.systemui.util.Assert;
import com.android.systemui.wmshell.BubblesManager;
import com.android.wm.shell.bubbles.BubbleController;
import com.android.wm.shell.bubbles.Bubbles;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubbleCoordinator implements Coordinator {
    public final Optional mBubblesManagerOptional;
    public final Optional mBubblesOptional;
    public final NotifCollection mNotifCollection;
    public NotifPipeline mNotifPipeline;
    public NotifCollection$$ExternalSyntheticLambda8 mOnEndDismissInterception;
    public final Set mInterceptedDismissalEntries = new HashSet();
    public final AnonymousClass1 mNotifFilter = new NotifFilter("BubbleCoordinator") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator.1
        @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
        public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j) {
            boolean z = NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH;
            BubbleCoordinator bubbleCoordinator = BubbleCoordinator.this;
            if (z && bubbleCoordinator.mBubblesOptional.isPresent()) {
                if (((BubbleController.BubblesImpl) ((Bubbles) bubbleCoordinator.mBubblesOptional.get())).isBubbleNotificationSuppressedFromShade(notificationEntry.mKey, notificationEntry.mSbn.getGroupKey())) {
                    SubscreenDeviceModelParent subscreenDeviceModelParent = ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel;
                    if (subscreenDeviceModelParent.mIsFolded && notificationEntry.canBubble()) {
                        NotificationEntry notificationEntry2 = subscreenDeviceModelParent.mBubbleReplyEntry;
                        String str = notificationEntry.mKey;
                        if (notificationEntry2 != null && str.equals(notificationEntry2.mKey)) {
                            Log.d("S.S.N.", "shouldFilterOutBubble parent - mBubbleReplyEntry key :".concat(str));
                            subscreenDeviceModelParent.mBubbleReplyEntry = null;
                        } else if (((SubscreenDeviceModelParent.MainListHashMapItem) subscreenDeviceModelParent.mMainListArrayHashMap.get(str)) != null) {
                            Log.d("S.S.N.", "shouldFilterOutBubble parent - remove Bubble Item :" + str);
                            subscreenDeviceModelParent.notifyListAdapterItemRemoved(notificationEntry);
                            subscreenDeviceModelParent.notifyGroupAdapterItemRemoved(notificationEntry);
                            subscreenDeviceModelParent.removeMainHashItem(notificationEntry);
                        }
                    }
                }
            }
            if (bubbleCoordinator.mBubblesOptional.isPresent()) {
                if (((BubbleController.BubblesImpl) ((Bubbles) bubbleCoordinator.mBubblesOptional.get())).isBubbleNotificationSuppressedFromShade(notificationEntry.mKey, notificationEntry.mSbn.getGroupKey())) {
                    return true;
                }
            }
            return false;
        }
    };
    public final AnonymousClass2 mDismissInterceptor = new AnonymousClass2();
    public final AnonymousClass3 mNotifCallback = new AnonymousClass3();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 {
        public AnonymousClass2() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 {
        public AnonymousClass3() {
        }

        public final void removeNotification(NotificationEntry notificationEntry, DismissedByUserStats dismissedByUserStats) {
            boolean z;
            BubbleCoordinator bubbleCoordinator = BubbleCoordinator.this;
            boolean contains = ((HashSet) bubbleCoordinator.mInterceptedDismissalEntries).contains(notificationEntry.mKey);
            String str = notificationEntry.mKey;
            if (contains) {
                ((HashSet) bubbleCoordinator.mInterceptedDismissalEntries).remove(str);
                NotifCollection notifCollection = bubbleCoordinator.mOnEndDismissInterception.f$0;
                notifCollection.getClass();
                Assert.isMainThread();
                if (notifCollection.mAttached) {
                    notifCollection.checkForReentrantCall();
                    List list = notificationEntry.mDismissInterceptors;
                    AnonymousClass2 anonymousClass2 = bubbleCoordinator.mDismissInterceptor;
                    if (((ArrayList) list).remove(anonymousClass2)) {
                        if (((ArrayList) list).size() > 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            notifCollection.dismissNotification(notificationEntry, dismissedByUserStats);
                            return;
                        }
                        return;
                    }
                    anonymousClass2.getClass();
                    IllegalStateException illegalStateException = new IllegalStateException(String.format("Cannot end dismiss interceptor for interceptor \"%s\" (%s)", "BubbleCoordinator", anonymousClass2));
                    notifCollection.mEulogizer.record(illegalStateException);
                    throw illegalStateException;
                }
                return;
            }
            if (bubbleCoordinator.mNotifPipeline.getEntry(str) != null) {
                bubbleCoordinator.mNotifCollection.dismissNotification(notificationEntry, dismissedByUserStats);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator$1] */
    public BubbleCoordinator(Optional<BubblesManager> optional, Optional<Bubbles> optional2, NotifCollection notifCollection, LockscreenNotificationManager lockscreenNotificationManager) {
        this.mBubblesManagerOptional = optional;
        this.mBubblesOptional = optional2;
        this.mNotifCollection = notifCollection;
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        this.mNotifPipeline = notifPipeline;
        NotifCollection notifCollection = notifPipeline.mNotifCollection;
        notifCollection.getClass();
        Assert.isMainThread();
        notifCollection.checkForReentrantCall();
        ArrayList arrayList = (ArrayList) notifCollection.mDismissInterceptors;
        AnonymousClass2 anonymousClass2 = this.mDismissInterceptor;
        if (!arrayList.contains(anonymousClass2)) {
            arrayList.add(anonymousClass2);
            BubbleCoordinator.this.mOnEndDismissInterception = new NotifCollection$$ExternalSyntheticLambda8(notifCollection);
            this.mNotifPipeline.addPreGroupFilter(this.mNotifFilter);
            this.mBubblesManagerOptional.ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.BubbleCoordinator$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BubbleCoordinator bubbleCoordinator = BubbleCoordinator.this;
                    bubbleCoordinator.getClass();
                    ((ArrayList) ((BubblesManager) obj).mCallbacks).add(bubbleCoordinator.mNotifCallback);
                }
            });
            return;
        }
        throw new IllegalArgumentException("Interceptor " + anonymousClass2 + " already added.");
    }
}
