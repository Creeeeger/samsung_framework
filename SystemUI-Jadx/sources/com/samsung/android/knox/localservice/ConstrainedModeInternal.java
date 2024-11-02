package com.samsung.android.knox.localservice;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ConstrainedModeInternal {
    public abstract boolean checkConstrainedState();

    public abstract void cleanUpConstrainedState(int i);

    public abstract boolean disableConstrainedState(int i);

    public abstract boolean enableConstrainedState(int i, String str, String str2, String str3, String str4, int i2);

    public abstract int getConstrainedState();

    public abstract boolean isRestrictedByConstrainedState(int i);
}
