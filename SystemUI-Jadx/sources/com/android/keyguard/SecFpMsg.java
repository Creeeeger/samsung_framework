package com.android.keyguard;

import android.hardware.fingerprint.FingerprintManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecFpMsg {
    public int arg;
    public CharSequence msgString;
    public FingerprintManager.AuthenticationResult result;
    public int sequence;
    public int type;

    public static SecFpMsg obtain(int i, int i2, int i3, CharSequence charSequence, FingerprintManager.AuthenticationResult authenticationResult) {
        SecFpMsg secFpMsg = new SecFpMsg();
        secFpMsg.type = i;
        secFpMsg.sequence = i2;
        secFpMsg.arg = i3;
        secFpMsg.msgString = charSequence;
        secFpMsg.result = authenticationResult;
        return secFpMsg;
    }
}
