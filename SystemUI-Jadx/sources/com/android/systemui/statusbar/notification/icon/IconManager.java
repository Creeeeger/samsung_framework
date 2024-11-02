package com.android.systemui.statusbar.notification.icon;

import android.app.Notification;
import android.app.Person;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.util.Log;
import android.widget.ImageView;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.systemui.R;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.notification.InflationException;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IconManager implements ConversationIconManager {
    public final IconBuilder iconBuilder;
    public final LauncherApps launcherApps;
    public final CommonNotifCollection notifCollection;
    public Set unimportantConversationKeys = EmptySet.INSTANCE;
    public final IconManager$entryListener$1 entryListener = new NotifCollectionListener() { // from class: com.android.systemui.statusbar.notification.icon.IconManager$entryListener$1
        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryCleanUp(NotificationEntry notificationEntry) {
            notificationEntry.mOnSensitivityChangedListeners.remove(IconManager.this.sensitivityListener);
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onEntryInit(NotificationEntry notificationEntry) {
            notificationEntry.mOnSensitivityChangedListeners.addIfAbsent(IconManager.this.sensitivityListener);
        }

        @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
        public final void onRankingApplied() {
            IconManager.this.recalculateForImportantConversationChange();
        }
    };
    public final IconManager$sensitivityListener$1 sensitivityListener = new NotificationEntry.OnSensitivityChangedListener() { // from class: com.android.systemui.statusbar.notification.icon.IconManager$sensitivityListener$1
        @Override // com.android.systemui.statusbar.notification.collection.NotificationEntry.OnSensitivityChangedListener
        public final void onSensitivityChanged(NotificationEntry notificationEntry) {
            IconManager iconManager = IconManager.this;
            iconManager.getClass();
            try {
                iconManager.updateIcons(notificationEntry);
            } catch (InflationException e) {
                Log.e("IconManager", "Unable to update icon", e);
            }
        }
    };

    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.statusbar.notification.icon.IconManager$entryListener$1] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.statusbar.notification.icon.IconManager$sensitivityListener$1] */
    public IconManager(CommonNotifCollection commonNotifCollection, LauncherApps launcherApps, IconBuilder iconBuilder) {
        this.notifCollection = commonNotifCollection;
        this.launcherApps = launcherApps;
        this.iconBuilder = iconBuilder;
    }

    public final void createIcons(NotificationEntry notificationEntry) {
        StatusBarIconView statusBarIconView;
        StatusBarIcon statusBarIcon;
        IconBuilder iconBuilder = this.iconBuilder;
        StatusBarIconView createIconView = iconBuilder.createIconView(notificationEntry);
        createIconView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        StatusBarIconView createIconView2 = iconBuilder.createIconView(notificationEntry);
        createIconView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        createIconView2.setVisibility(4);
        StatusBarIconView createIconView3 = iconBuilder.createIconView(notificationEntry);
        createIconView3.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        createIconView3.mIncreasedSize = true;
        createIconView3.maybeUpdateIconScaleDimens();
        if (notificationEntry.mSbn.getNotification().isMediaNotification()) {
            statusBarIconView = iconBuilder.createIconView(notificationEntry);
            statusBarIconView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        } else {
            statusBarIconView = null;
        }
        StatusBarIcon iconDescriptor = getIconDescriptor(notificationEntry, false);
        if (notificationEntry.mSensitive) {
            statusBarIcon = getIconDescriptor(notificationEntry, true);
        } else {
            statusBarIcon = iconDescriptor;
        }
        Pair pair = new Pair(iconDescriptor, statusBarIcon);
        StatusBarIcon statusBarIcon2 = (StatusBarIcon) pair.component1();
        StatusBarIcon statusBarIcon3 = (StatusBarIcon) pair.component2();
        try {
            setIcon(statusBarIcon2, createIconView, notificationEntry);
            setIcon(statusBarIcon3, createIconView2, notificationEntry);
            setIcon(statusBarIcon3, createIconView3, notificationEntry);
            if (statusBarIconView != null) {
                setIcon(statusBarIcon2, statusBarIconView, notificationEntry);
            }
            notificationEntry.mIcons = IconPack.buildPack(createIconView, createIconView2, createIconView3, statusBarIconView, notificationEntry.mIcons);
        } catch (InflationException e) {
            notificationEntry.mIcons = IconPack.buildEmptyPack(notificationEntry.mIcons);
            throw e;
        }
    }

    public final StatusBarIcon getIconDescriptor(NotificationEntry notificationEntry, boolean z) {
        boolean z2;
        Icon smallIcon;
        Notification notification2 = notificationEntry.mSbn.getNotification();
        if (isImportantConversation(notificationEntry) && !z) {
            z2 = true;
        } else {
            z2 = false;
        }
        IconPack iconPack = notificationEntry.mIcons;
        StatusBarIcon statusBarIcon = iconPack.mPeopleAvatarDescriptor;
        StatusBarIcon statusBarIcon2 = iconPack.mSmallIconDescriptor;
        if (z2 && statusBarIcon != null) {
            return statusBarIcon;
        }
        if (!z2 && statusBarIcon2 != null) {
            return statusBarIcon2;
        }
        if (z2) {
            ShortcutInfo conversationShortcutInfo = notificationEntry.mRanking.getConversationShortcutInfo();
            if (conversationShortcutInfo != null) {
                smallIcon = this.launcherApps.getShortcutIcon(conversationShortcutInfo);
            } else {
                smallIcon = null;
            }
            if (smallIcon == null) {
                Bundle bundle = notificationEntry.mSbn.getNotification().extras;
                List<Notification.MessagingStyle.Message> messagesFromBundleArray = Notification.MessagingStyle.Message.getMessagesFromBundleArray(bundle.getParcelableArray("android.messages"));
                Person person = (Person) bundle.getParcelable("android.messagingUser");
                int size = messagesFromBundleArray.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i = size - 1;
                        Notification.MessagingStyle.Message message = messagesFromBundleArray.get(size);
                        Person senderPerson = message.getSenderPerson();
                        if (senderPerson != null && senderPerson != person) {
                            Person senderPerson2 = message.getSenderPerson();
                            Intrinsics.checkNotNull(senderPerson2);
                            smallIcon = senderPerson2.getIcon();
                            break;
                        }
                        if (i < 0) {
                            break;
                        }
                        size = i;
                    }
                }
            }
            if (smallIcon == null) {
                smallIcon = notificationEntry.mSbn.getNotification().getLargeIcon();
            }
            if (smallIcon == null) {
                smallIcon = notificationEntry.mSbn.getNotification().getSmallIcon();
            }
            if (smallIcon == null) {
                throw new InflationException(KeyAttributes$$ExternalSyntheticOutline0.m("No icon in notification from ", notificationEntry.mSbn.getPackageName()));
            }
        } else {
            smallIcon = notification2.getSmallIcon();
        }
        Icon icon = smallIcon;
        if (icon != null) {
            StatusBarIcon statusBarIcon3 = new StatusBarIcon(notificationEntry.mSbn.getUser(), notificationEntry.mSbn.getPackageName(), icon, notification2.iconLevel, notification2.number, StatusBarIconView.contentDescForNotification(this.iconBuilder.context, notification2));
            if (isImportantConversation(notificationEntry)) {
                if (z2) {
                    notificationEntry.mIcons.mPeopleAvatarDescriptor = statusBarIcon3;
                } else {
                    notificationEntry.mIcons.mSmallIconDescriptor = statusBarIcon3;
                }
            }
            return statusBarIcon3;
        }
        throw new InflationException(KeyAttributes$$ExternalSyntheticOutline0.m("No icon in notification from ", notificationEntry.mSbn.getPackageName()));
    }

    public final boolean isImportantConversation(NotificationEntry notificationEntry) {
        if (notificationEntry.mRanking.getChannel() != null && notificationEntry.mRanking.getChannel().isImportantConversation() && !this.unimportantConversationKeys.contains(notificationEntry.mKey)) {
            return true;
        }
        return false;
    }

    public final void recalculateForImportantConversationChange() {
        for (NotificationEntry notificationEntry : ((NotifPipeline) this.notifCollection).getAllNotifs()) {
            boolean isImportantConversation = isImportantConversation(notificationEntry);
            IconPack iconPack = notificationEntry.mIcons;
            if (iconPack.mAreIconsAvailable && isImportantConversation != iconPack.mIsImportantConversation) {
                try {
                    updateIcons(notificationEntry);
                } catch (InflationException e) {
                    Log.e("IconManager", "Unable to update icon", e);
                }
            }
            notificationEntry.mIcons.mIsImportantConversation = isImportantConversation;
        }
    }

    public final void setIcon(StatusBarIcon statusBarIcon, StatusBarIconView statusBarIconView, NotificationEntry notificationEntry) {
        boolean z;
        boolean z2;
        boolean z3;
        IconPack iconPack = notificationEntry.mIcons;
        boolean z4 = true;
        if (statusBarIconView != iconPack.mShelfIcon && statusBarIconView != iconPack.mAodIcon) {
            z = false;
        } else {
            z = true;
        }
        boolean equals = statusBarIcon.icon.equals(notificationEntry.mSbn.getNotification().getSmallIcon());
        if (isImportantConversation(notificationEntry) && !equals) {
            z2 = true;
        } else {
            z2 = false;
        }
        statusBarIconView.setTag(R.id.conversation_notification, Boolean.valueOf(z2));
        if (isImportantConversation(notificationEntry) && !equals && (!z || !notificationEntry.mSensitive)) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (statusBarIconView.mShowsConversation != z3) {
            statusBarIconView.mShowsConversation = z3;
            statusBarIconView.updateIconColor();
        }
        if (notificationEntry.targetSdk >= 21) {
            z4 = false;
        }
        statusBarIconView.setTag(R.id.icon_is_pre_L, Boolean.valueOf(z4));
        if (statusBarIconView.set(statusBarIcon)) {
            return;
        }
        throw new InflationException("Couldn't create icon " + statusBarIcon);
    }

    public final void updateIcons(NotificationEntry notificationEntry) {
        StatusBarIcon statusBarIcon;
        IconPack iconPack = notificationEntry.mIcons;
        if (!iconPack.mAreIconsAvailable) {
            return;
        }
        iconPack.mSmallIconDescriptor = null;
        iconPack.mPeopleAvatarDescriptor = null;
        StatusBarIcon iconDescriptor = getIconDescriptor(notificationEntry, false);
        if (notificationEntry.mSensitive) {
            statusBarIcon = getIconDescriptor(notificationEntry, true);
        } else {
            statusBarIcon = iconDescriptor;
        }
        Pair pair = new Pair(iconDescriptor, statusBarIcon);
        StatusBarIcon statusBarIcon2 = (StatusBarIcon) pair.component1();
        StatusBarIcon statusBarIcon3 = (StatusBarIcon) pair.component2();
        StatusBarIconView statusBarIconView = notificationEntry.mIcons.mStatusBarIcon;
        if (statusBarIconView != null) {
            statusBarIconView.setNotification(notificationEntry.mSbn);
            setIcon(statusBarIcon2, statusBarIconView, notificationEntry);
        }
        StatusBarIconView statusBarIconView2 = notificationEntry.mIcons.mShelfIcon;
        if (statusBarIconView2 != null) {
            statusBarIconView2.setNotification(notificationEntry.mSbn);
            setIcon(statusBarIcon2, statusBarIconView2, notificationEntry);
        }
        StatusBarIconView statusBarIconView3 = notificationEntry.mIcons.mAodIcon;
        if (statusBarIconView3 != null) {
            statusBarIconView3.setNotification(notificationEntry.mSbn);
            setIcon(statusBarIcon3, statusBarIconView3, notificationEntry);
        }
        StatusBarIconView statusBarIconView4 = notificationEntry.mIcons.mCenteredIcon;
        if (statusBarIconView4 != null) {
            statusBarIconView4.setNotification(notificationEntry.mSbn);
            setIcon(statusBarIcon3, statusBarIconView4, notificationEntry);
        }
    }
}
