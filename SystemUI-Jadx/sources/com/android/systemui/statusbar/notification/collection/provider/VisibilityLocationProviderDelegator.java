package com.android.systemui.statusbar.notification.collection.provider;

import com.android.systemui.statusbar.notification.VisibilityLocationProvider;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VisibilityLocationProviderDelegator implements VisibilityLocationProvider {
    public VisibilityLocationProvider delegate;

    @Override // com.android.systemui.statusbar.notification.VisibilityLocationProvider
    public final boolean isInVisibleLocation(NotificationEntry notificationEntry) {
        VisibilityLocationProvider visibilityLocationProvider = this.delegate;
        if (visibilityLocationProvider != null) {
            return visibilityLocationProvider.isInVisibleLocation(notificationEntry);
        }
        throw new IllegalArgumentException("delegate not initialized".toString());
    }
}
