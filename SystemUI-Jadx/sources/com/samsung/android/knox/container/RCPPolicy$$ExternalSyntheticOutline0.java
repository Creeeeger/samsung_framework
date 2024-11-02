package com.samsung.android.knox.container;

import android.os.RemoteException;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract /* synthetic */ class RCPPolicy$$ExternalSyntheticOutline0 {
    public static void m(RemoteException remoteException, StringBuilder sb, String str) {
        sb.append(Log.getStackTraceString(remoteException));
        Log.e(str, sb.toString());
    }
}
