package com.samsung.context.sdk.samsunganalytics;

import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class LogBuilders$LogBuilder {
    public final Map logs = new HashMap();

    public abstract LogBuilders$LogBuilder getThis();

    public final void set(String str, String str2) {
        ((HashMap) this.logs).put(str, str2);
        getThis();
    }
}
