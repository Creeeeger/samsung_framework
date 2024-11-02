package com.android.systemui.statusbar;

import android.content.Context;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RemoteInputNotificationRebuilder_Factory implements Provider {
    public final Provider contextProvider;

    public RemoteInputNotificationRebuilder_Factory(Provider provider) {
        this.contextProvider = provider;
    }

    public static RemoteInputNotificationRebuilder newInstance(Context context) {
        return new RemoteInputNotificationRebuilder(context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new RemoteInputNotificationRebuilder((Context) this.contextProvider.get());
    }
}
