package com.samsung.android.knox.ucm.plugin.keystore;

import android.os.Bundle;
import java.security.KeyStore;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class KeyParameter implements KeyStore.ProtectionParameter {
    public boolean mIsManaged;
    public Bundle mOptions;
    public int mSourceUid;

    public KeyParameter(int i, boolean z, Bundle bundle) {
        this.mSourceUid = i;
        this.mIsManaged = z;
        this.mOptions = bundle;
    }

    public final Bundle getOptions() {
        return this.mOptions;
    }

    public final int getSourceUid() {
        return this.mSourceUid;
    }

    public final boolean isManaged() {
        return this.mIsManaged;
    }
}
