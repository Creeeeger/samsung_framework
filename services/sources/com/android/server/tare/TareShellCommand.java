package com.android.server.tare;

import android.os.Binder;
import com.android.modules.utils.BasicShellCommandHandler;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public class TareShellCommand extends BasicShellCommandHandler {
    public final InternalResourceService mIrs;

    public TareShellCommand(InternalResourceService internalResourceService) {
        this.mIrs = internalResourceService;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[Catch: Exception -> 0x0044, TRY_LEAVE, TryCatch #0 {Exception -> 0x0044, blocks: (B:5:0x000b, B:13:0x0035, B:16:0x003a, B:18:0x003f, B:20:0x001b, B:23:0x0026), top: B:4:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onCommand(java.lang.String r7) {
        /*
            r6 = this;
            java.io.PrintWriter r0 = r6.getOutPrintWriter()
            r1 = -1
            if (r7 == 0) goto L9
            r2 = r7
            goto Lb
        L9:
            java.lang.String r2 = ""
        Lb:
            int r3 = r2.hashCode()     // Catch: java.lang.Exception -> L44
            r4 = -1272052579(0xffffffffb42e049d, float:-1.6206691E-7)
            r5 = 1
            if (r3 == r4) goto L26
            r4 = 1983838258(0x763ef832, float:9.683305E32)
            if (r3 == r4) goto L1b
            goto L30
        L1b:
            java.lang.String r3 = "set-vip"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> L44
            if (r2 == 0) goto L30
            r2 = r5
            goto L31
        L26:
            java.lang.String r3 = "clear-vip"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> L44
            if (r2 == 0) goto L30
            r2 = 0
            goto L31
        L30:
            r2 = r1
        L31:
            if (r2 == 0) goto L3f
            if (r2 == r5) goto L3a
            int r6 = r6.handleDefaultCommands(r7)     // Catch: java.lang.Exception -> L44
            return r6
        L3a:
            int r6 = r6.runSetVip(r0)     // Catch: java.lang.Exception -> L44
            return r6
        L3f:
            int r6 = r6.runClearVip(r0)     // Catch: java.lang.Exception -> L44
            return r6
        L44:
            r6 = move-exception
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r2 = "Exception: "
            r7.append(r2)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            r0.println(r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.tare.TareShellCommand.onCommand(java.lang.String):int");
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("TARE commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("  clear-vip");
        outPrintWriter.println("    Clears all VIP settings resulting from previous calls using `set-vip` and");
        outPrintWriter.println("    resets them all to default.");
        outPrintWriter.println("  set-vip <USER_ID> <PACKAGE> <true|false|default>");
        outPrintWriter.println("    Designate the app as a Very Important Package or not. A VIP is allowed to");
        outPrintWriter.println("    do as much work as it wants, regardless of TARE state.");
        outPrintWriter.println("    The user ID must be an explicit user ID. USER_ALL, CURRENT, etc. are not");
        outPrintWriter.println("    supported.");
        outPrintWriter.println();
    }

    public final void checkPermission(String str) {
        if (this.mIrs.getContext().checkCallingOrSelfPermission("android.permission.CHANGE_APP_IDLE_STATE") == 0) {
            return;
        }
        throw new SecurityException("Uid " + Binder.getCallingUid() + " not permitted to " + str);
    }

    public final int runClearVip(PrintWriter printWriter) {
        checkPermission("clear vip");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mIrs.executeClearVip(printWriter);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final int runSetVip(PrintWriter printWriter) {
        checkPermission("modify vip");
        int parseInt = Integer.parseInt(getNextArgRequired());
        String nextArgRequired = getNextArgRequired();
        String nextArgRequired2 = getNextArgRequired();
        Boolean valueOf = "default".equals(nextArgRequired2) ? null : Boolean.valueOf(nextArgRequired2);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mIrs.executeSetVip(printWriter, parseInt, nextArgRequired, valueOf);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
