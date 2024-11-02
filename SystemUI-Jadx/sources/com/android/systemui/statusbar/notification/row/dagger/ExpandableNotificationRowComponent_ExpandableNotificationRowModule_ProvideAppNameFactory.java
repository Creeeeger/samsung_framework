package com.android.systemui.statusbar.notification.row.dagger;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.service.notification.StatusBarNotification;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory implements Provider {
    public final Provider contextProvider;
    public final Provider statusBarNotificationProvider;

    public ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory(Provider provider, Provider provider2) {
        this.contextProvider = provider;
        this.statusBarNotificationProvider = provider2;
    }

    public static String provideAppName(Context context, StatusBarNotification statusBarNotification) {
        PackageManager packageManagerForUser = CentralSurfaces.getPackageManagerForUser(statusBarNotification.getUser().getIdentifier(), context);
        String packageName = statusBarNotification.getPackageName();
        try {
            ApplicationInfo applicationInfo = packageManagerForUser.getApplicationInfo(packageName, 8704);
            if (applicationInfo != null) {
                packageName = String.valueOf(packageManagerForUser.getApplicationLabel(applicationInfo));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        Preconditions.checkNotNullFromProvides(packageName);
        return packageName;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideAppName((Context) this.contextProvider.get(), (StatusBarNotification) this.statusBarNotificationProvider.get());
    }
}
