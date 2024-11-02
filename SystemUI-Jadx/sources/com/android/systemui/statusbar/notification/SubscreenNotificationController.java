package com.android.systemui.statusbar.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.service.notification.StatusBarNotification;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.ForegroundServiceController;
import com.android.systemui.NotiRune;
import com.android.systemui.bixby2.controller.NotificationController;
import com.android.systemui.doze.PluginAODManager;
import com.android.systemui.media.controls.util.MediaFeatureFlag;
import com.android.systemui.plugins.aod.PluginAOD;
import com.android.systemui.plugins.clockpack.PluginClockPack;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.notification.ConversationNotificationManager;
import com.android.systemui.statusbar.notification.SubscreenDeviceModelParent;
import com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda4;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.SubscreenQuickReplyCoordinator;
import com.android.systemui.statusbar.notification.collection.coordinator.SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManager;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.statusbar.notification.collection.provider.DebugModeFilterProvider;
import com.android.systemui.statusbar.notification.interruption.KeyguardNotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.view.SemWindowManager;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.Executor;
import kotlin.Function;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenNotificationController implements NotifCollectionListener, SemWindowManager.FoldStateListener {
    public final Optional bubblesOptional;
    public final Context context;
    public final ConversationNotificationManager conversationNotificationManager;
    public final DebugModeFilterProvider debugModeFilterProvider;
    public final ForegroundServiceController foregroundServiceController;
    public final KeyguardNotificationVisibilityProvider keyguardNotificationVisibilityProvider;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final SubscreenDeviceModelParent mDeviceModel;
    public final SubscreenNotificationController$mDeviceStateCallback$1 mDeviceStateCallback;
    public final SubscreenNotificationController$mRemoteInputCancelListener$1 mRemoteInputCancelListener;
    public final MediaFeatureFlag mediaFeatureFlag;
    public final NotifPipeline notifPipeline;
    public final NotificationController notificationController;
    public final Lazy pluginAODManagerLazy;
    public SubscreenNotificationReplyActivity replyActivity;
    public final StatusBarStateController statusBarStateController;
    public final List subscreenStateListenerList;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.SubscreenNotificationController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class AnonymousClass1 implements BindEventManager.Listener, FunctionAdapter {
        public AnonymousClass1() {
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof BindEventManager.Listener) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function getFunctionDelegate() {
            return new FunctionReferenceImpl(1, SubscreenNotificationController.this, SubscreenNotificationController.class, "onEntryViewBound", "onEntryViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        /* JADX WARN: Code restructure failed: missing block: B:264:0x02d0, code lost:
        
            if (r8 == null) goto L160;
         */
        /* JADX WARN: Code restructure failed: missing block: B:292:0x0335, code lost:
        
            if (r0 != null) goto L191;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:123:0x033c  */
        /* JADX WARN: Removed duplicated region for block: B:267:0x02f0  */
        /* JADX WARN: Removed duplicated region for block: B:278:0x02f5  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x01a9  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x01e9  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x01b1  */
        /* JADX WARN: Type inference failed for: r0v26 */
        /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v53 */
        /* JADX WARN: Type inference failed for: r0v54, types: [java.lang.Boolean, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v59 */
        /* JADX WARN: Type inference failed for: r0v60, types: [java.lang.Boolean, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v65, types: [java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r0v67, types: [java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r0v73 */
        /* JADX WARN: Type inference failed for: r0v74, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v76 */
        /* JADX WARN: Type inference failed for: r0v77, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v80, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r14v2, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelParent] */
        /* JADX WARN: Type inference failed for: r4v37 */
        /* JADX WARN: Type inference failed for: r4v38, types: [java.lang.StringBuilder, java.lang.String] */
        /* JADX WARN: Type inference failed for: r4v57 */
        /* JADX WARN: Type inference failed for: r6v2, types: [android.view.View] */
        /* JADX WARN: Type inference failed for: r6v26 */
        /* JADX WARN: Type inference failed for: r6v27 */
        /* JADX WARN: Type inference failed for: r6v28 */
        /* JADX WARN: Type inference failed for: r7v17 */
        /* JADX WARN: Type inference failed for: r7v18, types: [com.android.systemui.statusbar.notification.SubscreenNotificationInfo] */
        /* JADX WARN: Type inference failed for: r7v20, types: [com.android.systemui.statusbar.notification.SubscreenNotificationInfo] */
        /* JADX WARN: Type inference failed for: r7v29, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelParent] */
        /* JADX WARN: Type inference failed for: r8v28, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r8v29, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r8v8 */
        /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v11, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v12, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.String] */
        @Override // com.android.systemui.statusbar.notification.collection.inflation.BindEventManager.Listener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onViewBound(com.android.systemui.statusbar.notification.collection.NotificationEntry r15) {
            /*
                Method dump skipped, instructions count: 1249
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenNotificationController.AnonymousClass1.onViewBound(com.android.systemui.statusbar.notification.collection.NotificationEntry):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00f7  */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.statusbar.notification.SubscreenNotificationController$mDeviceStateCallback$1, android.hardware.devicestate.DeviceStateManager$DeviceStateCallback] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.notification.SubscreenNotificationController$mRemoteInputCancelListener$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SubscreenNotificationController(android.content.Context r19, com.android.systemui.settings.UserContextProvider r20, com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider r21, dagger.Lazy r22, dagger.Lazy r23, dagger.Lazy r24, com.android.keyguard.KeyguardUpdateMonitor r25, com.android.systemui.util.SettingsHelper r26, com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection r27, com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider r28, com.android.systemui.statusbar.notification.collection.inflation.BindEventManager r29, com.android.systemui.bixby2.controller.NotificationController r30, android.os.UserManager r31, com.android.systemui.statusbar.notification.ConversationNotificationManager r32, java.util.Optional<com.android.wm.shell.bubbles.Bubbles> r33, com.android.systemui.log.LogBuffer r34, com.android.systemui.statusbar.notification.collection.provider.DebugModeFilterProvider r35, com.android.systemui.statusbar.notification.interruption.KeyguardNotificationVisibilityProvider r36, com.android.systemui.plugins.statusbar.StatusBarStateController r37, com.android.systemui.ForegroundServiceController r38, com.android.systemui.media.controls.util.MediaFeatureFlag r39, com.android.systemui.statusbar.notification.collection.NotifPipeline r40) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenNotificationController.<init>(android.content.Context, com.android.systemui.settings.UserContextProvider, com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider, dagger.Lazy, dagger.Lazy, dagger.Lazy, com.android.keyguard.KeyguardUpdateMonitor, com.android.systemui.util.SettingsHelper, com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection, com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider, com.android.systemui.statusbar.notification.collection.inflation.BindEventManager, com.android.systemui.bixby2.controller.NotificationController, android.os.UserManager, com.android.systemui.statusbar.notification.ConversationNotificationManager, java.util.Optional, com.android.systemui.log.LogBuffer, com.android.systemui.statusbar.notification.collection.provider.DebugModeFilterProvider, com.android.systemui.statusbar.notification.interruption.KeyguardNotificationVisibilityProvider, com.android.systemui.plugins.statusbar.StatusBarStateController, com.android.systemui.ForegroundServiceController, com.android.systemui.media.controls.util.MediaFeatureFlag, com.android.systemui.statusbar.notification.collection.NotifPipeline):void");
    }

    public final int getUnreadCount(NotificationEntry notificationEntry) {
        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(this.context, notificationEntry.mSbn.getNotification());
        ConversationNotificationManager conversationNotificationManager = this.conversationNotificationManager;
        Object compute = conversationNotificationManager.states.compute(notificationEntry.mKey, new ConversationNotificationManager$getUnreadCount$1(notificationEntry, conversationNotificationManager, recoverBuilder));
        Intrinsics.checkNotNull(compute);
        return ((ConversationNotificationManager.ConversationState) compute).unreadCount;
    }

    public final void hideDetailNotif() {
        SubscreenSubRoomNotification subscreenSubRoomNotification;
        SubscreenNotificationInfo subscreenNotificationInfo;
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter;
        NotificationEntry notificationEntry;
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter2;
        SubscreenDeviceModelParent subscreenDeviceModelParent = this.mDeviceModel;
        if (subscreenDeviceModelParent != null) {
            subscreenSubRoomNotification = subscreenDeviceModelParent.getSubRoomNotification();
        } else {
            subscreenSubRoomNotification = null;
        }
        if (!(subscreenSubRoomNotification instanceof SubscreenSubRoomNotification)) {
            subscreenSubRoomNotification = null;
        }
        if (subscreenSubRoomNotification != null && (subscreenNotificationDetailAdapter2 = subscreenSubRoomNotification.mNotificationDetailAdapter) != null) {
            subscreenNotificationInfo = subscreenNotificationDetailAdapter2.mSelectNotificationInfo;
        } else {
            subscreenNotificationInfo = null;
        }
        if (subscreenNotificationInfo != null) {
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("   hide recyclerview ", subscreenNotificationInfo.mKey, Reflection.getOrCreateKotlinClass(SubscreenQuickReplyCoordinator.class).getSimpleName());
            ExpandableNotificationRow expandableNotificationRow = subscreenNotificationInfo.mRow;
            if (expandableNotificationRow != null && (notificationEntry = expandableNotificationRow.mEntry) != null) {
                notificationEntry.mIsGhost = false;
            }
            PendingIntent pendingIntent = subscreenNotificationInfo.mRemoteInputActionIntent;
            if (pendingIntent != null) {
                pendingIntent.unregisterCancelListener(this.mRemoteInputCancelListener);
            }
            Iterator it = ((ArrayList) this.subscreenStateListenerList).iterator();
            while (it.hasNext()) {
                SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1 subscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1 = (SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1) it.next();
                String str = subscreenNotificationInfo.mKey;
                subscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1.getClass();
                Log.d("SubscreenQuickReplyCoordinator", "   end extension - " + str);
                SubscreenQuickReplyCoordinator.SubscreenQuickReplyExtender subscreenQuickReplyExtender = subscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1.this$0.mQuickReplyExtender;
                if (str == null) {
                    str = "";
                }
                subscreenQuickReplyExtender.endLifetimeExtension(str);
            }
            if (subscreenSubRoomNotification != null) {
                subscreenNotificationDetailAdapter = subscreenSubRoomNotification.mNotificationDetailAdapter;
            } else {
                subscreenNotificationDetailAdapter = null;
            }
            if (subscreenNotificationDetailAdapter != null) {
                subscreenNotificationDetailAdapter.mSelectNotificationInfo = null;
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
    public final void onEntryAdded(NotificationEntry notificationEntry) {
        SubscreenDeviceModelParent subscreenDeviceModelParent = this.mDeviceModel;
        if (subscreenDeviceModelParent != null && subscreenDeviceModelParent.isSubScreen()) {
            StringBuilder sb = new StringBuilder("entryAdded parent : ");
            String str = notificationEntry.mKey;
            ExifInterface$$ExternalSyntheticOutline0.m(sb, str, "S.S.N.");
            if (subscreenDeviceModelParent.mIsReplyNotification) {
                subscreenDeviceModelParent.mIsReplyNotification = false;
            }
            if (subscreenDeviceModelParent.isProper(notificationEntry, false)) {
                Log.d("S.S.N.", "entryAdded - add popup key");
                subscreenDeviceModelParent.showPopupEntryKeySet.add(str);
                notificationEntry.interruption = true;
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
    public final void onEntryRemoved(NotificationEntry notificationEntry, int i) {
        NotificationActivityStarter notificationActivityStarter;
        StatusBarNotificationActivityStarter statusBarNotificationActivityStarter;
        NotificationEntry notificationEntry2;
        SubscreenDeviceModelParent subscreenDeviceModelParent = this.mDeviceModel;
        if (subscreenDeviceModelParent != null) {
            StringBuilder sb = new StringBuilder("onEntryRemoved parent : ");
            String str = notificationEntry.mKey;
            ExifInterface$$ExternalSyntheticOutline0.m(sb, str, "S.S.N.");
            subscreenDeviceModelParent.mNotiKeySet.remove(str);
            subscreenDeviceModelParent.showPopupEntryKeySet.remove(str);
            if (NotiRune.NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT && (notificationActivityStarter = subscreenDeviceModelParent.mNotificationActivityStarter) != null && (notificationEntry2 = (statusBarNotificationActivityStarter = (StatusBarNotificationActivityStarter) notificationActivityStarter).mPendingFullscreenEntry) != null && notificationEntry2.mKey.equals(str)) {
                statusBarNotificationActivityStarter.mPendingFullscreenEntry = null;
            }
            if (subscreenDeviceModelParent.isSubScreen()) {
                int notifyListAdapterItemRemoved = subscreenDeviceModelParent.notifyListAdapterItemRemoved(notificationEntry);
                int notifyGroupAdapterItemRemoved = subscreenDeviceModelParent.notifyGroupAdapterItemRemoved(notificationEntry);
                subscreenDeviceModelParent.mMainListArrayHashMap.remove(str);
                subscreenDeviceModelParent.mMainListAddEntryHashMap.remove(str);
                subscreenDeviceModelParent.mMainListUpdateItemHashMap.remove(str);
                StringBuilder sb2 = new StringBuilder("onEntryRemoved parent - remove List index : ");
                sb2.append(notifyListAdapterItemRemoved);
                sb2.append(", group index : ");
                RecyclerView$$ExternalSyntheticOutline0.m(sb2, notifyGroupAdapterItemRemoved, "S.S.N.");
                if (notifyListAdapterItemRemoved >= 0) {
                    subscreenDeviceModelParent.mIsNotificationRemoved = true;
                    subscreenDeviceModelParent.mMainListRemoveEntryHashMap.put(str, notificationEntry);
                }
                SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelParent.mSubRoomNotification;
                if (subscreenSubRoomNotification != null) {
                    subscreenSubRoomNotification.updateNotificationState(notificationEntry, 1);
                }
                LinkedHashMap linkedHashMap = subscreenDeviceModelParent.mFullScreenIntentEntries;
                if (linkedHashMap.get(str) != null) {
                    Log.d("S.S.N.", "REMOVE fullscreenIntent notification - " + str);
                }
                subscreenDeviceModelParent.dismissImmediately(notificationEntry);
                subscreenDeviceModelParent.removeSmartReplyHashMap(str);
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
    public final void onEntryUpdated(NotificationEntry notificationEntry) {
        SubscreenDeviceModelParent subscreenDeviceModelParent = this.mDeviceModel;
        if (subscreenDeviceModelParent != null && subscreenDeviceModelParent.isSubScreen()) {
            StringBuilder sb = new StringBuilder("entryUpdated parent : ");
            String str = notificationEntry.mKey;
            ExifInterface$$ExternalSyntheticOutline0.m(sb, str, "S.S.N.");
            if (subscreenDeviceModelParent.mIsReplyNotification) {
                subscreenDeviceModelParent.mIsReplyNotification = false;
            }
            notificationEntry.interruption = true;
            if (subscreenDeviceModelParent.isProper(notificationEntry, true)) {
                Log.d("S.S.N.", "entryUpdated - add popup key");
                subscreenDeviceModelParent.showPopupEntryKeySet.add(str);
            }
        }
    }

    public final void onFoldStateChanged(boolean z) {
        SubscreenDeviceModelParent subscreenDeviceModelParent;
        if (NotiRune.NOTI_SUBSCREEN_GHOST_NOTIFICATION && !z && (subscreenDeviceModelParent = this.mDeviceModel) != null) {
            subscreenDeviceModelParent.hideDetailNotification();
        }
        SubscreenDeviceModelParent subscreenDeviceModelParent2 = this.mDeviceModel;
        if (subscreenDeviceModelParent2 != null) {
            subscreenDeviceModelParent2.foldStateChanged(z);
        }
    }

    public final void replyNotification(String str, String str2) {
        SubscreenSubRoomNotification subscreenSubRoomNotification;
        SubscreenNotificationInfo subscreenNotificationInfo;
        NotificationEntry notificationEntry;
        SubscreenDeviceModelParent.MainListHashMapItem mainListHashMapItem;
        Boolean bool;
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter;
        SubscreenNotificationInfo subscreenNotificationInfo2;
        String str3;
        SubscreenSubRoomNotification subscreenSubRoomNotification2;
        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager;
        boolean z;
        String str4;
        Notification notification2;
        StatusBarNotification statusBarNotification;
        Integer num;
        StatusBarNotification statusBarNotification2;
        Notification notification3;
        StatusBarNotification statusBarNotification3;
        Notification notification4;
        StatusBarNotification statusBarNotification4;
        PendingIntent pendingIntent;
        String str5;
        ExpandableNotificationRow expandableNotificationRow;
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter2;
        SubscreenDeviceModelParent subscreenDeviceModelParent = this.mDeviceModel;
        Integer num2 = null;
        if (subscreenDeviceModelParent != null) {
            subscreenSubRoomNotification = subscreenDeviceModelParent.getSubRoomNotification();
        } else {
            subscreenSubRoomNotification = null;
        }
        if (!(subscreenSubRoomNotification instanceof SubscreenSubRoomNotification)) {
            subscreenSubRoomNotification = null;
        }
        if (subscreenSubRoomNotification != null && (subscreenNotificationDetailAdapter2 = subscreenSubRoomNotification.mNotificationDetailAdapter) != null) {
            subscreenNotificationInfo = subscreenNotificationDetailAdapter2.mSelectNotificationInfo;
        } else {
            subscreenNotificationInfo = null;
        }
        if (subscreenNotificationInfo != null && (expandableNotificationRow = subscreenNotificationInfo.mRow) != null) {
            notificationEntry = expandableNotificationRow.mEntry;
        } else {
            notificationEntry = null;
        }
        boolean z2 = true;
        if (NotiRune.NOTI_SUBSCREEN_GHOST_NOTIFICATION && useHistory(notificationEntry)) {
            if (notificationEntry != null && !notificationEntry.mIsGhost) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (notificationEntry != null) {
                    notificationEntry.mIsGhost = true;
                }
                String simpleName = Reflection.getOrCreateKotlinClass(SubscreenQuickReplyCoordinator.class).getSimpleName();
                if (notificationEntry != null) {
                    str5 = notificationEntry.mKey;
                } else {
                    str5 = null;
                }
                KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("   ", str5, " will be ghost ", simpleName);
            }
            if (subscreenNotificationInfo != null && (pendingIntent = subscreenNotificationInfo.mRemoteInputActionIntent) != null) {
                pendingIntent.addCancelListener((Executor) Dependency.get(Dependency.MAIN_EXECUTOR), this.mRemoteInputCancelListener);
            }
            Iterator it = ((ArrayList) this.subscreenStateListenerList).iterator();
            while (it.hasNext()) {
                SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1 subscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1 = (SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1) it.next();
                subscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1.getClass();
                if (notificationEntry != null) {
                    str4 = notificationEntry.mKey;
                } else {
                    str4 = null;
                }
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("   subscreen quick reply - ", str4, "SubscreenQuickReplyCoordinator");
                if (notificationEntry != null && (statusBarNotification4 = notificationEntry.mSbn) != null) {
                    notification2 = statusBarNotification4.getNotification();
                } else {
                    notification2 = null;
                }
                if (notification2 != null) {
                    if (notificationEntry != null && (statusBarNotification3 = notificationEntry.mSbn) != null && (notification4 = statusBarNotification3.getNotification()) != null) {
                        num = Integer.valueOf(notification4.flags | 8);
                    } else if (notificationEntry != null && (statusBarNotification2 = notificationEntry.mSbn) != null && (notification3 = statusBarNotification2.getNotification()) != null) {
                        num = Integer.valueOf(notification3.flags);
                    } else {
                        num = null;
                    }
                    notification2.flags = num.intValue();
                }
                NotifCollection$$ExternalSyntheticLambda4 notifCollection$$ExternalSyntheticLambda4 = subscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1.this$0.mNotifUpdater;
                if (notifCollection$$ExternalSyntheticLambda4 == null) {
                    notifCollection$$ExternalSyntheticLambda4 = null;
                }
                if (notificationEntry != null) {
                    statusBarNotification = notificationEntry.mSbn;
                } else {
                    statusBarNotification = null;
                }
                notifCollection$$ExternalSyntheticLambda4.onInternalNotificationUpdate("Extending lifetime of notification with subscreen quick reply", statusBarNotification);
            }
        }
        SubscreenDeviceModelParent subscreenDeviceModelParent2 = this.mDeviceModel;
        if (subscreenDeviceModelParent2 != null) {
            subscreenDeviceModelParent2.mIsReplyNotification = true;
        }
        if (subscreenDeviceModelParent2 != null && (mainListHashMapItem = (SubscreenDeviceModelParent.MainListHashMapItem) subscreenDeviceModelParent2.mMainListArrayHashMap.get(str)) != null) {
            NotificationEntry notificationEntry2 = mainListHashMapItem.mEntry;
            if (notificationEntry2 != null) {
                bool = Boolean.valueOf(notificationEntry2.canBubble());
            } else {
                bool = null;
            }
            Intrinsics.checkNotNull(bool);
            if (bool.booleanValue()) {
                Log.d("S.S.N.", "hideDetailAdapterAfterBubbleReply parent - Entry  : " + notificationEntry2.mKey);
                if (subscreenDeviceModelParent2.isShownGroup()) {
                    SubscreenSubRoomNotification subscreenSubRoomNotification3 = subscreenDeviceModelParent2.mSubRoomNotification;
                    if (subscreenSubRoomNotification3 != null && (subscreenNotificationInfoManager = subscreenSubRoomNotification3.mNotificationInfoManager) != null) {
                        num2 = Integer.valueOf(subscreenNotificationInfoManager.removeGroupDataArrayItem(notificationEntry2));
                    }
                    if (num2 != null && num2.intValue() >= 0 && (subscreenSubRoomNotification2 = subscreenDeviceModelParent2.mSubRoomNotification) != null && (subscreenNotificationGroupAdapter = subscreenSubRoomNotification2.mNotificationGroupAdapter) != null) {
                        subscreenNotificationGroupAdapter.notifyItemRemoved(num2.intValue());
                    }
                } else {
                    subscreenDeviceModelParent2.notifyListAdapterItemRemoved(notificationEntry2);
                }
                if (NotiRune.NOTI_SUBSCREEN_GHOST_NOTIFICATION && subscreenDeviceModelParent2.isShownDetail()) {
                    SubscreenSubRoomNotification subscreenSubRoomNotification4 = subscreenDeviceModelParent2.mSubRoomNotification;
                    if (subscreenSubRoomNotification4 == null || (subscreenNotificationDetailAdapter = subscreenSubRoomNotification4.mNotificationDetailAdapter) == null || (subscreenNotificationInfo2 = subscreenNotificationDetailAdapter.mSelectNotificationInfo) == null || (str3 = subscreenNotificationInfo2.mKey) == null || !str3.equals(notificationEntry2.mKey)) {
                        z2 = false;
                    }
                    if (z2) {
                        if (subscreenDeviceModelParent2.mController.useHistory(notificationEntry2)) {
                            subscreenDeviceModelParent2.hideDetailNotification();
                        }
                        subscreenDeviceModelParent2.mIsUpdatedAllMainList = false;
                    }
                }
                subscreenDeviceModelParent2.mBubbleReplyEntry = notificationEntry2;
                subscreenDeviceModelParent2.removeMainHashItem(notificationEntry2);
            }
        }
        this.notificationController.replyNotification(str, str2);
    }

    public final void requestDozeState(int i, boolean z) {
        PluginAODManager pluginAODManager = (PluginAODManager) this.pluginAODManagerLazy.get();
        PluginAOD pluginAOD = pluginAODManager.mAODPlugin;
        if (pluginAOD != null) {
            pluginAOD.requestMODState(i, z);
            return;
        }
        PluginClockPack pluginClockPack = pluginAODManager.mClockPackPlugin;
        if (pluginClockPack != null) {
            pluginClockPack.requestMODState(i, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
    
        if (r0 == false) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean shouldFilterOut(com.android.systemui.statusbar.notification.collection.NotificationEntry r5) {
        /*
            r4 = this;
            com.android.systemui.statusbar.notification.collection.provider.DebugModeFilterProvider r0 = r4.debugModeFilterProvider
            java.util.List r1 = r0.allowedPackages
            boolean r1 = r1.isEmpty()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto Le
            r0 = r2
            goto L1b
        Le:
            java.util.List r0 = r0.allowedPackages
            android.service.notification.StatusBarNotification r1 = r5.mSbn
            java.lang.String r1 = r1.getPackageName()
            boolean r0 = r0.contains(r1)
            r0 = r0 ^ r3
        L1b:
            if (r0 == 0) goto L1f
            goto Lbb
        L1f:
            com.android.keyguard.KeyguardUpdateMonitor r0 = r4.keyguardUpdateMonitor
            boolean r0 = r0.mDeviceProvisioned
            if (r0 != 0) goto L3e
            android.service.notification.StatusBarNotification r1 = r5.mSbn
            if (r0 != 0) goto L39
            android.app.Notification r0 = r1.getNotification()
            android.os.Bundle r0 = r0.extras
            java.lang.String r1 = "android.allowDuringSetup"
            boolean r0 = r0.getBoolean(r1)
            if (r0 != 0) goto L39
            r0 = r3
            goto L3a
        L39:
            r0 = r2
        L3a:
            if (r0 != 0) goto L3e
            goto Lbb
        L3e:
            java.lang.Class<com.android.systemui.statusbar.NotificationLockscreenUserManager> r0 = com.android.systemui.statusbar.NotificationLockscreenUserManager.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.statusbar.NotificationLockscreenUserManager r0 = (com.android.systemui.statusbar.NotificationLockscreenUserManager) r0
            android.service.notification.StatusBarNotification r1 = r5.mSbn
            int r1 = r1.getUserId()
            com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl r0 = (com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl) r0
            boolean r0 = r0.isCurrentProfile(r1)
            if (r0 != 0) goto L56
            goto Lbb
        L56:
            com.android.systemui.statusbar.notification.interruption.KeyguardNotificationVisibilityProvider r0 = r4.keyguardNotificationVisibilityProvider
            com.android.systemui.statusbar.notification.interruption.KeyguardNotificationVisibilityProviderImpl r0 = (com.android.systemui.statusbar.notification.interruption.KeyguardNotificationVisibilityProviderImpl) r0
            boolean r0 = r0.shouldHideNotification(r5)
            if (r0 == 0) goto L61
            goto Lbb
        L61:
            com.android.systemui.plugins.statusbar.StatusBarStateController r0 = r4.statusBarStateController
            boolean r0 = r0.isDozing()
            if (r0 == 0) goto L72
            r0 = 128(0x80, float:1.794E-43)
            boolean r0 = r5.shouldSuppressVisualEffect(r0)
            if (r0 == 0) goto L72
            goto Lbb
        L72:
            r0 = 256(0x100, float:3.59E-43)
            boolean r0 = r5.shouldSuppressVisualEffect(r0)
            if (r0 == 0) goto L7b
            goto Lbb
        L7b:
            android.service.notification.NotificationListenerService$Ranking r0 = r5.mRanking
            boolean r0 = r0.isSuspended()
            if (r0 == 0) goto L84
            goto Lbb
        L84:
            android.service.notification.StatusBarNotification r0 = r5.mSbn
            com.android.systemui.ForegroundServiceController r1 = r4.foregroundServiceController
            r1.getClass()
            boolean r1 = com.android.systemui.ForegroundServiceController.isDisclosureNotification(r0)
            if (r1 == 0) goto L9f
            com.android.systemui.ForegroundServiceController r1 = r4.foregroundServiceController
            int r0 = r0.getUserId()
            boolean r0 = r1.isDisclosureNeededForUser(r0)
            if (r0 != 0) goto L9f
            r0 = r3
            goto La0
        L9f:
            r0 = r2
        La0:
            if (r0 == 0) goto La3
            goto Lbb
        La3:
            com.android.systemui.media.controls.util.MediaFeatureFlag r4 = r4.mediaFeatureFlag
            android.content.Context r4 = r4.context
            boolean r4 = com.android.systemui.util.Utils.useQsMediaPlayer(r4)
            if (r4 == 0) goto Lbc
            android.service.notification.StatusBarNotification r4 = r5.mSbn
            java.lang.String[] r5 = com.android.systemui.media.controls.pipeline.MediaDataManagerKt.ART_URIS
            android.app.Notification r4 = r4.getNotification()
            boolean r4 = r4.isMediaNotification()
            if (r4 == 0) goto Lbc
        Lbb:
            r2 = r3
        Lbc:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenNotificationController.shouldFilterOut(com.android.systemui.statusbar.notification.collection.NotificationEntry):boolean");
    }

    public final boolean useHistory(NotificationEntry notificationEntry) {
        boolean z;
        List list;
        int i;
        NotificationManager notificationManager;
        if (notificationEntry == null) {
            return false;
        }
        SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        settingsHelper.getClass();
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH && settingsHelper.mItemLists.get("notification_history_enabled").getIntValue() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z && (notificationManager = (NotificationManager) this.context.getSystemService(NotificationManager.class)) != null) {
            list = notificationManager.semGetNotificationHistoryForPackage(this.context.getPackageName(), this.context.getAttributionTag(), notificationEntry.mSbn.getUserId(), notificationEntry.mSbn.getPackageName(), notificationEntry.mSbn.getKey(), 1);
        } else {
            list = null;
        }
        if (list != null) {
            i = list.size();
        } else {
            i = 0;
        }
        if (i <= 0) {
            return false;
        }
        return true;
    }

    public final void onTableModeChanged(boolean z) {
    }
}
