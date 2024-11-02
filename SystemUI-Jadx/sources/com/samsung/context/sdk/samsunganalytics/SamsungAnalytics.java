package com.samsung.context.sdk.samsunganalytics;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.samsung.context.sdk.samsunganalytics.internal.Tracker;
import com.samsung.context.sdk.samsunganalytics.internal.executor.SingleThreadExecutor;
import com.samsung.context.sdk.samsunganalytics.internal.setting.SettingLogBuildClient;
import com.samsung.context.sdk.samsunganalytics.internal.setting.SettingRegisterClient;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SamsungAnalytics {
    public static SamsungAnalytics instance;
    public final Tracker tracker;

    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private SamsungAnalytics(final android.app.Application r13, final com.samsung.context.sdk.samsunganalytics.Configuration r14) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.context.sdk.samsunganalytics.SamsungAnalytics.<init>(android.app.Application, com.samsung.context.sdk.samsunganalytics.Configuration):void");
    }

    public static SamsungAnalytics getInstance() {
        if (instance == null) {
            Utils.throwException("call after setConfiguration() method");
            if (!Build.TYPE.equals("eng")) {
                return getInstanceAndConfig(null, null);
            }
        }
        return instance;
    }

    public static SamsungAnalytics getInstanceAndConfig(Application application, Configuration configuration) {
        SamsungAnalytics samsungAnalytics = instance;
        if (samsungAnalytics == null || samsungAnalytics.tracker == null) {
            synchronized (SamsungAnalytics.class) {
                instance = new SamsungAnalytics(application, configuration);
            }
        }
        return instance;
    }

    public final void registerSettingPref(Map map) {
        try {
            Tracker tracker = this.tracker;
            tracker.getClass();
            SingleThreadExecutor singleThreadExecutor = SingleThreadExecutor.getInstance();
            Context context = tracker.mContext;
            singleThreadExecutor.execute(new SettingRegisterClient(context, map));
            SingleThreadExecutor.getInstance().execute(new SettingLogBuildClient(context, tracker.configuration));
        } catch (NullPointerException e) {
            Debug.LogException(SamsungAnalytics.class, e);
        }
    }

    public final void sendLog(Map map) {
        try {
            this.tracker.sendLog(map);
        } catch (NullPointerException unused) {
        }
    }
}
