package com.android.systemui.dagger;

import android.content.Context;
import android.permission.PermissionManager;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FrameworkServicesModule_ProvidePermissionManagerFactory implements Provider {
    public final Provider contextProvider;

    public FrameworkServicesModule_ProvidePermissionManagerFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static PermissionManager providePermissionManager(Context context) {
        PermissionManager permissionManager = (PermissionManager) context.getSystemService(PermissionManager.class);
        if (permissionManager != null) {
            permissionManager.initializeUsageHelper();
        }
        Preconditions.checkNotNullFromProvides(permissionManager);
        return permissionManager;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providePermissionManager((Context) this.contextProvider.get());
    }
}
