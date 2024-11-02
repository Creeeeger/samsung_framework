package com.android.systemui.statusbar.notification.collection.notifcollection;

import android.app.NotificationChannel;
import android.os.UserHandle;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ChannelChangedEvent extends NotifEvent {
    public final NotificationChannel channel;
    public final int modificationType;
    public final String pkgName;
    public final UserHandle user;

    public ChannelChangedEvent(String str, UserHandle userHandle, NotificationChannel notificationChannel, int i) {
        super(null);
        this.pkgName = str;
        this.user = userHandle;
        this.channel = notificationChannel;
        this.modificationType = i;
    }

    @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifEvent
    public final void dispatchToListener(NotifCollectionListener notifCollectionListener) {
        notifCollectionListener.onNotificationChannelModified(this.pkgName, this.user, this.channel, this.modificationType);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChannelChangedEvent)) {
            return false;
        }
        ChannelChangedEvent channelChangedEvent = (ChannelChangedEvent) obj;
        if (Intrinsics.areEqual(this.pkgName, channelChangedEvent.pkgName) && Intrinsics.areEqual(this.user, channelChangedEvent.user) && Intrinsics.areEqual(this.channel, channelChangedEvent.channel) && this.modificationType == channelChangedEvent.modificationType) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.modificationType) + ((this.channel.hashCode() + ((this.user.hashCode() + (this.pkgName.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ChannelChangedEvent(pkgName=" + this.pkgName + ", user=" + this.user + ", channel=" + this.channel + ", modificationType=" + this.modificationType + ")";
    }
}
