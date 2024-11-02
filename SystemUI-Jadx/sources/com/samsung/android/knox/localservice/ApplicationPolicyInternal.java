package com.samsung.android.knox.localservice;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ApplicationPolicyInternal {
    public abstract String getApplicationNameFromDb(String str, int i);

    public abstract boolean getApplicationStateEnabledAsUser(String str, boolean z, int i);

    public abstract boolean isApplicationStartDisabledAsUser(String str, int i);

    public abstract boolean isApplicationStopDisabledAsUser(String str, int i, String str2, String str3, String str4, boolean z);
}
