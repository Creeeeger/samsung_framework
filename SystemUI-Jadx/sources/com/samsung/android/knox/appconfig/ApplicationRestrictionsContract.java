package com.samsung.android.knox.appconfig;

import com.samsung.android.knox.EdmUtils;
import com.samsung.android.knox.appconfig.info.KeyInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ApplicationRestrictionsContract {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static class Result {
        public static int ERROR_ALREADY_SET = 4;
        public static int ERROR_INVALID_KEY = 1;
        public static int ERROR_INVALID_VALUE = 2;
        public static int ERROR_NONE = 0;
        public static int ERROR_NOT_SUPPORTED = 5;
        public static int ERROR_OUT_OF_RANGE = 3;
        public static int ERROR_PERMISSION_DENIED = 6;
        public static int ERROR_UNKNOWN = -1;
    }

    public static int getResultCode(String str) {
        KeyInfo.KEY key = KeyInfo.KEY.NONE;
        KeyInfo.KEY key2 = KeyInfo.KEYMAP.get(str);
        if (key2 != null && EdmUtils.getAPILevelForInternal() >= key2.getVersion()) {
            return Result.ERROR_NONE;
        }
        return Result.ERROR_INVALID_KEY;
    }
}
