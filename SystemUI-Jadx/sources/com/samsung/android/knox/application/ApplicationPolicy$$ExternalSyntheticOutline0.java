package com.samsung.android.knox.application;

import com.samsung.android.knox.AccessController;
import com.samsung.android.knox.ContextInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract /* synthetic */ class ApplicationPolicy$$ExternalSyntheticOutline0 {
    public static IApplicationPolicy m(ContextInfo contextInfo, String str, ApplicationPolicy applicationPolicy, String str2) {
        AccessController.throwIfParentInstance(contextInfo, str);
        applicationPolicy.logUsage(str2);
        return applicationPolicy.getService();
    }
}
