package com.android.systemui.edgelighting;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.util.Slog;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.edgelighting.SystemUIConditionListenerService;
import com.android.systemui.edgelighting.effect.utils.Utils;
import com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.notification.SubscreenNotificationController;
import com.android.systemui.statusbar.notification.collection.NotifLiveDataImpl;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$attach$3;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SystemUIConditionListenerService extends Service {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AnonymousClass1 mBinder = new AnonymousClass1();
    public NotifLiveDataImpl mEntries;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.SystemUIConditionListenerService$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ISystemUIConditionListener.Stub {
        public static final /* synthetic */ int $r8$clinit = 0;

        public AnonymousClass1() {
        }

        @Override // com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener
        public final boolean isAlertingHeadsUp(String str) {
            return ((HeadsUpManager) Dependency.get(HeadsUpManager.class)).isAlerting(str);
        }

        @Override // com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener
        public final boolean isInterrupted(String str) {
            Collection collection;
            NotificationEntry notificationEntry;
            NotifLiveDataImpl notifLiveDataImpl = SystemUIConditionListenerService.this.mEntries;
            if (notifLiveDataImpl == null || (collection = (Collection) notifLiveDataImpl.getValue()) == null) {
                return false;
            }
            Iterator it = collection.iterator();
            while (it.hasNext() && (notificationEntry = (NotificationEntry) it.next()) != null) {
                if (str.equals(notificationEntry.mKey)) {
                    return notificationEntry.interruption;
                }
            }
            return false;
        }

        @Override // com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener
        public final boolean isNeedToSanitize(int i, int i2, String str) {
            boolean z;
            NotificationLockscreenUserManagerImpl notificationLockscreenUserManagerImpl = (NotificationLockscreenUserManagerImpl) ((NotificationLockscreenUserManager) Dependency.get(NotificationLockscreenUserManager.class));
            boolean z2 = !notificationLockscreenUserManagerImpl.userAllowsPrivateNotificationsInPublic(notificationLockscreenUserManagerImpl.mCurrentUserId);
            boolean contains = notificationLockscreenUserManagerImpl.mCurrentManagedProfiles.contains(i);
            boolean z3 = !notificationLockscreenUserManagerImpl.userAllowsPrivateNotificationsInPublic(i);
            if ((!contains && z2) || z3) {
                z = true;
            } else {
                z = false;
            }
            if ((notificationLockscreenUserManagerImpl.packageHasVisibilityOverride(str) || z) && notificationLockscreenUserManagerImpl.isLockscreenPublicMode(i)) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener
        public final boolean isPanelsEnabled() {
            return ((CommandQueue) Dependency.get(CommandQueue.class)).panelsEnabled();
        }

        @Override // com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener
        public final void requestDozeStateSubScreen(boolean z) {
            ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).requestDozeState(2, z);
        }

        @Override // com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener
        public final void sendClickEvent(String str) {
            NotifLiveDataImpl notifLiveDataImpl = SystemUIConditionListenerService.this.mEntries;
            if (notifLiveDataImpl == null) {
                return;
            }
            NotificationEntry notificationEntry = null;
            for (NotificationEntry notificationEntry2 : (List) notifLiveDataImpl.getValue()) {
                if (str.equals(notificationEntry2.mKey)) {
                    notificationEntry = notificationEntry2;
                }
            }
            if (notificationEntry != null) {
                if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH && Utils.isLargeCoverFlipFolded()) {
                    Slog.d("SysUIConditionListener", "sendClickEvent: coverBriefClicked");
                    ((Handler) Dependency.get(Dependency.MAIN_HANDLER)).post(new SystemUIConditionListenerService$$ExternalSyntheticLambda0(notificationEntry, 1));
                } else {
                    ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
                    if (expandableNotificationRow != null) {
                        expandableNotificationRow.dragAndDropSuccess();
                    }
                }
            }
        }

        @Override // com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener
        public final void setInterruption(String str) {
            Collection collection;
            NotificationEntry notificationEntry;
            NotifLiveDataImpl notifLiveDataImpl = SystemUIConditionListenerService.this.mEntries;
            if (notifLiveDataImpl == null || (collection = (Collection) notifLiveDataImpl.getValue()) == null) {
                return;
            }
            Iterator it = collection.iterator();
            while (it.hasNext() && (notificationEntry = (NotificationEntry) it.next()) != null) {
                if (str.equals(notificationEntry.mKey)) {
                    notificationEntry.interruption = true;
                }
            }
        }

        @Override // com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener
        public final void turnToHeadsUp(final String str) {
            ((Handler) Dependency.get(Dependency.MAIN_HANDLER)).post(new Runnable() { // from class: com.android.systemui.edgelighting.SystemUIConditionListenerService$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Collection<NotificationEntry> collection;
                    SystemUIConditionListenerService.AnonymousClass1 anonymousClass1 = SystemUIConditionListenerService.AnonymousClass1.this;
                    String str2 = str;
                    anonymousClass1.getClass();
                    HeadsUpManager headsUpManager = (HeadsUpManager) Dependency.get(HeadsUpManager.class);
                    NotifLiveDataImpl notifLiveDataImpl = SystemUIConditionListenerService.this.mEntries;
                    if (notifLiveDataImpl != null && (collection = (Collection) notifLiveDataImpl.getValue()) != null) {
                        for (NotificationEntry notificationEntry : collection) {
                            if (notificationEntry != null && str2.equals(notificationEntry.mKey)) {
                                break;
                            }
                        }
                    }
                    notificationEntry = null;
                    Iterator it = ((ArrayList) headsUpManager.mCallbacks).iterator();
                    while (it.hasNext()) {
                        HeadsUpCoordinator headsUpCoordinator = ((HeadsUpCoordinator$attach$3) it.next()).$tmp0;
                        if (notificationEntry != null) {
                            LinkedHashMap linkedHashMap = headsUpCoordinator.mPostedEntries;
                            HeadsUpCoordinator.PostedEntry postedEntry = new HeadsUpCoordinator.PostedEntry(notificationEntry, false, false, true, true, false, false);
                            String str3 = notificationEntry.mKey;
                            linkedHashMap.put(str3, postedEntry);
                            notificationEntry.mIsHeadsUpByBriefExpanding = true;
                            HeadsUpCoordinator.PostedEntry postedEntry2 = (HeadsUpCoordinator.PostedEntry) linkedHashMap.get(str3);
                            if (postedEntry2 != null) {
                                headsUpCoordinator.bindForAsyncHeadsUp(postedEntry2);
                            }
                        } else {
                            headsUpCoordinator.getClass();
                        }
                    }
                }
            });
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        String intent2;
        StringBuilder sb = new StringBuilder("onBind : ");
        if (intent == null) {
            intent2 = " intent is null ";
        } else {
            intent2 = intent.toString();
        }
        sb.append(intent2);
        Slog.d("SysUIConditionListener", sb.toString());
        ((Handler) Dependency.get(Dependency.MAIN_HANDLER)).post(new SystemUIConditionListenerService$$ExternalSyntheticLambda0(this, 0));
        return this.mBinder;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Slog.d("SysUIConditionListener", "onCreate ");
    }
}
