package com.android.wm.shell.sysui;

import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import java.io.PrintWriter;
import java.util.TreeMap;
import java.util.function.BiConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShellCommandHandler {
    public final TreeMap mDumpables = new TreeMap();
    public final TreeMap mCommands = new TreeMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ShellCommandActionHandler {
        boolean onShellCommand(PrintWriter printWriter, String[] strArr);

        void printShellCommandHelp(PrintWriter printWriter, String str);
    }

    public final void addCommandCallback(String str, ShellCommandActionHandler shellCommandActionHandler, Object obj) {
        this.mCommands.put(str, shellCommandActionHandler);
        if (ShellProtoLogCache.WM_SHELL_INIT_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_INIT, 568095130, 0, "Adding command class %s for %s", str, obj.getClass().getSimpleName());
        }
    }

    public final void addDumpCallback(BiConsumer biConsumer, Object obj) {
        this.mDumpables.put(obj.getClass().getSimpleName(), biConsumer);
        if (ShellProtoLogCache.WM_SHELL_INIT_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_INIT, -913222528, 0, "Adding dump callback for %s", obj.getClass().getSimpleName());
        }
    }
}
