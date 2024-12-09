package com.sec.internal.ims.entitlement.config.app.nsdsconfig.strategy.operation;

import android.util.Log;

/* loaded from: classes.dex */
public class DefaultNsdsOperation {
    private static final String LOG_TAG = "DefaultNsdsOperation";

    public static int getOperation(int i, int i2) {
        Log.i(LOG_TAG, "getOperation: eventType-" + i + " prevOp-" + i2);
        if (i2 != -1) {
            return -1;
        }
        if (i != 14) {
            return i != 15 ? -1 : 11;
        }
        return 10;
    }
}
