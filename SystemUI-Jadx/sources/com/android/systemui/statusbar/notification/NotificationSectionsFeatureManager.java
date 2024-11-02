package com.android.systemui.statusbar.notification;

import android.content.Context;
import android.provider.DeviceConfig;
import com.android.systemui.util.DeviceConfigProxy;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationSectionsFeatureManager {
    public final DeviceConfigProxy proxy;

    public NotificationSectionsFeatureManager(DeviceConfigProxy deviceConfigProxy, Context context) {
        this.proxy = deviceConfigProxy;
    }

    public final void clearCache() {
        NotificationSectionsFeatureManagerKt.sUsePeopleFiltering = null;
    }

    public final boolean isFilteringEnabled() {
        if (NotificationSectionsFeatureManagerKt.sUsePeopleFiltering == null) {
            this.proxy.getClass();
            NotificationSectionsFeatureManagerKt.sUsePeopleFiltering = Boolean.valueOf(DeviceConfig.getBoolean("systemui", "notifications_use_people_filtering", true));
        }
        Boolean bool = NotificationSectionsFeatureManagerKt.sUsePeopleFiltering;
        Intrinsics.checkNotNull(bool);
        return bool.booleanValue();
    }
}
