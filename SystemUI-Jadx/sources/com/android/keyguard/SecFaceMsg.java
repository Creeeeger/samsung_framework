package com.android.keyguard;

import com.samsung.android.bio.face.SemBioFaceManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecFaceMsg {
    public int arg;
    public CharSequence msgString;
    public SemBioFaceManager.AuthenticationResult result;
    public int type;

    public static SecFaceMsg obtain(int i, int i2, CharSequence charSequence, SemBioFaceManager.AuthenticationResult authenticationResult) {
        SecFaceMsg secFaceMsg = new SecFaceMsg();
        secFaceMsg.type = i;
        secFaceMsg.arg = i2;
        secFaceMsg.msgString = charSequence;
        secFaceMsg.result = authenticationResult;
        return secFaceMsg;
    }
}
