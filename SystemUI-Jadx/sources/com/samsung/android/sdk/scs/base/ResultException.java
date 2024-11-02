package com.samsung.android.sdk.scs.base;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ResultException extends RuntimeException {
    public final int mResultCode;

    public ResultException(int i) {
        this.mResultCode = i;
    }

    public ResultException(int i, String str) {
        super(str);
        this.mResultCode = i;
    }
}
