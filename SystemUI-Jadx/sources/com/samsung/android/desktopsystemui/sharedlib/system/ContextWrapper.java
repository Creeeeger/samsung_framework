package com.samsung.android.desktopsystemui.sharedlib.system;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.UserHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ContextWrapper {
    Context mBase;

    public ContextWrapper(Context context) {
        this.mBase = context;
    }

    public void startActivityAsUser(Intent intent, Bundle bundle, UserHandle userHandle) {
        this.mBase.startActivityAsUser(intent, bundle, userHandle);
    }
}
