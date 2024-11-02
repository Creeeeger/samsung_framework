package com.samsung.android.sdk.scs.ai.language;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public enum ErrorClassifier$ErrorCode {
    /* JADX INFO: Fake field, exist only in values array */
    DEVICE_ERROR(100),
    DEVICE_NETORK_ERROR(101),
    DEVICE_UNKNOWN_ERROR(199),
    CLIENT_ERROR(200),
    AUTH_ERROR(300),
    AUTH_SA_ERROR(301),
    SAFETY_FILTER_ERROR(400),
    SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR(401),
    SAFETY_FILTER_RECITATION_ERROR(402),
    SERVER_ERROR(500),
    SERVER_QUOTA_ERROR(501);

    private final int mError;

    ErrorClassifier$ErrorCode(int i) {
        this.mError = i;
    }
}
