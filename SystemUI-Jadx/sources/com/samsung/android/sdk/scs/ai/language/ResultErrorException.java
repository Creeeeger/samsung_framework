package com.samsung.android.sdk.scs.ai.language;

import com.samsung.android.sdk.scs.base.ResultException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ResultErrorException extends ResultException {
    public final int mErrorCode;

    public ResultErrorException(int i) {
        super(i);
        this.mErrorCode = ErrorClassifier$ErrorCode.DEVICE_UNKNOWN_ERROR.ordinal();
    }

    public final ErrorClassifier$ErrorCode getErrorCodeClassified() {
        int i = this.mErrorCode;
        int i2 = i / 1000;
        if (i >= 1 && i <= 14) {
            return ErrorClassifier$ErrorCode.DEVICE_NETORK_ERROR;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        if (i2 != 8 && i2 != 9) {
                            return ErrorClassifier$ErrorCode.DEVICE_UNKNOWN_ERROR;
                        }
                        return ErrorClassifier$ErrorCode.SERVER_ERROR;
                    }
                    if (i != 5120) {
                        if (i != 5210) {
                            if (i != 5220) {
                                return ErrorClassifier$ErrorCode.SAFETY_FILTER_ERROR;
                            }
                        } else {
                            return ErrorClassifier$ErrorCode.SAFETY_FILTER_RECITATION_ERROR;
                        }
                    }
                    return ErrorClassifier$ErrorCode.SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR;
                }
                return ErrorClassifier$ErrorCode.SERVER_QUOTA_ERROR;
            }
            if (i != 2200 && i != 2201) {
                return ErrorClassifier$ErrorCode.AUTH_ERROR;
            }
            return ErrorClassifier$ErrorCode.AUTH_SA_ERROR;
        }
        return ErrorClassifier$ErrorCode.CLIENT_ERROR;
    }

    public ResultErrorException(int i, String str) {
        super(i, str);
        this.mErrorCode = ErrorClassifier$ErrorCode.DEVICE_UNKNOWN_ERROR.ordinal();
    }

    public ResultErrorException(int i, int i2, String str) {
        super(i2, str);
        this.mErrorCode = i2;
    }
}
