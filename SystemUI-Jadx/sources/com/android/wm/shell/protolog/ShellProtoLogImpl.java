package com.android.wm.shell.protolog;

import com.android.internal.protolog.BaseProtoLogImpl;
import com.android.internal.protolog.ProtoLogViewerConfigReader;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.io.File;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShellProtoLogImpl extends BaseProtoLogImpl {
    public static ShellProtoLogImpl sServiceInstance;

    static {
        BaseProtoLogImpl.addLogGroupEnum(ShellProtoLogGroup.values());
    }

    private ShellProtoLogImpl() {
        super(new File("/data/misc/wmtrace/shell_log.winscope"), "/system_ext/etc/wmshell.protolog.json.gz", QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING, new ProtoLogViewerConfigReader());
    }

    public static void d(ShellProtoLogGroup shellProtoLogGroup, int i, int i2, String str, Object... objArr) {
        getSingleInstance().log(BaseProtoLogImpl.LogLevel.DEBUG, shellProtoLogGroup, i, i2, str, objArr);
    }

    public static void e(ShellProtoLogGroup shellProtoLogGroup, int i, int i2, String str, Object... objArr) {
        getSingleInstance().log(BaseProtoLogImpl.LogLevel.ERROR, shellProtoLogGroup, i, i2, str, objArr);
    }

    public static synchronized ShellProtoLogImpl getSingleInstance() {
        ShellProtoLogImpl shellProtoLogImpl;
        synchronized (ShellProtoLogImpl.class) {
            if (sServiceInstance == null) {
                sServiceInstance = new ShellProtoLogImpl();
            }
            shellProtoLogImpl = sServiceInstance;
        }
        return shellProtoLogImpl;
    }

    public static void i(ShellProtoLogGroup shellProtoLogGroup, int i, String str, Object... objArr) {
        getSingleInstance().log(BaseProtoLogImpl.LogLevel.INFO, shellProtoLogGroup, i, 0, str, objArr);
    }

    public static boolean isEnabled(ShellProtoLogGroup shellProtoLogGroup) {
        if (!shellProtoLogGroup.isLogToLogcat() && (!shellProtoLogGroup.isLogToProto() || !getSingleInstance().isProtoEnabled())) {
            return false;
        }
        return true;
    }

    public static void v(ShellProtoLogGroup shellProtoLogGroup, int i, int i2, String str, Object... objArr) {
        getSingleInstance().log(BaseProtoLogImpl.LogLevel.VERBOSE, shellProtoLogGroup, i, i2, str, objArr);
    }

    public static void w(ShellProtoLogGroup shellProtoLogGroup, int i, int i2, String str, Object... objArr) {
        getSingleInstance().log(BaseProtoLogImpl.LogLevel.WARN, shellProtoLogGroup, i, i2, str, objArr);
    }

    public static void wtf(ShellProtoLogGroup shellProtoLogGroup, int i, int i2, String str, Object... objArr) {
        getSingleInstance().log(BaseProtoLogImpl.LogLevel.WTF, shellProtoLogGroup, i, i2, str, objArr);
    }

    public final int startTextLogging(PrintWriter printWriter, String[] strArr) {
        ((BaseProtoLogImpl) this).mViewerConfig.loadViewerConfig(printWriter, "/system_ext/etc/wmshell.protolog.json.gz");
        return setLogging(true, true, printWriter, strArr);
    }

    public final int stopTextLogging(PrintWriter printWriter, String[] strArr) {
        return setLogging(true, false, printWriter, strArr);
    }
}
