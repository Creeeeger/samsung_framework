package com.samsung.android.knox.localservice;

import android.os.Bundle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ApplicationRestrictionsInternal {
    public abstract Bundle getApplicationRestrictionsInternal(String str, int i);

    public abstract void sendBroadcastAsUserInternal(String str, int i);

    public abstract void setApplicationRestrictionsInternal(String str, Bundle bundle, int i, boolean z);

    public abstract void setKeyedAppStatesReport(String str, Bundle bundle, int i);
}
