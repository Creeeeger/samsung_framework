package com.sec.internal.ims.core;

import android.content.Context;
import android.os.Build;
import android.os.SemSystemProperties;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.interfaces.ims.core.ISipTestManager;

/* loaded from: classes.dex */
public class SipTestManagerFactory {
    private static ISipTestManager mSipTestManager;

    SipTestManagerFactory() {
    }

    public static boolean isSipTest() {
        return mSipTestManager != null;
    }

    public static ISipTestManager getSipTestManager() {
        return mSipTestManager;
    }

    public static void createSipTestManager(Context context) {
        int i;
        String str = Build.TYPE;
        if (!("eng".equals(str) || "userdebug".equals(str)) || (i = SemSystemProperties.getInt(ImsConstants.SystemProperties.SIP_TEST_ENABLE, 0)) <= 0) {
            return;
        }
        try {
            mSipTestManager = new SipTestManager(context, i);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }
}
