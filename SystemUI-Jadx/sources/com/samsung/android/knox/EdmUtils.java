package com.samsung.android.knox;

import android.os.Binder;
import android.os.UserHandle;
import android.util.Log;
import com.sec.ims.configuration.DATA;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class EdmUtils {
    public static String TAG = "EnterpriseDeviceManager";
    public static final int UNEXPECTED_ERROR = 0;

    public static int getAPILevelForInternal() {
        try {
            return Integer.parseInt(DATA.DM_FIELD_INDEX.PUBLISH_TIMER_EXTEND);
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Failed parsing API level");
            return 0;
        }
    }

    public static int getCallingUserId(ContextInfo contextInfo) {
        if (contextInfo == null) {
            contextInfo = new ContextInfo(Binder.getCallingUid());
        }
        if (SemPersonaManager.isKnoxId(contextInfo.mContainerId)) {
            return contextInfo.mContainerId;
        }
        return UserHandle.getUserId(contextInfo.mCallerUid);
    }
}
