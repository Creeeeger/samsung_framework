package com.android.systemui.statusbar.notification.logging;

import com.android.systemui.flags.FeatureFlags;
import dagger.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationMemoryMonitor {
    public final FeatureFlags featureFlags;
    public final NotificationMemoryDumper notificationMemoryDumper;

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

    public NotificationMemoryMonitor(FeatureFlags featureFlags, NotificationMemoryDumper notificationMemoryDumper, Lazy lazy) {
        this.featureFlags = featureFlags;
        this.notificationMemoryDumper = notificationMemoryDumper;
    }
}
