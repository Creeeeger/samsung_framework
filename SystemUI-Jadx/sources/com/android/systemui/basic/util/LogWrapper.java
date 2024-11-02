package com.android.systemui.basic.util;

import android.util.Log;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.SamsungServiceLogger;
import com.android.systemui.log.SamsungServiceLoggerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LogWrapper {
    public final ILog mLogger;
    public final ModuleType mModule;
    public final SamsungServiceLogger mServiceLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ILog {
    }

    public LogWrapper(ModuleType moduleType, SamsungServiceLogger samsungServiceLogger) {
        this(moduleType, samsungServiceLogger, new ILog() { // from class: com.android.systemui.basic.util.LogWrapper.1
        });
    }

    public final void d(String str, String str2) {
        String moduleTag = toModuleTag(str);
        this.mLogger.getClass();
        Log.d(moduleTag, str2);
    }

    public final void dp(String str, String str2) {
        d(str, str2);
        p(str2);
    }

    public final void e(String str, String str2) {
        String moduleTag = toModuleTag(str);
        this.mLogger.getClass();
        Log.e(moduleTag, str2);
    }

    public final void i(String str, String str2) {
        String moduleTag = toModuleTag(str);
        this.mLogger.getClass();
        Log.i(moduleTag, str2);
    }

    public final void p(String str) {
        SamsungServiceLogger samsungServiceLogger = this.mServiceLogger;
        if (samsungServiceLogger != null) {
            ((SamsungServiceLoggerImpl) samsungServiceLogger).log(this.mModule.toString(), LogLevel.DEBUG, str);
        }
    }

    public final String toModuleTag(String str) {
        return this.mModule.toString() + str;
    }

    public final void v(String str) {
        toModuleTag(str);
        this.mLogger.getClass();
    }

    public LogWrapper(ModuleType moduleType, SamsungServiceLogger samsungServiceLogger, ILog iLog) {
        this.mModule = moduleType;
        this.mServiceLogger = samsungServiceLogger;
        this.mLogger = iLog;
    }
}
