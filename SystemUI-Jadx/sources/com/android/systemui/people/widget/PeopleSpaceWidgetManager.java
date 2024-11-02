package com.android.systemui.people.widget;

import android.app.INotificationManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Person;
import android.app.backup.BackupManager;
import android.app.job.JobScheduler;
import android.app.people.ConversationChannel;
import android.app.people.IPeopleManager;
import android.app.people.PeopleManager;
import android.app.people.PeopleSpaceTile;
import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.os.UserManager;
import android.preference.PreferenceManager;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.logging.UiEventLoggerImpl;
import com.android.internal.util.ArrayUtils;
import com.android.internal.widget.MessagingMessage;
import com.android.settingslib.utils.ThreadUtils;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.people.NotificationHelper;
import com.android.systemui.people.NotificationHelper$$ExternalSyntheticLambda0;
import com.android.systemui.people.PeopleSpaceUtils;
import com.android.systemui.people.PeopleSpaceUtils$$ExternalSyntheticLambda0;
import com.android.systemui.people.PeopleTileViewHelper;
import com.android.systemui.people.widget.PeopleBackupHelper;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.android.systemui.statusbar.NotificationListener;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.wm.shell.bubbles.Bubbles;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PeopleSpaceWidgetManager {
    public static final Map mListeners = new HashMap();
    public static final Map mTiles = new HashMap();
    public final AppWidgetManager mAppWidgetManager;
    public final BackupManager mBackupManager;
    public final AnonymousClass2 mBaseBroadcastReceiver;
    public final Executor mBgExecutor;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final Optional mBubblesOptional;
    public final Context mContext;
    public final INotificationManager mINotificationManager;
    public final IPeopleManager mIPeopleManager;
    public final LauncherApps mLauncherApps;
    public final AnonymousClass1 mListener;
    public final Object mLock;
    public final PeopleSpaceWidgetManager mManager;
    public final CommonNotifCollection mNotifCollection;
    public final Map mNotificationKeyToWidgetIdsMatchedByUri;
    public final NotificationManager mNotificationManager;
    public final PackageManager mPackageManager;
    public final PeopleManager mPeopleManager;
    public boolean mRegisteredReceivers;
    public final SharedPreferences mSharedPrefs;
    public final UiEventLogger mUiEventLogger;
    public final UserManager mUserManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.people.widget.PeopleSpaceWidgetManager$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends BroadcastReceiver {
        public AnonymousClass2() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            PeopleSpaceWidgetManager.this.mBgExecutor.execute(new PeopleSpaceWidgetManager$$ExternalSyntheticLambda0(2, this, intent));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.people.widget.PeopleSpaceWidgetManager$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType;

        static {
            int[] iArr = new int[PeopleBackupHelper.SharedFileEntryType.values().length];
            $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType = iArr;
            try {
                iArr[PeopleBackupHelper.SharedFileEntryType.WIDGET_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType[PeopleBackupHelper.SharedFileEntryType.PEOPLE_TILE_KEY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType[PeopleBackupHelper.SharedFileEntryType.CONTACT_URI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$people$widget$PeopleBackupHelper$SharedFileEntryType[PeopleBackupHelper.SharedFileEntryType.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TileConversationListener implements PeopleManager.ConversationListener {
        public TileConversationListener() {
        }

        public final void onConversationUpdate(ConversationChannel conversationChannel) {
            PeopleSpaceWidgetManager.this.mBgExecutor.execute(new PeopleSpaceWidgetManager$$ExternalSyntheticLambda0(3, this, conversationChannel));
        }
    }

    public PeopleSpaceWidgetManager(Context context, LauncherApps launcherApps, CommonNotifCollection commonNotifCollection, PackageManager packageManager, Optional<Bubbles> optional, UserManager userManager, NotificationManager notificationManager, BroadcastDispatcher broadcastDispatcher, Executor executor) {
        this.mLock = new Object();
        this.mUiEventLogger = new UiEventLoggerImpl();
        this.mNotificationKeyToWidgetIdsMatchedByUri = new HashMap();
        this.mListener = new AnonymousClass1();
        this.mBaseBroadcastReceiver = new AnonymousClass2();
        this.mContext = context;
        this.mAppWidgetManager = AppWidgetManager.getInstance(context);
        this.mIPeopleManager = IPeopleManager.Stub.asInterface(ServiceManager.getService("people"));
        this.mLauncherApps = launcherApps;
        this.mSharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        this.mPeopleManager = (PeopleManager) context.getSystemService(PeopleManager.class);
        this.mNotifCollection = commonNotifCollection;
        this.mPackageManager = packageManager;
        this.mINotificationManager = INotificationManager.Stub.asInterface(ServiceManager.getService(SubRoom.EXTRA_VALUE_NOTIFICATION));
        this.mBubblesOptional = optional;
        this.mUserManager = userManager;
        this.mBackupManager = new BackupManager(context);
        this.mNotificationManager = notificationManager;
        this.mManager = this;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mBgExecutor = executor;
    }

    public static Set getNewWidgets(Set set, final Map map) {
        return (Set) set.stream().map(new Function() { // from class: com.android.systemui.people.widget.PeopleSpaceWidgetManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (String) map.get((String) obj);
            }
        }).filter(new PeopleSpaceWidgetManager$$ExternalSyntheticLambda2(0)).collect(Collectors.toSet());
    }

    public final void addNewWidget(final int i, PeopleTileKey peopleTileKey) {
        PeopleTileKey keyFromStorageByWidgetId;
        try {
            PeopleSpaceTile tileFromPersistentStorage = getTileFromPersistentStorage(peopleTileKey, i, false);
            if (tileFromPersistentStorage == null) {
                return;
            }
            final PeopleSpaceTile augmentTileFromNotificationEntryManager = augmentTileFromNotificationEntryManager(tileFromPersistentStorage, Optional.of(Integer.valueOf(i)));
            synchronized (this.mLock) {
                keyFromStorageByWidgetId = getKeyFromStorageByWidgetId(i);
            }
            if (PeopleTileKey.isValid(keyFromStorageByWidgetId)) {
                deleteWidgets(new int[]{i});
            } else {
                this.mUiEventLogger.log(PeopleSpaceUtils.PeopleSpaceWidgetEvent.PEOPLE_SPACE_WIDGET_ADDED);
            }
            synchronized (this.mLock) {
                PeopleSpaceUtils.setSharedPreferencesStorageForTile(this.mContext, peopleTileKey, i, augmentTileFromNotificationEntryManager.getContactUri(), this.mBackupManager);
            }
            registerConversationListenerIfNeeded(i, peopleTileKey);
            try {
                this.mLauncherApps.cacheShortcuts(augmentTileFromNotificationEntryManager.getPackageName(), Collections.singletonList(augmentTileFromNotificationEntryManager.getId()), augmentTileFromNotificationEntryManager.getUserHandle(), 2);
            } catch (Exception e) {
                Log.w("PeopleSpaceWidgetMgr", "failed to cache shortcut for widget " + i, e);
            }
            this.mBgExecutor.execute(new Runnable() { // from class: com.android.systemui.people.widget.PeopleSpaceWidgetManager$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    PeopleSpaceWidgetManager.this.updateAppWidgetOptionsAndView(i, augmentTileFromNotificationEntryManager);
                }
            });
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e("PeopleSpaceWidgetMgr", "Cannot add widget " + i + " since app was uninstalled");
        }
    }

    public final PeopleSpaceTile augmentTileFromNotificationEntryManager(PeopleSpaceTile peopleSpaceTile, Optional optional) {
        String str;
        PeopleTileKey peopleTileKey = new PeopleTileKey(peopleSpaceTile);
        Map groupConversationNotifications = groupConversationNotifications(((NotifPipeline) this.mNotifCollection).getAllNotifs());
        if (peopleSpaceTile.getContactUri() != null) {
            str = peopleSpaceTile.getContactUri().toString();
        } else {
            str = null;
        }
        return augmentTileFromNotifications(peopleSpaceTile, peopleTileKey, str, groupConversationNotifications, optional);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.util.List] */
    public final PeopleSpaceTile augmentTileFromNotifications(PeopleSpaceTile peopleSpaceTile, PeopleTileKey peopleTileKey, final String str, Map map, Optional optional) {
        boolean z;
        NotificationEntry notificationEntry;
        Notification.MessagingStyle.Message message;
        CharSequence text;
        Uri uri;
        Person senderPerson;
        List<Notification.MessagingStyle.Message> messagingStyleMessages;
        ArrayList arrayList;
        String packageName = peopleSpaceTile.getPackageName();
        final PackageManager packageManager = this.mPackageManager;
        boolean z2 = true;
        if (packageManager.checkPermission("android.permission.READ_CONTACTS", packageName) == 0) {
            z = true;
        } else {
            z = false;
        }
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            PeopleTileKey peopleTileKey2 = PeopleSpaceUtils.EMPTY_KEY;
            if (TextUtils.isEmpty(str)) {
                arrayList = new ArrayList();
            } else {
                arrayList = (List) map.entrySet().stream().flatMap(new PeopleSpaceUtils$$ExternalSyntheticLambda0()).filter(new Predicate() { // from class: com.android.systemui.people.PeopleSpaceUtils$$ExternalSyntheticLambda1
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean z3;
                        boolean isMissedCall;
                        PackageManager packageManager2 = packageManager;
                        String str2 = str;
                        NotificationEntry notificationEntry2 = (NotificationEntry) obj;
                        StatusBarNotification statusBarNotification = notificationEntry2.mSbn;
                        NotificationHelper.AnonymousClass1 anonymousClass1 = NotificationHelper.notificationEntryComparator;
                        if (packageManager2.checkPermission("android.permission.READ_CONTACTS", statusBarNotification.getPackageName()) == 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            Notification notification2 = notificationEntry2.mSbn.getNotification();
                            if (notification2 == null) {
                                isMissedCall = false;
                            } else {
                                isMissedCall = NotificationHelper.isMissedCall(notification2);
                            }
                            if (isMissedCall && Objects.equals(str2, NotificationHelper.getContactUri(notificationEntry2.mSbn))) {
                                return true;
                            }
                        }
                        return false;
                    }
                }).collect(Collectors.toList());
            }
            arrayList2 = arrayList;
            arrayList2.isEmpty();
        }
        Set set = (Set) map.get(peopleTileKey);
        if (set == null) {
            set = new HashSet();
        }
        if (set.isEmpty() && arrayList2.isEmpty()) {
            return PeopleSpaceUtils.removeNotificationFields(peopleSpaceTile);
        }
        set.addAll(arrayList2);
        PeopleTileKey peopleTileKey3 = PeopleSpaceUtils.EMPTY_KEY;
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Notification notification2 = ((NotificationEntry) it.next()).mSbn.getNotification();
            if (!NotificationHelper.isMissedCall(notification2) && (messagingStyleMessages = NotificationHelper.getMessagingStyleMessages(notification2)) != null) {
                i += messagingStyleMessages.size();
            }
        }
        NotificationHelper.AnonymousClass1 anonymousClass1 = NotificationHelper.notificationEntryComparator;
        CharSequence charSequence = null;
        if (set.isEmpty()) {
            notificationEntry = null;
        } else {
            notificationEntry = (NotificationEntry) set.stream().filter(new NotificationHelper$$ExternalSyntheticLambda0()).sorted(NotificationHelper.notificationEntryComparator).findFirst().orElse(null);
        }
        if (notificationEntry != null && notificationEntry.mSbn.getNotification() != null) {
            StatusBarNotification statusBarNotification = notificationEntry.mSbn;
            Notification notification3 = statusBarNotification.getNotification();
            PeopleSpaceTile.Builder builder = peopleSpaceTile.toBuilder();
            String contactUri = NotificationHelper.getContactUri(statusBarNotification);
            boolean isPresent = optional.isPresent();
            Context context = this.mContext;
            if (isPresent && peopleSpaceTile.getContactUri() == null && !TextUtils.isEmpty(contactUri)) {
                Uri parse = Uri.parse(contactUri);
                PeopleSpaceUtils.setSharedPreferencesStorageForTile(context, new PeopleTileKey(peopleSpaceTile), ((Integer) optional.get()).intValue(), parse, this.mBackupManager);
                builder.setContactUri(parse);
            }
            boolean isMissedCall = NotificationHelper.isMissedCall(notification3);
            List<Notification.MessagingStyle.Message> messagingStyleMessages2 = NotificationHelper.getMessagingStyleMessages(notification3);
            if (!isMissedCall && ArrayUtils.isEmpty(messagingStyleMessages2)) {
                return PeopleSpaceUtils.removeNotificationFields(builder.build());
            }
            if (messagingStyleMessages2 != null) {
                message = messagingStyleMessages2.get(0);
            } else {
                message = null;
            }
            if (message == null || TextUtils.isEmpty(message.getText())) {
                z2 = false;
            }
            if (isMissedCall && !z2) {
                text = context.getString(R.string.missed_call);
            } else {
                text = message.getText();
            }
            if (message != null && MessagingMessage.hasImage(message)) {
                uri = message.getDataUri();
            } else {
                uri = null;
            }
            if (notification3.extras.getBoolean("android.isGroupConversation", false) && (senderPerson = message.getSenderPerson()) != null) {
                charSequence = senderPerson.getName();
            }
            return builder.setLastInteractionTimestamp(statusBarNotification.getPostTime()).setNotificationKey(statusBarNotification.getKey()).setNotificationCategory(notification3.category).setNotificationContent(text).setNotificationSender(charSequence).setNotificationDataUri(uri).setMessagesCount(i).build();
        }
        return PeopleSpaceUtils.removeNotificationFields(peopleSpaceTile);
    }

    public final void deleteWidgets(int[] iArr) {
        PeopleTileKey peopleTileKey;
        HashSet hashSet;
        String string;
        for (int i : iArr) {
            this.mUiEventLogger.log(PeopleSpaceUtils.PeopleSpaceWidgetEvent.PEOPLE_SPACE_WIDGET_DELETED);
            synchronized (this.mLock) {
                SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(String.valueOf(i), 0);
                peopleTileKey = new PeopleTileKey(sharedPreferences.getString("shortcut_id", null), sharedPreferences.getInt(UcmAgentProviderImpl.UcmAgentSpiProperty.KEY_USER_ID, -1), sharedPreferences.getString("package_name", null));
                if (!PeopleTileKey.isValid(peopleTileKey)) {
                    Log.e("PeopleSpaceWidgetMgr", "Invalid tile key trying to remove widget " + i);
                    return;
                }
                hashSet = new HashSet(this.mSharedPrefs.getStringSet(peopleTileKey.toString(), new HashSet()));
                string = this.mSharedPrefs.getString(String.valueOf(i), null);
            }
            synchronized (this.mLock) {
                PeopleSpaceUtils.removeSharedPreferencesStorageForTile(this.mContext, peopleTileKey, i, string);
            }
            if (hashSet.contains(String.valueOf(i)) && hashSet.size() == 1) {
                Map map = mListeners;
                synchronized (map) {
                    TileConversationListener tileConversationListener = (TileConversationListener) ((HashMap) map).get(peopleTileKey);
                    if (tileConversationListener != null) {
                        ((HashMap) map).remove(peopleTileKey);
                        this.mPeopleManager.unregisterConversationListener(tileConversationListener);
                    }
                }
                try {
                    this.mLauncherApps.uncacheShortcuts(peopleTileKey.mPackageName, Collections.singletonList(peopleTileKey.mShortcutId), UserHandle.of(peopleTileKey.mUserId), 2);
                } catch (Exception e) {
                    Log.d("PeopleSpaceWidgetMgr", "failed to uncache shortcut", e);
                }
            }
        }
    }

    public final PeopleTileKey getKeyFromStorageByWidgetId(int i) {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(String.valueOf(i), 0);
        return new PeopleTileKey(sharedPreferences.getString("shortcut_id", ""), sharedPreferences.getInt(UcmAgentProviderImpl.UcmAgentSpiProperty.KEY_USER_ID, -1), sharedPreferences.getString("package_name", ""));
    }

    public final Set getMatchingKeyWidgetIds(PeopleTileKey peopleTileKey) {
        if (!PeopleTileKey.isValid(peopleTileKey)) {
            return new HashSet();
        }
        return new HashSet(this.mSharedPrefs.getStringSet(peopleTileKey.toString(), new HashSet()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
    
        if (r1.isEmpty() != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.Set getMatchingUriWidgetIds(android.service.notification.StatusBarNotification r4, com.android.systemui.people.PeopleSpaceUtils.NotificationAction r5) {
        /*
            r3 = this;
            com.android.systemui.people.PeopleSpaceUtils$NotificationAction r0 = com.android.systemui.people.PeopleSpaceUtils.NotificationAction.POSTED
            boolean r5 = r5.equals(r0)
            java.util.Map r0 = r3.mNotificationKeyToWidgetIdsMatchedByUri
            if (r5 == 0) goto L4b
            com.android.systemui.people.NotificationHelper$1 r5 = com.android.systemui.people.NotificationHelper.notificationEntryComparator
            android.app.Notification r5 = r4.getNotification()
            if (r5 != 0) goto L14
            r5 = 0
            goto L18
        L14:
            boolean r5 = com.android.systemui.people.NotificationHelper.isMissedCall(r5)
        L18:
            if (r5 != 0) goto L1b
            goto L38
        L1b:
            java.lang.String r5 = com.android.systemui.people.NotificationHelper.getContactUri(r4)
            if (r5 != 0) goto L22
            goto L38
        L22:
            java.util.HashSet r1 = new java.util.HashSet
            java.util.HashSet r2 = new java.util.HashSet
            r2.<init>()
            android.content.SharedPreferences r3 = r3.mSharedPrefs
            java.util.Set r3 = r3.getStringSet(r5, r2)
            r1.<init>(r3)
            boolean r3 = r1.isEmpty()
            if (r3 == 0) goto L39
        L38:
            r1 = 0
        L39:
            if (r1 == 0) goto L60
            boolean r3 = r1.isEmpty()
            if (r3 != 0) goto L60
            java.lang.String r3 = r4.getKey()
            java.util.HashMap r0 = (java.util.HashMap) r0
            r0.put(r3, r1)
            return r1
        L4b:
            java.lang.String r3 = r4.getKey()
            java.util.HashMap r0 = (java.util.HashMap) r0
            java.lang.Object r3 = r0.remove(r3)
            java.util.Set r3 = (java.util.Set) r3
            if (r3 == 0) goto L60
            boolean r4 = r3.isEmpty()
            if (r4 != 0) goto L60
            return r3
        L60:
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.people.widget.PeopleSpaceWidgetManager.getMatchingUriWidgetIds(android.service.notification.StatusBarNotification, com.android.systemui.people.PeopleSpaceUtils$NotificationAction):java.util.Set");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getNotificationPolicyState() {
        /*
            r4 = this;
            android.app.NotificationManager r4 = r4.mNotificationManager
            android.app.NotificationManager$Policy r0 = r4.getNotificationPolicy()
            int r1 = r0.suppressedVisualEffects
            boolean r1 = android.app.NotificationManager.Policy.areAllVisualEffectsSuppressed(r1)
            r2 = 1
            if (r1 != 0) goto L10
            return r2
        L10:
            int r4 = r4.getCurrentInterruptionFilter()
            if (r4 == r2) goto L43
            r1 = 2
            if (r4 == r1) goto L1a
            goto L42
        L1a:
            boolean r4 = r0.allowConversations()
            if (r4 == 0) goto L29
            int r4 = r0.priorityConversationSenders
            if (r4 != r2) goto L25
            return r2
        L25:
            if (r4 != r1) goto L29
            r4 = 4
            goto L2a
        L29:
            r4 = 0
        L2a:
            boolean r3 = r0.allowMessages()
            if (r3 == 0) goto L3f
            int r0 = r0.allowMessagesFrom()
            if (r0 == r2) goto L3c
            if (r0 == r1) goto L39
            return r2
        L39:
            r4 = r4 | 8
            return r4
        L3c:
            r4 = r4 | 16
            return r4
        L3f:
            if (r4 == 0) goto L42
            return r4
        L42:
            return r1
        L43:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.people.widget.PeopleSpaceWidgetManager.getNotificationPolicyState():int");
    }

    public final boolean getPackageSuspended(PeopleSpaceTile peopleSpaceTile) {
        boolean z;
        boolean isEmpty = TextUtils.isEmpty(peopleSpaceTile.getPackageName());
        PackageManager packageManager = this.mPackageManager;
        if (!isEmpty && packageManager.isPackageSuspended(peopleSpaceTile.getPackageName())) {
            z = true;
        } else {
            z = false;
        }
        String packageName = peopleSpaceTile.getPackageName();
        PeopleTileKey peopleTileKey = PeopleSpaceUtils.EMPTY_KEY;
        packageManager.getApplicationInfoAsUser(packageName, 128, peopleSpaceTile.getUserHandle().getIdentifier());
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.widget.RemoteViews getPreview(java.lang.String r4, android.os.UserHandle r5, java.lang.String r6, android.os.Bundle r7) {
        /*
            r3 = this;
            r0 = 0
            android.app.people.IPeopleManager r1 = r3.mIPeopleManager     // Catch: java.lang.Exception -> L51
            int r5 = r5.getIdentifier()     // Catch: java.lang.Exception -> L51
            android.app.people.ConversationChannel r4 = r1.getConversation(r6, r5, r4)     // Catch: java.lang.Exception -> L51
            android.content.pm.LauncherApps r5 = r3.mLauncherApps     // Catch: java.lang.Exception -> L51
            com.android.systemui.people.widget.PeopleTileKey r6 = com.android.systemui.people.PeopleSpaceUtils.EMPTY_KEY     // Catch: java.lang.Exception -> L51
            java.lang.String r6 = "PeopleSpaceUtils"
            r1 = 0
            if (r4 != 0) goto L1a
            java.lang.String r4 = "ConversationChannel is null"
            android.util.Log.i(r6, r4)     // Catch: java.lang.Exception -> L51
            goto L39
        L1a:
            android.app.people.PeopleSpaceTile$Builder r2 = new android.app.people.PeopleSpaceTile$Builder     // Catch: java.lang.Exception -> L51
            r2.<init>(r4, r5)     // Catch: java.lang.Exception -> L51
            android.app.people.PeopleSpaceTile r4 = r2.build()     // Catch: java.lang.Exception -> L51
            if (r4 == 0) goto L31
            java.lang.CharSequence r5 = r4.getUserName()     // Catch: java.lang.Exception -> L51
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L51
            if (r5 != 0) goto L31
            r5 = 1
            goto L32
        L31:
            r5 = r1
        L32:
            if (r5 != 0) goto L3a
            java.lang.String r4 = "PeopleSpaceTile is not valid"
            android.util.Log.i(r6, r4)     // Catch: java.lang.Exception -> L51
        L39:
            r4 = r0
        L3a:
            if (r4 != 0) goto L3d
            return r0
        L3d:
            java.util.Optional r5 = java.util.Optional.empty()
            android.app.people.PeopleSpaceTile r4 = r3.augmentTileFromNotificationEntryManager(r4, r5)
            com.android.systemui.people.widget.PeopleTileKey r5 = new com.android.systemui.people.widget.PeopleTileKey
            r5.<init>(r4)
            android.content.Context r3 = r3.mContext
            android.widget.RemoteViews r3 = com.android.systemui.people.PeopleTileViewHelper.createRemoteViews(r3, r4, r1, r7, r5)
            return r3
        L51:
            r3 = move-exception
            java.lang.String r4 = "PeopleSpaceWidgetMgr"
            java.lang.String r5 = "failed to get conversation or tile"
            android.util.Log.w(r4, r5, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.people.widget.PeopleSpaceWidgetManager.getPreview(java.lang.String, android.os.UserHandle, java.lang.String, android.os.Bundle):android.widget.RemoteViews");
    }

    public final PeopleSpaceTile getTileForExistingWidget(int i) {
        try {
            return getTileForExistingWidgetThrowing(i);
        } catch (Exception e) {
            Log.e("PeopleSpaceWidgetMgr", "failed to retrieve tile for existing widget " + i, e);
            return null;
        }
    }

    public final PeopleSpaceTile getTileForExistingWidgetThrowing(int i) {
        PeopleSpaceTile peopleSpaceTile;
        Map map = mTiles;
        synchronized (map) {
            peopleSpaceTile = (PeopleSpaceTile) ((HashMap) map).get(Integer.valueOf(i));
        }
        if (peopleSpaceTile != null) {
            return peopleSpaceTile;
        }
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(String.valueOf(i), 0);
        return getTileFromPersistentStorage(new PeopleTileKey(sharedPreferences.getString("shortcut_id", ""), sharedPreferences.getInt(UcmAgentProviderImpl.UcmAgentSpiProperty.KEY_USER_ID, -1), sharedPreferences.getString("package_name", "")), i, true);
    }

    public final PeopleSpaceTile getTileFromPersistentStorage(PeopleTileKey peopleTileKey, int i, boolean z) {
        LauncherApps launcherApps;
        if (!PeopleTileKey.isValid(peopleTileKey)) {
            NestedScrollView$$ExternalSyntheticOutline0.m("Invalid tile key finding tile for existing widget ", i, "PeopleSpaceWidgetMgr");
            return null;
        }
        IPeopleManager iPeopleManager = this.mIPeopleManager;
        if (iPeopleManager != null && (launcherApps = this.mLauncherApps) != null) {
            try {
                ConversationChannel conversation = iPeopleManager.getConversation(peopleTileKey.mPackageName, peopleTileKey.mUserId, peopleTileKey.mShortcutId);
                if (conversation == null) {
                    return null;
                }
                PeopleSpaceTile.Builder builder = new PeopleSpaceTile.Builder(conversation, launcherApps);
                String string = this.mSharedPrefs.getString(String.valueOf(i), null);
                if (z && string != null && builder.build().getContactUri() == null) {
                    builder.setContactUri(Uri.parse(string));
                }
                return getTileWithCurrentState(builder.build(), "android.intent.action.BOOT_COMPLETED");
            } catch (RemoteException e) {
                Log.e("PeopleSpaceWidgetMgr", "getTileFromPersistentStorage failing for widget " + i, e);
                return null;
            }
        }
        Log.d("PeopleSpaceWidgetMgr", "System services are null");
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final PeopleSpaceTile getTileWithCurrentState(PeopleSpaceTile peopleSpaceTile, String str) {
        char c;
        PeopleSpaceTile.Builder builder = peopleSpaceTile.toBuilder();
        boolean z = false;
        switch (str.hashCode()) {
            case -1238404651:
                if (str.equals("android.intent.action.MANAGED_PROFILE_UNAVAILABLE")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1001645458:
                if (str.equals("android.intent.action.PACKAGES_SUSPENDED")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -864107122:
                if (str.equals("android.intent.action.MANAGED_PROFILE_AVAILABLE")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -19011148:
                if (str.equals("android.intent.action.LOCALE_CHANGED")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 798292259:
                if (str.equals("android.intent.action.BOOT_COMPLETED")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 833559602:
                if (str.equals("android.intent.action.USER_UNLOCKED")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1290767157:
                if (str.equals("android.intent.action.PACKAGES_UNSUSPENDED")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 2106958107:
                if (str.equals("android.app.action.INTERRUPTION_FILTER_CHANGED")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        UserManager userManager = this.mUserManager;
        switch (c) {
            case 0:
                builder.setNotificationPolicyState(getNotificationPolicyState());
                break;
            case 1:
            case 2:
                builder.setIsPackageSuspended(getPackageSuspended(peopleSpaceTile));
                break;
            case 3:
            case 4:
            case 5:
                if (peopleSpaceTile.getUserHandle() != null && userManager.isQuietModeEnabled(peopleSpaceTile.getUserHandle())) {
                    z = true;
                }
                builder.setIsUserQuieted(z);
                break;
            case 6:
                break;
            default:
                if (peopleSpaceTile.getUserHandle() != null && userManager.isQuietModeEnabled(peopleSpaceTile.getUserHandle())) {
                    z = true;
                }
                builder.setIsUserQuieted(z).setIsPackageSuspended(getPackageSuspended(peopleSpaceTile)).setNotificationPolicyState(getNotificationPolicyState());
                break;
        }
        return builder.build();
    }

    public final Map groupConversationNotifications(Collection collection) {
        return (Map) collection.stream().filter(new Predicate() { // from class: com.android.systemui.people.widget.PeopleSpaceWidgetManager$$ExternalSyntheticLambda3
            /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
            @Override // java.util.function.Predicate
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final boolean test(java.lang.Object r4) {
                /*
                    r3 = this;
                    com.android.systemui.people.widget.PeopleSpaceWidgetManager r3 = com.android.systemui.people.widget.PeopleSpaceWidgetManager.this
                    com.android.systemui.statusbar.notification.collection.NotificationEntry r4 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r4
                    r3.getClass()
                    com.android.systemui.people.NotificationHelper$1 r0 = com.android.systemui.people.NotificationHelper.notificationEntryComparator
                    r0 = 1
                    r1 = 0
                    if (r4 == 0) goto L21
                    android.service.notification.NotificationListenerService$Ranking r2 = r4.mRanking
                    if (r2 == 0) goto L21
                    android.content.pm.ShortcutInfo r2 = r2.getConversationShortcutInfo()
                    if (r2 == 0) goto L21
                    android.service.notification.StatusBarNotification r2 = r4.mSbn
                    android.app.Notification r2 = r2.getNotification()
                    if (r2 == 0) goto L21
                    r2 = r0
                    goto L22
                L21:
                    r2 = r1
                L22:
                    if (r2 == 0) goto L56
                    boolean r2 = com.android.systemui.people.NotificationHelper.isMissedCallOrHasContent(r4)
                    if (r2 == 0) goto L56
                    java.util.Optional r3 = r3.mBubblesOptional
                    boolean r2 = r3.isPresent()     // Catch: java.lang.Exception -> L4a
                    if (r2 == 0) goto L52
                    java.lang.Object r3 = r3.get()     // Catch: java.lang.Exception -> L4a
                    com.android.wm.shell.bubbles.Bubbles r3 = (com.android.wm.shell.bubbles.Bubbles) r3     // Catch: java.lang.Exception -> L4a
                    java.lang.String r2 = r4.mKey     // Catch: java.lang.Exception -> L4a
                    android.service.notification.StatusBarNotification r4 = r4.mSbn     // Catch: java.lang.Exception -> L4a
                    java.lang.String r4 = r4.getGroupKey()     // Catch: java.lang.Exception -> L4a
                    com.android.wm.shell.bubbles.BubbleController$BubblesImpl r3 = (com.android.wm.shell.bubbles.BubbleController.BubblesImpl) r3     // Catch: java.lang.Exception -> L4a
                    boolean r3 = r3.isBubbleNotificationSuppressedFromShade(r2, r4)     // Catch: java.lang.Exception -> L4a
                    if (r3 == 0) goto L52
                    r3 = r0
                    goto L53
                L4a:
                    r3 = move-exception
                    java.lang.String r4 = "Exception checking if notification is suppressed: "
                    java.lang.String r2 = "PeopleNotifHelper"
                    com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0.m(r4, r3, r2)
                L52:
                    r3 = r1
                L53:
                    if (r3 != 0) goto L56
                    goto L57
                L56:
                    r0 = r1
                L57:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.people.widget.PeopleSpaceWidgetManager$$ExternalSyntheticLambda3.test(java.lang.Object):boolean");
            }
        }).collect(Collectors.groupingBy(new PeopleSpaceWidgetManager$$ExternalSyntheticLambda4(0), Collectors.mapping(Function.identity(), Collectors.toSet())));
    }

    public final void registerConversationListenerIfNeeded(int i, PeopleTileKey peopleTileKey) {
        if (!PeopleTileKey.isValid(peopleTileKey)) {
            IconCompat$$ExternalSyntheticOutline0.m("Invalid tile key registering listener for widget ", i, "PeopleSpaceWidgetMgr");
            return;
        }
        TileConversationListener tileConversationListener = new TileConversationListener();
        Map map = mListeners;
        synchronized (map) {
            if (((HashMap) map).containsKey(peopleTileKey)) {
                return;
            }
            ((HashMap) map).put(peopleTileKey, tileConversationListener);
            this.mPeopleManager.registerConversationListener(peopleTileKey.mPackageName, peopleTileKey.mUserId, peopleTileKey.mShortcutId, tileConversationListener, this.mContext.getMainExecutor());
        }
    }

    public final void updateAppWidgetOptionsAndView(int i, PeopleSpaceTile peopleSpaceTile) {
        if (peopleSpaceTile == null) {
            IconCompat$$ExternalSyntheticOutline0.m("Storing null tile for widget ", i, "PeopleSpaceWidgetMgr");
        }
        Map map = mTiles;
        synchronized (map) {
            ((HashMap) map).put(Integer.valueOf(i), peopleSpaceTile);
        }
        Bundle appWidgetOptions = this.mAppWidgetManager.getAppWidgetOptions(i);
        PeopleTileKey keyFromStorageByWidgetId = getKeyFromStorageByWidgetId(i);
        if (!PeopleTileKey.isValid(keyFromStorageByWidgetId)) {
            NestedScrollView$$ExternalSyntheticOutline0.m("Invalid tile key updating widget ", i, "PeopleSpaceWidgetMgr");
        } else {
            this.mAppWidgetManager.updateAppWidget(i, PeopleTileViewHelper.createRemoteViews(this.mContext, peopleSpaceTile, i, appWidgetOptions, keyFromStorageByWidgetId));
        }
    }

    public final void updateSingleConversationWidgets(final int[] iArr) {
        final HashMap hashMap = new HashMap();
        for (int i : iArr) {
            PeopleSpaceTile tileForExistingWidget = getTileForExistingWidget(i);
            if (tileForExistingWidget == null) {
                NestedScrollView$$ExternalSyntheticOutline0.m("Matching conversation not found for widget ", i, "PeopleSpaceWidgetMgr");
            }
            updateAppWidgetOptionsAndView(i, tileForExistingWidget);
            hashMap.put(Integer.valueOf(i), tileForExistingWidget);
            if (tileForExistingWidget != null) {
                registerConversationListenerIfNeeded(i, new PeopleTileKey(tileForExistingWidget));
            }
        }
        PeopleTileKey peopleTileKey = PeopleSpaceUtils.EMPTY_KEY;
        final Context context = this.mContext;
        final PeopleSpaceWidgetManager peopleSpaceWidgetManager = this.mManager;
        ThreadUtils.postOnBackgroundThread(new Runnable() { // from class: com.android.systemui.people.PeopleSpaceUtils$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PeopleSpaceUtils.getDataFromContacts(context, peopleSpaceWidgetManager, hashMap, iArr);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateStorageAndViewWithConversationData(android.app.people.ConversationChannel r6, int r7) {
        /*
            r5 = this;
            android.app.people.PeopleSpaceTile r0 = r5.getTileForExistingWidget(r7)
            if (r0 != 0) goto L7
            return
        L7:
            android.app.people.PeopleSpaceTile$Builder r0 = r0.toBuilder()
            android.content.pm.ShortcutInfo r1 = r6.getShortcutInfo()
            android.app.Person[] r2 = r1.getPersons()
            r3 = 0
            if (r2 == 0) goto L33
            android.app.Person[] r2 = r1.getPersons()
            int r2 = r2.length
            if (r2 <= 0) goto L33
            android.app.Person[] r2 = r1.getPersons()
            r2 = r2[r3]
            java.lang.String r4 = r2.getUri()
            if (r4 != 0) goto L2a
            goto L33
        L2a:
            java.lang.String r2 = r2.getUri()
            android.net.Uri r2 = android.net.Uri.parse(r2)
            goto L34
        L33:
            r2 = 0
        L34:
            java.lang.CharSequence r4 = r1.getLabel()
            if (r4 == 0) goto L3d
            r0.setUserName(r4)
        L3d:
            android.content.pm.LauncherApps r4 = r5.mLauncherApps
            android.graphics.drawable.Drawable r1 = r4.getShortcutIconDrawable(r1, r3)
            android.graphics.drawable.Icon r1 = android.app.people.PeopleSpaceTile.convertDrawableToIcon(r1)
            if (r1 == 0) goto L4c
            r0.setUserIcon(r1)
        L4c:
            android.app.NotificationChannel r1 = r6.getNotificationChannel()
            if (r1 == 0) goto L59
            boolean r1 = r1.isImportantConversation()
            r0.setIsImportantConversation(r1)
        L59:
            android.app.people.PeopleSpaceTile$Builder r1 = r0.setContactUri(r2)
            java.util.List r2 = r6.getStatuses()
            android.app.people.PeopleSpaceTile$Builder r1 = r1.setStatuses(r2)
            long r2 = r6.getLastEventTimestamp()
            r1.setLastInteractionTimestamp(r2)
            android.app.people.PeopleSpaceTile r6 = r0.build()
            r5.updateAppWidgetOptionsAndView(r7, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.people.widget.PeopleSpaceWidgetManager.updateStorageAndViewWithConversationData(android.app.people.ConversationChannel, int):void");
    }

    public final void updateWidgetIdsBasedOnNotifications(Set set, Collection collection) {
        if (((HashSet) set).isEmpty()) {
            return;
        }
        try {
            final Map groupConversationNotifications = groupConversationNotifications(collection);
            ((Map) set.stream().map(new PeopleSpaceWidgetManager$$ExternalSyntheticLambda4(4)).collect(Collectors.toMap(Function.identity(), new Function() { // from class: com.android.systemui.people.widget.PeopleSpaceWidgetManager$$ExternalSyntheticLambda7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    PeopleSpaceWidgetManager peopleSpaceWidgetManager = PeopleSpaceWidgetManager.this;
                    Map map = groupConversationNotifications;
                    peopleSpaceWidgetManager.getClass();
                    int intValue = ((Integer) obj).intValue();
                    PeopleSpaceTile tileForExistingWidget = peopleSpaceWidgetManager.getTileForExistingWidget(intValue);
                    if (tileForExistingWidget == null) {
                        Log.w("PeopleSpaceWidgetMgr", "Null tile for existing widget " + intValue + ", skipping update.");
                        return Optional.empty();
                    }
                    return Optional.ofNullable(peopleSpaceWidgetManager.augmentTileFromNotifications(tileForExistingWidget, new PeopleTileKey(tileForExistingWidget), peopleSpaceWidgetManager.mSharedPrefs.getString(String.valueOf(intValue), null), map, Optional.of(Integer.valueOf(intValue))));
                }
            }))).forEach(new BiConsumer() { // from class: com.android.systemui.people.widget.PeopleSpaceWidgetManager$$ExternalSyntheticLambda8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    PeopleSpaceWidgetManager peopleSpaceWidgetManager = PeopleSpaceWidgetManager.this;
                    Optional optional = (Optional) obj2;
                    peopleSpaceWidgetManager.getClass();
                    int intValue = ((Integer) obj).intValue();
                    if (optional.isPresent()) {
                        peopleSpaceWidgetManager.updateAppWidgetOptionsAndView(intValue, (PeopleSpaceTile) optional.get());
                    }
                }
            });
        } catch (Exception e) {
            Log.e("PeopleSpaceWidgetMgr", "updateWidgetIdsBasedOnNotifications failing", e);
        }
    }

    public void updateWidgetsFromBroadcastInBackground(String str) {
        int[] appWidgetIds = this.mAppWidgetManager.getAppWidgetIds(new ComponentName(this.mContext, (Class<?>) PeopleSpaceWidgetProvider.class));
        if (appWidgetIds == null) {
            return;
        }
        for (int i : appWidgetIds) {
            try {
                synchronized (this.mLock) {
                    PeopleSpaceTile tileForExistingWidgetThrowing = getTileForExistingWidgetThrowing(i);
                    if (tileForExistingWidgetThrowing == null) {
                        Log.e("PeopleSpaceWidgetMgr", "Matching conversation not found for widget " + i);
                    } else {
                        updateAppWidgetOptionsAndView(i, getTileWithCurrentState(tileForExistingWidgetThrowing, str));
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("PeopleSpaceWidgetMgr", "Package no longer found for widget " + i, e);
                JobScheduler jobScheduler = (JobScheduler) this.mContext.getSystemService(JobScheduler.class);
                if (jobScheduler == null || jobScheduler.getPendingJob(74823873) == null) {
                    synchronized (this.mLock) {
                        updateAppWidgetOptionsAndView(i, null);
                        deleteWidgets(new int[]{i});
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.people.widget.PeopleSpaceWidgetManager$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements NotificationListener.NotificationHandler {
        public AnonymousClass1() {
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationChannelModified(String str, UserHandle userHandle, NotificationChannel notificationChannel, int i) {
            if (notificationChannel.isConversation()) {
                PeopleSpaceWidgetManager.this.mBgExecutor.execute(new PeopleSpaceWidgetManager$$ExternalSyntheticLambda0(1, this, userHandle));
            }
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationPosted(StatusBarNotification statusBarNotification, NotificationListenerService.RankingMap rankingMap) {
            PeopleSpaceUtils.NotificationAction notificationAction = PeopleSpaceUtils.NotificationAction.POSTED;
            PeopleSpaceWidgetManager peopleSpaceWidgetManager = PeopleSpaceWidgetManager.this;
            peopleSpaceWidgetManager.mBgExecutor.execute(new PeopleSpaceWidgetManager$$ExternalSyntheticLambda6(peopleSpaceWidgetManager, statusBarNotification, notificationAction, ((NotifPipeline) peopleSpaceWidgetManager.mNotifCollection).getAllNotifs()));
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationRemoved(StatusBarNotification statusBarNotification, NotificationListenerService.RankingMap rankingMap, int i) {
            PeopleSpaceUtils.NotificationAction notificationAction = PeopleSpaceUtils.NotificationAction.REMOVED;
            PeopleSpaceWidgetManager peopleSpaceWidgetManager = PeopleSpaceWidgetManager.this;
            peopleSpaceWidgetManager.mBgExecutor.execute(new PeopleSpaceWidgetManager$$ExternalSyntheticLambda6(peopleSpaceWidgetManager, statusBarNotification, notificationAction, ((NotifPipeline) peopleSpaceWidgetManager.mNotifCollection).getAllNotifs()));
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationRankingUpdate(NotificationListenerService.RankingMap rankingMap) {
        }

        @Override // com.android.systemui.statusbar.NotificationListener.NotificationHandler
        public final void onNotificationsInitialized() {
        }
    }

    public PeopleSpaceWidgetManager(Context context, AppWidgetManager appWidgetManager, IPeopleManager iPeopleManager, PeopleManager peopleManager, LauncherApps launcherApps, CommonNotifCollection commonNotifCollection, PackageManager packageManager, Optional<Bubbles> optional, UserManager userManager, BackupManager backupManager, INotificationManager iNotificationManager, NotificationManager notificationManager, Executor executor) {
        this.mLock = new Object();
        this.mUiEventLogger = new UiEventLoggerImpl();
        this.mNotificationKeyToWidgetIdsMatchedByUri = new HashMap();
        this.mListener = new AnonymousClass1();
        this.mBaseBroadcastReceiver = new AnonymousClass2();
        this.mContext = context;
        this.mAppWidgetManager = appWidgetManager;
        this.mIPeopleManager = iPeopleManager;
        this.mPeopleManager = peopleManager;
        this.mLauncherApps = launcherApps;
        this.mNotifCollection = commonNotifCollection;
        this.mPackageManager = packageManager;
        this.mBubblesOptional = optional;
        this.mUserManager = userManager;
        this.mBackupManager = backupManager;
        this.mINotificationManager = iNotificationManager;
        this.mNotificationManager = notificationManager;
        this.mManager = this;
        this.mSharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        this.mBgExecutor = executor;
    }
}
