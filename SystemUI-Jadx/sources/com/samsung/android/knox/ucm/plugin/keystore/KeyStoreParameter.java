package com.samsung.android.knox.ucm.plugin.keystore;

import android.os.Bundle;
import java.security.KeyStore;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class KeyStoreParameter implements KeyStore.ProtectionParameter {
    public static int PRIVATE_RESOURCE = 0;
    public static int SHARED_KEYCHAIN_RESOURCE = 1;
    public static int SHARED_WIFI_RESOURCE = 2;
    public static int UID_SELF = -1;
    public final Bundle mOptions;
    public final int mOwnerUid;
    public final int mResourceId;

    public KeyStoreParameter(int i, int i2, Bundle bundle) {
        this.mResourceId = i2;
        this.mOwnerUid = i;
        this.mOptions = bundle;
    }

    public final Bundle getOptions() {
        return this.mOptions;
    }

    public final int getOwnerUid() {
        return this.mOwnerUid;
    }

    public final int getResourceId() {
        return this.mResourceId;
    }
}
