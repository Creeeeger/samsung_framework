package com.samsung.android.knox.kpm;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class RequestInfo {
    public static final int CMD_IS_REGISTERED = 3;
    public static final int CMD_REGISTER = 1;
    public static final int CMD_UNREGISTER = 2;
    public int mCmd;
    public boolean mForce;

    public RequestInfo(int i) {
        this.mCmd = i;
        this.mForce = false;
    }

    public final int getCmd() {
        return this.mCmd;
    }

    public final boolean isForce() {
        return this.mForce;
    }

    public RequestInfo(int i, boolean z) {
        this.mCmd = i;
        this.mForce = z;
    }
}
